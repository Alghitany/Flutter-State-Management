import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:week1/data/models/characters.dart';
import 'package:week1/data/repository/characters_repository.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {

  final CharactersRepository charactersRepository;
  List<Character> characters = [];

  CharactersCubit(this.charactersRepository) : super(CharactersInitial());

  List<Character> getAllCharacters(){
    charactersRepository.getAllCharacters().then((characters){
        emit(CharactersLoaded(characters));
        this.characters = characters;
    });

    return characters;
  }
}
