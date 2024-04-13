import 'package:flutter/material.dart';

class BookShelfScreen extends StatefulWidget {
  const BookShelfScreen({Key? key}) : super(key: key);

  @override
  _BookShelfScreenState createState() => _BookShelfScreenState();
}

class _BookShelfScreenState extends State<BookShelfScreen> {
  List<Book> _books = [
    Book(title: "The Lord of the Rings", author: "J.R.R. Tolkien"),
    Book(title: "Pride and Prejudice", author: "Jane Austen"),
    Book(title: "The Hitchhiker's Guide to the Galaxy", author: "Douglas Adams"),
    Book(title: "The Loren of the Rings", author: "J.R.R. Tolkien"),
    Book(title: "The Lord of the Rings", author: "J.R.R. Tolkien"),
    Book(title: "Pride and Prejudice", author: "Jane Austen"),
    Book(title: "The Hitchhiker's Guide to the Galaxy", author: "Douglas Adams"),
    Book(title: "The Loren of the Rings", author: "J.R.R. Tolkien"),
    Book(title: "The Lord of the Rings", author: "J.R.R. Tolkien"),
    Book(title: "Pride and Prejudice", author: "Jane Austen"),
    Book(title: "The Hitchhiker's Guide to the Galaxy", author: "Douglas Adams"),
    Book(title: "The Loren of the Rings", author: "J.R.R. Tolkien")// ... tambahkan lebih banyak buku
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rak Buku'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Sesuaikan jumlah buku per baris
          childAspectRatio: 4 / 5, // Sesuaikan aspek rasio buku
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: _books.length,
        itemBuilder: (context, index) => _buildBookItem(_books[index]),
      ),
    );
  }

  Widget _buildBookItem(Book book) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          // Gambar sampul buku (ganti dengan logika pemuatan gambar Anda)
          Image.network(
            // Ganti dengan gambar placeholder atau URL sampul buku
            'https://via.placeholder.com/250',
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(0.6),
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    book.title,
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    book.author,
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Book {
  final String title;
  final String author;

  Book({required this.title, required this.author});
}