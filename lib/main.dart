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
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0JKLHRJnSRYlRrwMTHgJ-1gxMrzy9sxQNmg&s',
    'https://thumbs.dreamstime.com/b/excited-line-buyer-paying-credit-card-excited-line-buyer-paying-credit-card-using-smart-phone-sitting-bar-100084966.jpg',
    'https://media.istockphoto.com/id/1044887792/photo/business-woman-with-phone-and-coffee-before-work-near-office.jpg?s=612x612&w=is&k=20&c=sUiM936CKf0AGgOs5T8SVnGEPV8YqxXBi9Dfzv3T3fo=',
    'https://images.theconversation.com/files/570987/original/file-20240123-27-22n2mg.jpg?ixlib=rb-4.1.0&rect=654%2C333%2C6928%2C4964&q=20&auto=format&w=320&fit=clip&dpr=2&usm=12&cs=strip',
    'https://cdn.create.vista.com/api/media/small/223479688/stock-photo-selective-focus-young-female-lawyer-notebook-looking-camera-while-colleague',
    'https://media.istockphoto.com/id/681703546/photo/success-is-easy-when-youre-connected-to-the-world.jpg?s=170667a&w=0&k=20&c=Dszn-wG_cgGuO9rwVZc8uasurBcaVpbonifcv-NIELk=',
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
                          Text('User ${index + 1}', style: TextStyle(fontSize: 12)),
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
                              'User $index',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ],
                        ),
                      ),

                      // Post Image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://media.istockphoto.com/id/1370511233/photo/young-woman-working-from-home-with-a-boston-terrier-dog-freelancer-businesswoman-using-laptop.jpg?s=612x612&w=0&k=20&c=aGnR7iy4TCEn05Ewxs7SVH0eq_IpsrLzlWJi6kvCzoc=',
                          width: double.infinity,
                          height: 200,
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
