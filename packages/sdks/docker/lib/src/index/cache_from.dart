// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains a list of images to reference when building using a cache
class CacheFrom {
  /// Specifies cached images
  final pulumi.Input<List<String>>? images;

  /// Creates a new [CacheFrom].
  /// [images] Specifies cached images
  CacheFrom({
    this.images,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'images': ?images,
    };
  }

  factory CacheFrom.fromMap(Map<String, dynamic> map) {
    return CacheFrom(
      images: map['images'] == null ? null : ((map['images'] as List).cast<String>()).input(),
    );
  }
}

