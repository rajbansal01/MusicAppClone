// import 'package:flutter/foundation.dart';
import 'package:music_app/model/category.dart';

class CategoryOperations{
  CategoryOperations._(){}
  static List<Category> getCategories(){
    return <Category>[
      Category('Top Songs', 'https://is2-ssl.mzstatic.com/image/thumb/Purple4/v4/47/56/3b/47563b20-eb0a-39ba-2f65-4dcf6af75e3d/source/256x256bb.jpg'),
    Category('Mj Hits', 'https://m.media-amazon.com/images/I/51REXNPodUL._CR0,135,1080,1080_UX256.jpg'),
      Category('Bollywood hits', 'https://is4-ssl.mzstatic.com/image/thumb/Purple122/v4/ce/e3/72/cee3725b-1d68-eb88-93e5-528f5a00ebec/source/256x256bb.jpg'),
      Category('Punjabi Hits', 'https://apprecs.org/ios/images/app-icons/256/3b/657442107.jpg'),
      Category('Hollywood Hits', 'https://c-cl.cdn.smule.com/rs-s37/arr/f4/45/e8cf32e6-2e7d-41fe-9717-ab533f30c601.jpg'),
      Category('Liked Songs', 'https://cdn.iconscout.com/icon/premium/png-256-thumb/liked-song-3932982-3286282.png'),

    ];

  }
}