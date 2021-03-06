package com.codingdojo.allbooks.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.codingdojo.allbooks.models.Book;
import com.codingdojo.allbooks.services.BookService;

@Controller
public class BookController {

	private final BookService bookService;
	
	public BookController(BookService bookService) {
		this.bookService = bookService;
	}
	
	@RequestMapping("/books")
	public String showAllBooks(Model model) {
		List<Book> books = bookService.allBooks();
		model.addAttribute("books", books);
		return "index.jsp";
	}
	
	@RequestMapping("/books/{id}")
	public String showBook(@PathVariable("id") long id, Model model) {
		Book book = bookService.findBook(id);
		model.addAttribute("book", book);
		return "bookdetail.jsp";
	}

}
