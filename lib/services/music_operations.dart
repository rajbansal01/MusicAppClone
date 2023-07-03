import 'package:music_app/model/music.dart';

class MusicOperations{
  MusicOperations._(){}
  static List<Music> getMusic(){
    return <Music>[
      Music('Toofan', 'https://www.telugubulletin.com/wp-content/uploads/2022/03/toofan-kgf-696x986.jpg', 'Dekh Toofan aaya hai','https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/2e/e2/7d/2ee27d35-5e1e-0fd0-42ea-359b5256403e/mzaf_9335390342361255150.plus.aac.p.m4a'),
      Music('Gully Boy', 'https://4.bp.blogspot.com/-4c6wsIoHFsc/XMQ6FUGbI7I/AAAAAAAAQTg/2KBEcqpSgNkrokEu2b5MX5C7uKHy5Gi4wCLcBGAs/s1600/blog%2B-%2B2.jpg', 'Apna Time Aayega','https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/ad/53/bf/ad53bf8c-9bf2-90d7-05d4-ec34186f33ff/mzaf_13379019530104319252.plus.aac.p.m4'),
      Music('Ja Ve Ja', 'https://m.media-amazon.com/images/M/MV5BMjA5MzcyNjg0Ml5BMl5BanBnXkFtZTgwOTY2NTc4OTE@._V1_.jpg', 'Ja ve ja ve ja','https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/09/17/bb/0917bbe1-58c3-6252-d00e-9b70d42ef5dc/mzaf_2269500085377778268.plus.aac.p.m4a'),
      Music('Bajirao Mastani',
          'https://images.indianexpress.com/2015/12/deepika-ranveer-bajirao.jpg',
          'Malhari',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/71/f8/b2/71f8b2fd-b62b-55e2-cc4b-d3b0a4e5f0f8/mzaf_16351999812808951944.plus.aac.p.m4a')
    ];
  }
}