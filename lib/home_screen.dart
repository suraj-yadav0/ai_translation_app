import 'package:ai_translation_app/widgets/app_bar.dart';
import 'package:ai_translation_app/widgets/output.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: CustomAppBar(
          word1: "Text",
          word2: "Translation",
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 60,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 80, 79, 79)),
                  child: const Center(
                    child: Text(
                      "Germany",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Center(
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.swap_horiz,
                      color: Colors.white,
                    )),
              ),
              const SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 60,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 80, 79, 79)),
                  child: const Center(
                    child: Text(
                      "English",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(
              children: [
                Text(
                  "Translate From",
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  "(Germany)",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(padding: EdgeInsets.all(12.0), child: Output()),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(
              children: [
                Text(
                  "Translate To",
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  "(French)",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12),
            child: Output(),
          )
        ],
      ),
    );
  }
}
