import 'package:flutter/material.dart';
import 'package:week1/constants/my_colors.dart';
import 'package:week1/constants/strings.dart';
import 'package:week1/data/models/characters.dart';

class CharacterItem extends StatelessWidget {

  final Character character;
  const CharacterItem({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: const EdgeInsetsDirectional.all(4),
      decoration: BoxDecoration(
        color: MyColors.myWhite,
        borderRadius: BorderRadius.circular(8),
      ),
      child: InkWell(
        onTap: ()=> Navigator.pushNamed(
          context,
          charactersDetailsScreen,
          arguments: character
        ),
        child: GridTile(
            footer: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            color: Colors.black54,
            alignment: Alignment.bottomCenter,
            child: Text('${character.fullName}',style: const TextStyle(
              height: 1.3,
              fontSize: 16,
              color: MyColors.myWhite,
              fontWeight: FontWeight.bold,
            ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ),
            child: Hero(
              tag: character.id!,
              child: Container(
                color: MyColors.myGrey,
                child: character.imageUrl!.isNotEmpty
                  ? FadeInImage.assetNetwork(
                    width: double.infinity,
                    height: double.infinity,
                    placeholder: "assets/images/loading.gif",
                    image: character.imageUrl!,
                    fit: BoxFit.cover,
                ) : Image.asset("assets/images/placeholder.jpg"),
              ),
            ),
        ),
      ),
    );
  }
}
