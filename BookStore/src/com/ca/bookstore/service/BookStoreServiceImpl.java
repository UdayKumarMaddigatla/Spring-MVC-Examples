/**
 * 
 */
package com.ca.bookstore.service;

/**
 * @author udaykumar
 *
 */

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ca.bookstore.dao.BookStoreDao;
import com.ca.bookstore.model.Book;

@Service
public class BookStoreServiceImpl implements BookStoreService {

	@Autowired 
	private BookStoreDao bookDao;
	@Transactional
	public void addBook(Book book) {
		bookDao.addBook(book);
	}

	@Transactional
	public void removeBook(Integer id) {
		bookDao.removeBook(id);
	}

	@Transactional
	public List<Book> listBooks() {
		return bookDao.listBooks();
	}

	@Transactional
	public void updateBook(Book book) {
		bookDao.updateBook(book);
	}

	@Transactional
	public Book getBookById(Integer bookId) {
		return bookDao.getBookById(bookId);
	}

}
