import 'package:flutter/material.dart';
import 'package:music_player_app/models/music.dart';

class PlaylistProvider extends ChangeNotifier {
  // playlist of sogs
  final List<Song> _playlist = [
    // song 1
    Song(
      songName: "London View",
      artistName: "TPL",
      albumArtImagePath: "assets/images/IMG_1182",
      audioPath: "audio/#TPL BM (OTP) - London View",
    ),

    // song 2
    Song(
      songName: "Loading",
      artistName: "Central Cee",
      albumArtImagePath: "assets/images/Wild_West",
      audioPath: "audio/12. Loading",
    ),

    // song 3
    Song(
      songName: "Supr Gremlin",
      artistName: "Kodack Black",
      albumArtImagePath: "assets/images/Back_for_Everything",
      audioPath: "audio/17 Super Gremlin",
    ),
  ];

  // curren song playing index
  int? _currentSongIndex;

  /*

  G E T T E R S

 */

  List<Song> get playlist => _playlist;
  int? get currentSongIndex => _currentSongIndex;

  /*

  S E T T E R S

  */

  set currentSongIdex(int? newIndex) {
    // update current song index
    _currentSongIndex = newIndex;

    // update UI
    notifyListeners();
  }
}
