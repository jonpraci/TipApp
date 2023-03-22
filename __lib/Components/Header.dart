import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  String title;
  Header({super.key, required this.title});
  Widget build(BuildContext context) {
    return _header();
  }

  _header() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                child: Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromRGBO(84, 84, 84, 0.8),
                    ),
                    // color: Colors.black45,
                    child: Icon(Icons.notifications_active_outlined),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromRGBO(84, 84, 84, 0.8),
                    ),
                    child: Icon(Icons.favorite_border),
                  ),
                ),
              ],
            )),
            Container(
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'Schyler',
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                child: Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromRGBO(84, 84, 84, 0.8),
                    ),
                    child: Icon(Icons.qr_code),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromRGBO(84, 84, 84, 0.8),
                      ),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/avatar.png'),
                      )),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
