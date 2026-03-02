// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConsumerImageShareGroupImageSharesImageShareImageSharingSharedWith {
  /// The number of sharegroups the private image is present in.
  final pulumi.Input<int> sharegroupCount;
  /// The GET api url to view the sharegroups in which the image is shared.
  final pulumi.Input<String> sharegroupListUrl;

  /// Creates a new [GetConsumerImageShareGroupImageSharesImageShareImageSharingSharedWith].
  /// [sharegroupCount] The number of sharegroups the private image is present in.
  /// [sharegroupListUrl] The GET api url to view the sharegroups in which the image is shared.
  GetConsumerImageShareGroupImageSharesImageShareImageSharingSharedWith({
    required this.sharegroupCount,
    required this.sharegroupListUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sharegroupCount': sharegroupCount,
      'sharegroupListUrl': sharegroupListUrl,
    };
  }

  factory GetConsumerImageShareGroupImageSharesImageShareImageSharingSharedWith.fromMap(Map<String, dynamic> map) {
    return GetConsumerImageShareGroupImageSharesImageShareImageSharingSharedWith(
      sharegroupCount: (map['sharegroupCount'] as int).input(),
      sharegroupListUrl: (map['sharegroupListUrl'] as String).input(),
    );
  }
}

