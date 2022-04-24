import 'package:flutter/material.dart';

class FirstContainer extends StatelessWidget {
  String? image1;
  String? image2;
  String? text1;
  String? text2;
  Color? color;
  FirstContainer({
    Key? key,
    required this.image1,
    required this.image2,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      width: 400,
      height: 101,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(1, 9),
            blurRadius: 10,
            blurStyle: BlurStyle.normal,
            color: Color.fromRGBO(64, 83, 107, 0.1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 80,
            height: 80,
            child: Image.asset('$image1'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 100, 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1!,
                  style: TextStyle(
                    color: Color(0xff131921),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  text2!,
                  style: TextStyle(
                    color: Color(0xff131921),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.sync_alt,
                      color: Colors.black26,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '24 км от вас',
                      style: TextStyle(
                        color: Colors.black26,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  print('hello');
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 34,
                  height: 34,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color(0xff6D96FD),
                  ),
                  child: Image.asset('$image2'),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Icon(Icons.favorite),
            ],
          ),
        ],
      ),
    );
  }
}
