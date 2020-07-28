package com.n00016126.examenfinal;

import java.util.List;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import conexion.BaseDatos;
import conexion.Evento;

@Controller
public class VistaController {

	@RequestMapping(value = "/vista", method = RequestMethod.GET)
	public String vista(Locale locale, Model model) {
		BaseDatos conexion= new BaseDatos();
		List<Evento> ListaDatos=conexion.consultaInfo();
		model.addAttribute("Datos", ListaDatos );
		return "vista";
	}
	
}
