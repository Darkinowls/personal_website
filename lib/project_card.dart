import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const Text("Cinema house", style: TextStyle(fontSize: 24)),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Wrap(
                  children: [
                    Container(
                      width: 320,
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 10,
                        runSpacing: 10,
                        children: [
                          Image.asset("assets/cinema_house/auth.webp",
                              width: 150),
                          Image.asset("assets/cinema_house/movies.webp",
                              width: 150),
                          Image.asset("assets/cinema_house/settings.webp",
                              width: 150),
                          Image.asset("assets/cinema_house/tickets.webp",
                              width: 150),
                        ],
                      ),
                    ),
                    ConstrainedBox(
                      constraints:
                          const BoxConstraints(minWidth: 100, maxWidth: 200),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"),
                          Container(
                            decoration: const ShapeDecoration(
                                shape: StadiumBorder(),
                                gradient: LinearGradient(
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight,
                                    colors: [
                                      Colors.yellow,
                                      Colors.teal,
                                    ])),
                            child: ElevatedButton(
                                onPressed: () => launchUrl(Uri.parse(
                                    "https://github.com/Darkinowls/cinema_house")),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                ),
                                child: const Text(
                                  "Find on Github",
                                  style: TextStyle(color: Colors.black),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
