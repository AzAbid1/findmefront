import 'package:flutter/material.dart';

import '../models/publication.dart';
import '../services/remote_service.dart';

class CreatePost extends StatefulWidget {
  static const routeName = '/create-post';
  const CreatePost({Key? key}) : super(key: key);

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  List<Publication>? publications;
  var isLoaded=false;
  @override
  void initState(){
    super.initState();
    //fetch date from api
    getData();
  }
  getData() async{
    publications=  await RemoteService().getPublications();
    if (publications!=null){
      setState(() {
        isLoaded=true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create Post'),),
      body: Visibility(
        visible: isLoaded,
        replacement: const  Center(
            child:CircularProgressIndicator()),
        child: ListView.builder(
          itemCount: publications?.length,
          itemBuilder:(context,index) {
            return Container(
              child:Text(publications![index].titre,style:TextStyle(fontSize: 24)),
          );
        },
        ),
      ),
    );
  }
}
