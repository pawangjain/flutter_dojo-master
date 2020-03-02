import 'package:flutter/material.dart';

class PageWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imgUrl;
  final onTap;

  const PageWidget(this.title, this.subtitle, this.imgUrl, this.onTap);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        margin: EdgeInsets.symmetric(
          vertical: 24,
          horizontal: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(imgUrl),
            SizedBox(height: 48),
            Container(
              margin: EdgeInsets.only(left: 24),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 48),
            Container(
              margin: EdgeInsets.only(left: 24),
              child: Text(
                subtitle,
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}
