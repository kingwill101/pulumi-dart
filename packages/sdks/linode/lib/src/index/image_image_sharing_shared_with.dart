// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImageImageSharingSharedWith {
  /// The number of sharegroups the private image is present in.
  final pulumi.Input<int>? sharegroupCount;
  /// The GET api url to view the sharegroups in which the image is shared.
  final pulumi.Input<String>? sharegroupListUrl;

  /// Creates a new [ImageImageSharingSharedWith].
  /// [sharegroupCount] The number of sharegroups the private image is present in.
  /// [sharegroupListUrl] The GET api url to view the sharegroups in which the image is shared.
  ImageImageSharingSharedWith({
    this.sharegroupCount,
    this.sharegroupListUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sharegroupCount': ?sharegroupCount,
      'sharegroupListUrl': ?sharegroupListUrl,
    };
  }

  factory ImageImageSharingSharedWith.fromMap(Map<String, dynamic> map) {
    return ImageImageSharingSharedWith(
      sharegroupCount: map['sharegroupCount'] == null ? null : (map['sharegroupCount']! as int).input(),
      sharegroupListUrl: map['sharegroupListUrl'] == null ? null : (map['sharegroupListUrl']! as String).input(),
    );
  }
}

