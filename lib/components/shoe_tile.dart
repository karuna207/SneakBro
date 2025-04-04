import "package:flutter/material.dart";
import "package:sneakbro/models/shoe.dart";

class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  const ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        width: 280,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(shoe.imagePath)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    shoe.description,
                    style: TextStyle(
                      color:Colors.grey[900],
                      fontSize: 18,
                      fontStyle:  FontStyle.italic,

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            shoe.name,
                            style:TextStyle(
                              color:Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            )
                          ),
                          Text(
                            shoe.price,
                              style:TextStyle(
                                  color:Colors.grey,

                                  fontSize: 18
                              )
                          )
                        ],
                      ),
                      Container(
                        height:50,
                        width: 50,
                        decoration: BoxDecoration(
                          color:Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.add,
                          color:Colors.white,
                          size:40
                        ),
                      )
                    ],
                  ),
                )

            ],

          ),
        ));
  }
}
