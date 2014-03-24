/**
 * 
 */
package com.ca.bookstore.dao;

/**
 * @author udaykumar
 *
 */


import java.util.List;

import com.ca.bookstore.model.Book;

public interface BookStoreDao {
	
	public void addBook(Book book);
	public void updateBook(Book book);
	public List<Book> listBooks();
	public Book getBookById(Integer bookId);
	public void removeBook(Integer id);
	
}
