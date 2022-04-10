import 'package:flutter/material.dart';

class NewContact extends StatelessWidget {
  const NewContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Add New Contact'),
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Card(
            margin: const EdgeInsets.all(9),
            color: Colors.grey.shade400,
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/fawn2.jpg'),
                ),
                const Text(
                  "Add picture",
                  style: TextStyle(color: Colors.white),
                ),
                Column(
                  children: const [
                    TextField(
                      decoration: InputDecoration(
                        labelText: ('Name'),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: ('Number')),
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: ('Email')),
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: ('Group')),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
