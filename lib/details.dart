import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel_app/components/start_ratings.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            height: height * 0.40,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: CachedNetworkImageProvider(
                        'https://images.unsplash.com/photo-1552733407-5d5c46c3bb3b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=780&q=80'),
                    fit: BoxFit.cover)),
          ),
          DraggableScrollableSheet(
              initialChildSize: 0.6,
              minChildSize: 0.6,
              maxChildSize: 1.0,
              builder: (context, scrollController) {
                return ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(30.0)),
                  child: Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(20.0),
                    child: ListView(
                      controller: scrollController,
                      children: [
                        const Text(
                          'Maldives',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2),
                          child: Row(
                            children: const [
                              StartRatings(ratings: 5),
                              Text(
                                "(3132 Reviews)",
                                style: TextStyle(fontWeight: FontWeight.w300),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.location_on,
                                color: Color(0xFF26BBA9),
                              ),
                              Text("Ban phonesavang , Chanthabuly, Vientaine")
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Column(
                            children: const [
                              Icon(
                                Icons.location_on,
                                color: Color(0xFF26BBA9),
                              ),
                              Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}
