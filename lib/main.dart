import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FacebookScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FacebookScreen extends StatelessWidget {
  // List of sample user profile images for stories
  final List<String> storyImages = [
    'https://scontent.fisb6-2.fna.fbcdn.net/v/t39.30808-6/436199814_2915693825244975_2119851291414134461_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeH0UN3AhFIbxOkr_mRQXQS4s1burR7R4qmzVu6tHtHiqYMqNsC9kq-atuk1-SgbDG-uAWyK13QON3NS0CZ0N2YY&_nc_ohc=8xyfzyZfEuYQ7kNvgF_wT4C&_nc_oc=Adg8xqYf0dhaiQqdGsTcF-S2Y7iq2M00AbHPF2e2MB0yL1dOpKsdtQwMx8vG4etrVag&_nc_zt=23&_nc_ht=scontent.fisb6-2.fna&_nc_gid=AeambiEPp2fmmDP_r4oh4tc&oh=00_AYBJZyWL4wJOzmm2um8UJ9SayiL9PeptM3yTqCqpNUw5dw&oe=67709A9D',
    'https://scontent.fisb6-2.fna.fbcdn.net/v/t39.30808-6/339095489_1565775783848520_1539764398552811331_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeEbrPJu44SeqtHejfBKxOoTxJ5BW8kfd5TEnkFbyR93lBd_IcRdvegFmZDNocO6rIRln3HAjrQa0sW2vpPETWR4&_nc_ohc=kmDjGLl39F0Q7kNvgG80lzf&_nc_oc=Adh_TKHTuRB5QMbFMjORTmaE2o8usdF39HiA_clIoCrukTqw5lAASS1UcGVRTTAY704&_nc_zt=23&_nc_ht=scontent.fisb6-2.fna&_nc_gid=AvRb2EHpx-kI_r8t6AsGOqO&oh=00_AYD93NTWT3w-GEkNiy48a358lnrCezXpY8WPziH2hx6dNg&oe=677083A5',
    'https://scontent.fisb6-1.fna.fbcdn.net/v/t1.6435-9/105281374_1762124303935272_3408340406264347601_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeFU8kf8t4OOqGmI6kFuMBjMhxGgxLzL0vGHEaDEvMvS8StWUdhmfUSkHvjKsSYPJRD3B2jPUu8W_aKr50dzEVz9&_nc_ohc=UGKuhPpxzUQQ7kNvgHG_SJR&_nc_oc=Adjqf7CsaWRvBBt6_CDMavu2wQVOFlhy4X3poHrf4QK-kriCR51pCcBXidF2DJ-j-N8&_nc_zt=23&_nc_ht=scontent.fisb6-1.fna&_nc_gid=AXwXGiuqEM7MfM6aMcM8MCo&oh=00_AYDbeA6xkWTPBC90Fcy8jcYIXn1acpK3BtOQ84XepS11Aw&oe=67923C4E',
    'https://scontent.fisb6-2.fna.fbcdn.net/v/t1.6435-9/81762625_1600279280119776_2082172455446642688_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeGAqh7HlAYIOvckBKjwc2kR4H43Qc-sg9DgfjdBz6yD0Olchd86UNHLaaeYfqNARbUmEbv9rnbXnAdXYwQMcIEt&_nc_ohc=ym_HiUYvKKQQ7kNvgGUNfAu&_nc_oc=AdgS3HRvTJO51PMBNw358nN9kdoBUvkUlouhLG38x2iN3Wu4ZAnZf3rcUwPIJbiA7A8&_nc_zt=23&_nc_ht=scontent.fisb6-2.fna&_nc_gid=AmmLt0MFhyKYDI9Rtc3BzPO&oh=00_AYCBBlicnrA916BckLqFXSRmpZN90or0CTqMXdvUNZV8KQ&oe=679244C9',
    'https://scontent.fisb6-2.fna.fbcdn.net/v/t1.6435-9/71913709_1506915442789494_2600737430852075520_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeFU7e8B_IoC8JtnXedBfeeSr7o2ZR88_9avujZlHzz_1slXmNLf8Q0-1DqPSnYHUAp65geKkZ5LaUCXWwHhC6sw&_nc_ohc=D7697nrsmzkQ7kNvgF2piJN&_nc_oc=Adhjo9qGyI9sxz4d_LosjO5jyn1_OcXCtChor5zPKsu7pm80AL8XlNSjpsm-YRJrUso&_nc_zt=23&_nc_ht=scontent.fisb6-2.fna&_nc_gid=AALLOHQAG_Y_e-HLxyjEZTG&oh=00_AYAd_2M7D5rqKyMQ_g1QBqNSJlckuW3l8XX8-jYAqBbVcw&oe=67922290',
    'https://scontent.fisb6-2.fna.fbcdn.net/v/t1.6435-9/67788799_1457999191014453_5037939652581916672_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeGsc-SIOwkyPoRCKMeAt7zhmFwO_ukB53iYXA7-6QHneINtUGmIU5RnuJNtAHY5VdXhDQCQgde1o8tZXPNJKEGg&_nc_ohc=gQPyJf9ezoYQ7kNvgF8yVKl&_nc_oc=AdhqKamunFVmzF1AF50BFRT8E8Q-YP9fhgATQ2KaVwPLytYmVNvsBA_q-wHmvpioqcc&_nc_zt=23&_nc_ht=scontent.fisb6-2.fna&_nc_gid=ALuLPFY7bL5tm0G6Fb3MuQP&oh=00_AYBXFgWhuDt8eNHyS_9MWJtwhrXsN70E7NKfN8UahGhmBg&oe=679215DF',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: Icon(Icons.search, color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.grey[200],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Stories Section (Horizontal Scroll)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: storyImages.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          // Story with Circular Avatar and Border
                          ClipOval(
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue, width: 2),
                                borderRadius: BorderRadius.circular(35),
                              ),
                              child: ClipOval(
                                child: Image.network(
                                  storyImages[index],
                                  width: 70,
                                  height: 70,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text('Muizz ${index + 1}', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),

            // Posts Section (Vertical Scroll)
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(), // Prevents nested scrolling
              itemCount: 10,  // Adjust the count as needed
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // User Info Header
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.blue,
                              child: Icon(Icons.person, color: Colors.white, size: 20),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Muizz',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ],
                        ),
                      ),

                      // Post Image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://scontent.fisb6-1.fna.fbcdn.net/v/t39.30808-6/464093413_3098628146951541_7698349181243805795_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeGOZkt4Y9RCq9TyAHi7t3eKYCZtjtaSO_lgJm2O1pI7-WMPETnMUP4UqYmMRE21w60oSsykjG2lTc6_qdzAqXjc&_nc_ohc=f8pfoKRoJqMQ7kNvgF2v73D&_nc_oc=Adi2qmB0Aa11MzNeqeaoapGiVNN0T18700t-fDrUdn_4b3QKZJqzjS1HfvSTybLiWmM&_nc_zt=23&_nc_ht=scontent.fisb6-1.fna&_nc_gid=AbhAEfAM_FtN_nXVuZVss2J&oh=00_AYCIGNY8Wmi_nPbGw-Dfk4GyVU7vv1F6_1rCSuK3PIvnsQ&oe=67709E73',
                          width: double.infinity,
                          height: 300,
                          fit: BoxFit.cover,
                        ),
                      ),

                      // Post Text
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'This is a sample post description for user $index.',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),

                      // Post Footer (Like, Comment, Share)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              icon: Icon(Icons.thumb_up_alt_outlined),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(Icons.comment_outlined),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(Icons.share_outlined),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
