package edu.pucmm.tarea2;

import edu.pucmm.tarea2.encapsulacion.Controladora;
import edu.pucmm.tarea2.encapsulacion.Estudiante;
import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import static spark.Spark.*;

public class Main {
    public static String renderFreemarker(Map<String, Object> model, String templatePath) {
        return new FreeMarkerEngine().render(new ModelAndView(model, templatePath));
    }

    public static void main(String[] args) {
        staticFiles.location("/publico");

        get("/", (request,response) -> {
            ArrayList<Estudiante> estudiantes = Controladora.getInstance().getEstudiantes();
            Map<String,Object> datos = new HashMap<>();
            datos.put("estudiantes",estudiantes);

            Estudiante estudiante = new Estudiante("20160522","edilio","garcia","8095815555");

            Controladora.getInstance().getEstudiantes().add(estudiante);

            return new FreeMarkerEngine().render(new ModelAndView(datos,"list.ftl"));
        });

        get("/registrar/", (request, response) -> {
            return new FreeMarkerEngine().render(new ModelAndView(null,"registrarEstudiante.ftl"));
        });

        post("/registrarEstudiante/", (request, response) -> {
            String nombre = request.queryParams("nombre");
            String apellido = request.queryParams("apellido");
            String telefono = request.queryParams("telefono");
            String matricula = request.queryParams("matricula");

            Estudiante estudiante = new Estudiante(matricula,nombre,apellido,telefono);

            Controladora.getInstance().getEstudiantes().add(estudiante);
            response.redirect("/");
            return "";
        });

        post("/delete/", (request, response) -> {
            ArrayList<Estudiante> estudiantes = Controladora.getInstance().getEstudiantes();
            int pos = Integer.parseInt(request.queryParams("pos"));
            estudiantes.remove(pos);
            Controladora.getInstance().setEstudiantes(estudiantes);
            response.redirect("/");
            return "";
        });
    }
}
