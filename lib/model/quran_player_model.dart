import 'package:audioplayers/audioplayers.dart';

class QuranPlayerModel {
  final String name;
  final String audioPath;
  final AudioPlayer _player = AudioPlayer();

  QuranPlayerModel({required this.name, required this.audioPath});

  void playQuran() async {
    try {
      await _player.play(AssetSource(audioPath));
    } catch (e) {
      // ignore: avoid_print
      print("Error playing audio: $e");
    }
  }

  void stopQuran() async {
    try {
      await _player.stop();
    } catch (e) {
      // ignore: avoid_print
      print("Error stopping audio: $e");
    }
  }

  void resumeQuran(){
    try {
      _player.resume();
    } catch (e) {
      // ignore: avoid_print
      print("Error resuming audio: $e");
    }
  }

  void pauseQuran() async {
    try {
      await _player.pause();
    } catch (e) {

      print("Error pausing audio: $e");
    }
  }

}
