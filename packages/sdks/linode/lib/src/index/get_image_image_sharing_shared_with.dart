// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetImageImageSharingSharedWith {
  /// The number of sharegroups the private image is present in.
  final pulumi.Input<int> sharegroupCount;
  /// The GET api url to view the sharegroups in which the image is shared.
  final pulumi.Input<String> sharegroupListUrl;

  /// Creates a new [GetImageImageSharingSharedWith].
  /// [sharegroupCount] The number of sharegroups the private image is present in.
  /// [sharegroupListUrl] The GET api url to view the sharegroups in which the image is shared.
  const GetImageImageSharingSharedWith({
    required this.sharegroupCount,
    required this.sharegroupListUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sharegroupCount': sharegroupCount,
      'sharegroupListUrl': sharegroupListUrl,
    };
  }

  factory GetImageImageSharingSharedWith.fromMap(Map<String, dynamic> map) {
    return GetImageImageSharingSharedWith(
      sharegroupCount: pulumi.Input.fromValue(map['sharegroupCount'] as int),
      sharegroupListUrl: pulumi.Input.fromValue(map['sharegroupListUrl'] as String),
    );
  }
}

