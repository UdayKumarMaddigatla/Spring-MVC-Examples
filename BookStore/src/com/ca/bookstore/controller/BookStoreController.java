/**
 * 
 */
package com.ca.bookstore.controller;

/**
 * @author udaykumar
 *
 */


import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ca.bookstore.model.Book;
import com.ca.bookstore.service.BookStoreService;

@Controller
public class BookStoreController {
	
	@Autowired
	private BookStoreService bookStoreService;

	@RequestMapping("/index")
	public String listBooks(Map<String, Object> map) {
		map.put("book", new Book());
		map.put("bookList", bookStoreService.listBooks());
		return "bookstore";
	}

	@RequestMapping(
		value = "/book/add",
		method = RequestMethod.POST
	)
	public String addBook(@ModelAttribute("book") 
		Book book, BindingResult result) 
	{
		if(null == book.getId()) {
			bookStoreService.addBook(book);	
		}
		else {
			bookStoreService.updateBook(book);
		}
		return "redirect:/index";
	}

	@RequestMapping("/delete/{bookId}")
	public String deleteBook(
		@PathVariable("bookId") Integer bookId)
	{
		bookStoreService.removeBook(bookId);
		return "redirect:/index";
	}

	@RequestMapping("/edit/{bookId}")
	public String editBook(
		@PathVariable("bookId")Integer bookId,
		Map<String, Object> map)
	{
		map.put("book", bookStoreService.getBookById(bookId));
		map.put("bookList", bookStoreService.listBooks());
		return "bookstore";
	}
}