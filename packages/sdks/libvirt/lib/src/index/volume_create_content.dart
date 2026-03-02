// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeCreateContent {
  /// URL to download content from
  final pulumi.Input<String> url;

  /// Creates a new [VolumeCreateContent].
  /// [url] URL to download content from
  VolumeCreateContent({
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url,
    };
  }

  factory VolumeCreateContent.fromMap(Map<String, dynamic> map) {
    return VolumeCreateContent(
      url: (map['url'] as String).input(),
    );
  }
}

