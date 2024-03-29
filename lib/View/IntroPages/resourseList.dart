import 'package:flutter/material.dart';
import 'package:mep/View/components/LoginButton.dart';

class ResourceList extends StatefulWidget {
  const ResourceList({super.key});

  @override
  State<ResourceList> createState() => _ResourceListState();
}

class _ResourceListState extends State<ResourceList> {
  void buttonFunction() {}

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double imageWidth = screenSize.width * 0.5;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(
              top: 15, left: 15),
          child: CircleAvatar(
            backgroundColor: Color(0xFF484848),
            child: BackButton(
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Container(
          child: Row(
            children: [
              Expanded(
                child: Image.asset(
                  'asset/hero.png',
                  fit: BoxFit.cover,
                  width: imageWidth,
                  height: double.infinity,
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: screenSize.width * 0.1),
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: screenSize.height * 0.05,
                        ),
                        const Text(
                          'ብርሃን የ ተሽከርካሪ እና የ መንጃ ፍቃድ ማሰልጠኛ ተቋም',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF484848),
                          ),
                        ),
                        SizedBox(
                          height: screenSize.height * 0.1,
                        ),
                        LoginButton(
                          buttonName: "ዓስፈላጊ መረጃዎች",
                          onPressed: buttonFunction,
                        ),
                        SizedBox(height: screenSize.height * 0.02),
                        LoginButton(
                          buttonName: "መደረግ ያለባቸው ጥንቃቄዎች",
                          onPressed: buttonFunction,
                        ),
                        SizedBox(
                          height: screenSize.height * 0.02,
                        ),
                        LoginButton(
                          buttonName: "የ መንገድ እና የ ትራፊክ ምልክቶች",
                          onPressed: buttonFunction,
                        ),
                        SizedBox(
                          height: screenSize.height * 0.02,
                        ),
                        LoginButton(
                          buttonName: "የ ተሽከርካሪ ህጎች",
                          onPressed: buttonFunction,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
