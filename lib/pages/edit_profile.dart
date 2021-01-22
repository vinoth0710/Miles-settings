import 'package:flutter/material.dart';
import 'package:settings_ui/pages/settings.dart';

class SettingsUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Setting UI",
      home: EditProfilePage(),
    );
  }
}

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0.9,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.green,
          ),
          onPressed: () {},
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 5, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              SizedBox(
                height: 15,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(0, 10))
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://cdn1.iconfinder.com/data/icons/avatar-97/32/avatar-02-512.png",
                              ))),
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.only(
                    top: 5,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person,
                    size: 18,
                    color: Colors.green,
                  ),
                  Text(
                    "Admin",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[600],
                        letterSpacing: 0.9,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlineButton(
                    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => SettingsPage()));
                    },
                    borderSide: BorderSide(
                      color: Colors.green, //Color of the border
                      style: BorderStyle.solid, //Style of the border
                      width: 0.6, //width of the border
                    ),
                    child: Text("Edit Profile",
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 1.2,
                            color: Colors.black)),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              ListTile(
                title: Text("About",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)),
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.grey.shade700,
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => AboutPage()));
                  /*Insert your code to next screen here*/
                },
              ),
              ListTile(
                title: Text("Terms of Services",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)),
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.grey.shade700,
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => TermsofservicesPage()));/*Insert your code to next screen here*/
                },
              ),
              ListTile(
                title: Text("Contact Us",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)),
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.grey.shade700,
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => Contactuspage()));
                  /*Insert your code to next screen here*/
                },
              ),
              ListTile(
                title: Text("Feedback & Help",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)),
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.grey.shade700,
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => FeedbackandhelpPage()));
                  /*Insert your code to next screen here*/
                },
              ),
              ListTile(
                title: Text("Logout",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)),
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.grey.shade700,
                ),
                onTap: () {
                  /*Insert your code to next screen here*/
                },
              ),
              SizedBox(
                height: 27,
              ),
              Center(
                child: RaisedButton(
                  color: Colors.green,
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {},
                  child: Text("GO PREMIUM",
                      style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 2.2,
                          color: Colors.white)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

GestureDetector buildAccountOptionRow(BuildContext context, String title) {
  return GestureDetector(
    onTap: () {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(title),
              content: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(""),
                ],
              ),
              actions: [
                FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Close")),
              ],
            );
          });
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.grey[800],
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey[700],
          ),
        ],
      ),
    ),
  );
}


class TermsofservicesPage extends StatefulWidget {
  @override
  _TermsofservicesPageState createState() => _TermsofservicesPageState();
}

class _TermsofservicesPageState extends State<TermsofservicesPage> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Terms of services',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0.9,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.green,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),

        body: Container(
        padding: EdgeInsets.only(left: 16, top: 5, right: 16),
    margin: EdgeInsets.all(2),
    child: Text("          Roppen Transportation Services Private Limited provides technology based services "
        "for booking two-wheelers Vehicle to you You or Users and you agree to obtain certain Services defined"
        " hereinafter offered by third party drivers or vehicle operators  Captains by means of the Company’s website and the mobile application “Rapido” (“Platform”). All the Services provided by the Company to you would be by means of your use of the Platform. These Terms of Use shall govern the relationship between you (the customer) and the Company in the course of provision of the Services. These terms of use (“Terms of Use”) mandate the terms on which users using the Services will be governed. Please read the Terms of Use carefully before using the Platform or registering on the Platform or accessing any material or information through the Platform. Use of and access to the Platform is offered to You upon the condition of acceptance of all the terms, conditions and notices contained in this Terms of Use and Privacy Policy, along with any amendments made by the Company at its sole discretion and posted on the Platform from time to time. 1. SERVICES The Platform provides the following services (“Services”) to You: It allows you to pick up and drop off packages from one location to the other through the Captains (“Package Services”). It allows you to avail transportation services provided by the Captains on our Platform (“Transportation Services”). 2. GENERAL TERMS OF USE The Company shall take your booking request and forward it to the Captain through an app-based device operating on GPS-GPRS based device available with the Captain. The Captain shall have the sole discretion to accept or reject each request for the Service. If the Captain accepts the booking request made by the Company, a notification will be sent you with the information regarding the Captain including its name, contact number etc. The Company shall make reasonable efforts to bring you in contact with the Captain in order to obtain the Service subject to availability of the Captain in or around your location at the time of your booking request made to the Company. For the avoidance of doubt, it is clarified that the Company itself does not provide the Services. It is the Captain who shall render the Services to you. Even after acceptance of booking, the Captain may not reach your pick up location or decide not to render his services. in which event the Company shall not be held liable. You warrant that the information you provide to the Company is accurate and complete. The Company is entitled at all times to verify the information that you have provided. You may only access the Services using authorized means. The Company shall not be liable if you do not download the correct Platform or visit the appropriate web portal. The Company reserves the right to discontinue or introduce any of the modes of booking Vehicles and/or for providing Package Services."

    )
        )


    );
  }
}

class FeedbackandhelpPage extends StatefulWidget {
  @override
  _FeedbackandhelpPageState createState() => _FeedbackandhelpPageState();
}

class _FeedbackandhelpPageState extends State<FeedbackandhelpPage> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Feedback & help',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0.9,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.green,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),

        body: Container(
            padding: EdgeInsets.only(left: 16, top: 5, right: 16),
            margin: EdgeInsets.all(2),
            child: Text("          Roppen Transportation Services Private Limited provides technology based services "
                "for booking two-wheelers Vehicle to you You or Users and you agree to obtain certain Services defined"
                " hereinafter offered by third party drivers or vehicle operators  Captains by means of the Company’s website and the mobile application “Rapido” (“Platform”). All the Services provided by the Company to you would be by means of your use of the Platform. These Terms of Use shall govern the relationship between you (the customer) and the Company in the course of provision of the Services. These terms of use (“Terms of Use”) mandate the terms on which users using the Services will be governed. Please read the Terms of Use carefully before using the Platform or registering on the Platform or accessing any material or information through the Platform. Use of and access to the Platform is offered to You upon the condition of acceptance of all the terms, conditions and notices contained in this Terms of Use and Privacy Policy, along with any amendments made by the Company at its sole discretion and posted on the Platform from time to time. 1. SERVICES The Platform provides the following services (“Services”) to You: It allows you to pick up and drop off packages from one location to the other through the Captains (“Package Services”). It allows you to avail transportation services provided by the Captains on our Platform (“Transportation Services”). 2. GENERAL TERMS OF USE The Company shall take your booking request and forward it to the Captain through an app-based device operating on GPS-GPRS based device available with the Captain. The Captain shall have the sole discretion to accept or reject each request for the Service. If the Captain accepts the booking request made by the Company, a notification will be sent you with the information regarding the Captain including its name, contact number etc. The Company shall make reasonable efforts to bring you in contact with the Captain in order to obtain the Service subject to availability of the Captain in or around your location at the time of your booking request made to the Company. For the avoidance of doubt, it is clarified that the Company itself does not provide the Services. It is the Captain who shall render the Services to you. Even after acceptance of booking, the Captain may not reach your pick up location or decide not to render his services. in which event the Company shall not be held liable. You warrant that the information you provide to the Company is accurate and complete. The Company is entitled at all times to verify the information that you have provided. You may only access the Services using authorized means. The Company shall not be liable if you do not download the correct Platform or visit the appropriate web portal. The Company reserves the right to discontinue or introduce any of the modes of booking Vehicles and/or for providing Package Services."

            )
        )


    );
  }
}

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'About Us',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0.9,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.green,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),

        body: Container(
            padding: EdgeInsets.only(left: 16, top: 5, right: 16),
            margin: EdgeInsets.all(2),
            child: Text("          Roppen Transportation Services Private Limited provides technology based services "
                "for booking two-wheelers Vehicle to you You or Users and you agree to obtain certain Services defined"
                " hereinafter offered by third party drivers or vehicle operators  Captains by means of the Company’s website and the mobile application “Rapido” (“Platform”). All the Services provided by the Company to you would be by means of your use of the Platform. These Terms of Use shall govern the relationship between you (the customer) and the Company in the course of provision of the Services. These terms of use (“Terms of Use”) mandate the terms on which users using the Services will be governed. Please read the Terms of Use carefully before using the Platform or registering on the Platform or accessing any material or information through the Platform. Use of and access to the Platform is offered to You upon the condition of acceptance of all the terms, conditions and notices contained in this Terms of Use and Privacy Policy, along with any amendments made by the Company at its sole discretion and posted on the Platform from time to time. 1. SERVICES The Platform provides the following services (“Services”) to You: It allows you to pick up and drop off packages from one location to the other through the Captains (“Package Services”). It allows you to avail transportation services provided by the Captains on our Platform (“Transportation Services”). 2. GENERAL TERMS OF USE The Company shall take your booking request and forward it to the Captain through an app-based device operating on GPS-GPRS based device available with the Captain. The Captain shall have the sole discretion to accept or reject each request for the Service. If the Captain accepts the booking request made by the Company, a notification will be sent you with the information regarding the Captain including its name, contact number etc. The Company shall make reasonable efforts to bring you in contact with the Captain in order to obtain the Service subject to availability of the Captain in or around your location at the time of your booking request made to the Company. For the avoidance of doubt, it is clarified that the Company itself does not provide the Services. It is the Captain who shall render the Services to you. Even after acceptance of booking, the Captain may not reach your pick up location or decide not to render his services. in which event the Company shall not be held liable. You warrant that the information you provide to the Company is accurate and complete. The Company is entitled at all times to verify the information that you have provided. You may only access the Services using authorized means. The Company shall not be liable if you do not download the correct Platform or visit the appropriate web portal. The Company reserves the right to discontinue or introduce any of the modes of booking Vehicles and/or for providing Package Services."

            )
        )


    );
  }
}

class Contactuspage extends StatefulWidget {
  @override
  _ContactuspageState createState() => _ContactuspageState();
}

class _ContactuspageState extends State<Contactuspage> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Contact Us',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0.9,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.green,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),

        body: Container(
            padding: EdgeInsets.only(left: 16, top: 5, right: 16),
            margin: EdgeInsets.all(2),
            child: Text("          Roppen Transportation Services Private Limited provides technology based services "
                "for booking two-wheelers Vehicle to you You or Users and you agree to obtain certain Services defined"
                " hereinafter offered by third party drivers or vehicle operators  Captains by means of the Company’s website and the mobile application “Rapido” (“Platform”). All the Services provided by the Company to you would be by means of your use of the Platform. These Terms of Use shall govern the relationship between you (the customer) and the Company in the course of provision of the Services. These terms of use (“Terms of Use”) mandate the terms on which users using the Services will be governed. Please read the Terms of Use carefully before using the Platform or registering on the Platform or accessing any material or information through the Platform. Use of and access to the Platform is offered to You upon the condition of acceptance of all the terms, conditions and notices contained in this Terms of Use and Privacy Policy, along with any amendments made by the Company at its sole discretion and posted on the Platform from time to time. 1. SERVICES The Platform provides the following services (“Services”) to You: It allows you to pick up and drop off packages from one location to the other through the Captains (“Package Services”). It allows you to avail transportation services provided by the Captains on our Platform (“Transportation Services”). 2. GENERAL TERMS OF USE The Company shall take your booking request and forward it to the Captain through an app-based device operating on GPS-GPRS based device available with the Captain. The Captain shall have the sole discretion to accept or reject each request for the Service. If the Captain accepts the booking request made by the Company, a notification will be sent you with the information regarding the Captain including its name, contact number etc. The Company shall make reasonable efforts to bring you in contact with the Captain in order to obtain the Service subject to availability of the Captain in or around your location at the time of your booking request made to the Company. For the avoidance of doubt, it is clarified that the Company itself does not provide the Services. It is the Captain who shall render the Services to you. Even after acceptance of booking, the Captain may not reach your pick up location or decide not to render his services. in which event the Company shall not be held liable. You warrant that the information you provide to the Company is accurate and complete. The Company is entitled at all times to verify the information that you have provided. You may only access the Services using authorized means. The Company shall not be liable if you do not download the correct Platform or visit the appropriate web portal. The Company reserves the right to discontinue or introduce any of the modes of booking Vehicles and/or for providing Package Services."

            )
        )


    );
  }
}


