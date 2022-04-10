import 'package:flutter/material.dart';
import './contact_info.dart';
import './add_contact.dart';

class List extends StatelessWidget {
  const List({Key? key}) : super(key: key);

  get infinity => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text('My Contacts', style: TextStyle(fontSize: 24)),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage("assets/images/pussycat.jpg"),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.9),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search by name or number',
                    hintStyle: const TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(),
                        borderRadius: BorderRadius.circular(22))),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 22, top: 22),
                      child: Text(
                        'Recents',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                const ContactTile(
                  name: 'Zenith Owulabi',
                  number: '+233 123 356 467',
                  imageName: 'assets/images/peacock.jpg',
                ),
                const ContactTile(
                  name: 'Ayisha Jupyter',
                  number: '+233 123 047 374',
                  imageName: 'assets/images/waterbird.jpg',
                ),
                const ContactTile(
                  name: 'Lamptey Lawson',
                  number: '+233 123 763 732',
                  imageName: 'waterbird3.jpg',
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 22, top: 22),
                      child: Text(
                        'Contacts',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 40, top: 8),
                      child: Text(
                        'A',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                const ContactTile(
                  name: 'Alpha Romeo',
                  number: '+233 123 346 846',
                  imageName: 'assets/images/frog.jpg',
                ),
                const ContactTile(
                  name: 'Asare Bediako',
                  number: '+233 123 346 846',
                  imageName: 'assets/images/giraffe.jpg',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 40, top: 8),
                      child: Text(
                        'B',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                const ContactTile(
                  name: 'Bernard Ussher',
                  number: '+233 123 346 846',
                  imageName: 'assets/images/antelope.jpg',
                ),
                const ContactTile(
                  name: 'Banning Seth',
                  number: '+233 123 346 846',
                  imageName: 'assets/images/cat&puppy.jpg',
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const NewContact(),
          ));
        },
        child: const Icon(
          Icons.add_circle_outline_sharp,
          size: 56,
          color: Colors.white,
        ),
        backgroundColor: const Color.fromRGBO(26, 74, 218, 1),
      ),
    );
  }
}

class ContactTile extends StatelessWidget {
  final String imageName;
  final String? name;
  final String? number;

  const ContactTile({
    Key? key,
    required this.imageName,
    required this.name,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const ContactsInfo(),
        ));
      },
      child: Card(
        child: Row(
          children: [
            CircleAvatar(
                radius: 22, backgroundImage: AssetImage(imageName.toString())),
            Padding(
              padding: const EdgeInsets.only(left: 22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name.toString(),
                  ),
                  Text(number.toString())
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 60,
                width: MediaQuery.of(context).size.width * 0.35,
              ),
            ),
            const IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.more_horiz,
                  size: 32,
                ))
          ],
        ),
      ),
    );
  }
}
