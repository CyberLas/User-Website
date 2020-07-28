package com.n00016126.examenfinal;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import conexion.BaseDatos;
import conexion.Evento;
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		BaseDatos conexion= new BaseDatos();
		conexion.CrearTabla();
		conexion.Tabla();
		conexion.consultaInfo();
		
		List<Evento> ListaDatos=conexion.consultaInfo();
		for(Evento a : ListaDatos) {
			System.out.println(a.id);
			System.out.println(a.descripcion);
			System.out.println(a.fecha);
			System.out.println(a.estado);
			System.out.println("------------------");
		}
		
		return "home";
	}
	
}
