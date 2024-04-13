import 'package:flutter/material.dart';
import 'package:my_app/dto/news.dart';
import 'package:my_app/service/data_service.dart';

class NewsFeed extends StatefulWidget {
  const NewsFeed({super.key});

  @override
  State<NewsFeed> createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {
  Future<List<News>>? _news;
  @override
  void initState() {
    super.initState();
    _news = Dataservis.fetchNews();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Feed'),
        backgroundColor: Color.fromARGB(255, 29, 27, 139),
      ),
      body: Center(
        child: FutureBuilder<List<News>>(
          future: _news,
        builder: ((context, snapshot) {
          if (snapshot.hasData){
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final post = snapshot.data![index];
                return ListTile(
                  title: Text(post.title),
                  subtitle: Text(post.body),
                );
              },
            );
          } else if (snapshot.hasError){
            return Text('${snapshot.error}');
          }
          return const CircularProgressIndicator();
        }),
      ),
    ));
  }
}