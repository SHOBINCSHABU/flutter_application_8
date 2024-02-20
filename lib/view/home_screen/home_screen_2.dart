import 'package:flutter/material.dart';

class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage("https://th.bing.com/th/id/OIP.7AqjyxLCbd4wg_ZKpfVoVgAAAA?w=330&h=330&rs=1&pid=ImgDetMain"),
          ),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.menu),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Main Account',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 217, 0, 255), fontWeight: FontWeight.bold),
                ),
                Icon(Icons.arrow_drop_down)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Text(
                  '13.458',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ],
            ),
            Text('Current balance'),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                FloatingActionButton(
                  backgroundColor: const Color.fromARGB(255, 239, 145, 255),
                  onPressed: () {},
                  child: Icon(Icons.add),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  backgroundColor: Color.fromARGB(255, 239, 145, 255),
                  onPressed: () {},
                  child: Icon(Icons.arrow_right_alt_outlined),
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: 220,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 248, 205, 255),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        'Split a Purchase',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Recent events',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/12010216/pexels-photo-12010216.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    // fit: BoxFit.cover,
                  ),
                  title: Text(
                    'NIKE SHOP',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('17 Oct'),
                  trailing: Text(
                    '-62,94',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                SizedBox(
                  height: 05,
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 30, 
                    backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/639132/pexels-photo-639132.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  ),
                  title: Text('STARBUCKS',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text('17 Oct'),
                  trailing: Text('-62,94', style: TextStyle(fontSize: 15)),
                ),
                SizedBox(
                  height: 05,
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        "https://th.bing.com/th/id/OIP.7AqjyxLCbd4wg_ZKpfVoVgAAAA?w=330&h=330&rs=1&pid=ImgDetMain"),
                  ),
                  title: Text('Anna Johnson',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text('14 Oct'),
                  trailing: Text('50,00', style: TextStyle(fontSize: 15)),
                ),
                SizedBox(
                  height: 05,
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/4945142/pexels-photo-4945142.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  ),
                  title: Text('From SAVINGS',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text('3 Oct'),
                  trailing: Text('25,00', style: TextStyle(fontSize: 15)),
                ),
                ListTile(
                  leading: Text(
                    'Recent events',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        "https://th.bing.com/th/id/OIP.TGtaTPyYSGe2z653hnNkuAHaHP?rs=1&pid=ImgDetMain"),
                  ),
                  title: Text("McDonald's",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text('17 Oct'),
                  trailing: Text('-12,37', style: TextStyle(fontSize: 15)),
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(width: 70,
                        child: Icon(Icons.home_filled),
                      ),
                      SizedBox(width: 70,
                        child: Icon(Icons.messenger_outline_rounded),
                      ),
                      SizedBox(width: 70,
                        child: Icon(Icons.notifications),
                      ),
                      SizedBox(width: 70, 
                        child: Icon(Icons.data_usage),
                      )
                    ],
                  ),)
              ],
            )
          ],
        ),
      ),
    );
  }
}