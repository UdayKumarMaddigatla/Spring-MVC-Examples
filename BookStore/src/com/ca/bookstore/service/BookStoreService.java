/**
 * 
 */
package com.ca.bookstore.service;

/**
 * @author udaykumar
 *
 */

import java.util.List;

import com.ca.bookstore.model.Book;

public interface BookStoreService {
	
	public void addBook(Book book);
	public void updateBook(Book book);
	public Book getBookById(Integer bookId);
	public List<Book> listBooks();
	public void removeBook(Integer id);

}
