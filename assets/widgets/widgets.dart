import 'package:flutter/material.dart';

class widgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  
  // widget stack
  Widget _buildStack() => Stack(
    alignment: const Alignment(0.6, 0.6),
    children: [
      CircleAvatar(
        backgroundImage: AssetImage('images/pic.jpg'),
        radius: 100,
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.black45,
        ),
        child: Text(
          'Mia B',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    ],
  );
  
  // widget Card
  Widget _buildCard() => SizedBox(
    height: 210,
    child: Card(
      child: Column(
        children: [
          ListTile(
            title: Text('1625 Main Street',
                style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: Text('My City, CA 99984'),
            leading: Icon(
              Icons.restaurant_menu,
              color: Colors.blue[500],
            ),
          ),
          Divider(),
          ListTile(
            title: Text('(408) 555-1212',
                style: TextStyle(fontWeight: FontWeight.w500)),
            leading: Icon(
              Icons.contact_phone,
              color: Colors.blue[500],
            ),
          ),
          ListTile(
            title: Text('costa@example.com'),
            leading: Icon(
              Icons.contact_mail,
              color: Colors.blue[500],
            ),
          ),
        ],
      ),
    ),
  );

  Widget _buildList() => ListView(
    children: [
      // _tile('CineArts at the Empire', '85 W Portal Ave', Icons.theaters),
      // _tile('The Castro Theater', '429 Castro St', Icons.theaters),
      // _tile('Alamo Drafthouse Cinema', '2550 Mission St', Icons.theaters),
      // _tile('Roxie Theater', '3117 16th St', Icons.theaters),
      // _tile('United Artists Stonestown Twin', '501 Buckingham Way',
      //     Icons.theaters),
      // _tile('AMC Metreon 16', '135 4th St #3000', Icons.theaters),
      // Divider(),
      // _tile('Kescaped_code#39;s Kitchen', '757 Monterey Blvd', Icons.restaurant),
      // _tile('Emmyescaped_code#39;s Restaurant', '1923 Ocean Ave', Icons.restaurant),
      // _tile(
      //     'Chaiya Thai Restaurant', '272 Claremont Blvd', Icons.restaurant),
      // _tile('La Ciccia', '291 30th St', Icons.restaurant),
    ],
  );
  ListTile _tile(String title, String subtitle, IconData icon) => ListTile(
    title: Text(title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        )),
    subtitle: Text(subtitle),
    leading: Icon(
      icon,
      color: Colors.blue[500],
    ),
  );

  Widget _buildGrid() => GridView.extent(
    maxCrossAxisExtent: 150,
    padding: const EdgeInsets.all(4),
    mainAxisSpacing: 4,
    crossAxisSpacing: 4,
    // children: _buildGridTileList(30)
  );
  List<Container> _buildGridTileList(int count) => List.generate(
    count, (i) => Container(child: Image.asset('images/pic$i.jpg'))
  );

  Widget _buildDecoratedImage(int imageIndex) => Expanded(
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(width: 10, color: Colors.black38),
        borderRadius: const BorderRadius.all(const Radius.circular(8)),
      ),
      margin: const EdgeInsets.all(4),
      child: Image.asset('images/pic$imageIndex.jpg'),
    ),
  );
  Widget _buildImageRow(int imageIndex) => Row(
    children: [
      _buildDecoratedImage(imageIndex),
      _buildDecoratedImage(imageIndex + 1),
    ],
  );

  }
}
