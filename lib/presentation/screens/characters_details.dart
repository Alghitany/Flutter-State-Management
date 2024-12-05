import 'package:flutter/material.dart';
import 'package:week1/constants/my_colors.dart';
import 'package:week1/data/models/characters.dart';

class CharacterDetailsScreen extends StatelessWidget {
  final Character character;
  const CharacterDetailsScreen({super.key, required this.character});


  Widget buildSliverAppBar(){
    return SliverAppBar(
      expandedHeight: 600,
      pinned: true,
      stretch: true,
      backgroundColor: MyColors.myGrey,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          character.firstName!,
          style: const TextStyle(
            color: MyColors.myWhite,),
          textAlign: TextAlign.start,
        ),
        background: Hero(
            tag: character.id!,
            child: Image.network(character.imageUrl!,
              fit: BoxFit.cover,)
        ),
      ),
    );
  }
  Widget characterInfo(String title, String value){
    return RichText(
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        children: [
          TextSpan(
            text: title,
            style: const TextStyle(
              color: MyColors.myWhite,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            )
          ),
          TextSpan(
              text: value,
              style: const TextStyle(
                color: MyColors.myWhite,
                fontSize: 16,
              )
          ),
        ]
      ),
    );
  }
  Widget buildDivider (double endIndent){
    return Divider(
      color: MyColors.myYellow,
      height: 30,
      endIndent: endIndent,
      thickness: 2,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.myGrey,
      body: CustomScrollView(
        slivers: [
          buildSliverAppBar(),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  margin: const EdgeInsets.fromLTRB(14, 14, 14, 0),
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      characterInfo("Title : ", character.title!),
                      buildDivider(315),
                      characterInfo("First Name : ", character.firstName!),
                      buildDivider(250),
                      characterInfo("Last Name : ", character.lastName!),
                      buildDivider(210),
                      characterInfo("Full Name : ", character.fullName!),
                      buildDivider(270),
                      characterInfo("Family : ", character.family!),
                      buildDivider(190),
                      characterInfo("Image Url : ", character.imageUrl!),
                      buildDivider(315),
                      const SizedBox(height: 20,)
                    ],
                  ),
                ),
                const SizedBox(height: 500,)
              ]
            ),
          )
        ],
      ),
    );
  }
}
