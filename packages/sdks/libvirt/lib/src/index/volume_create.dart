// ignore_for_file: unused_element, unnecessary_cast

import 'volume_create_content.dart';

class VolumeCreate {
  /// Upload content from a URL or local file
  final VolumeCreateContent content;

  /// Creates a new [VolumeCreate].
  /// [content] Upload content from a URL or local file
  VolumeCreate({
    required this.content,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content.toMap(),
    };
  }

  factory VolumeCreate.fromMap(Map<String, dynamic> map) {
    return VolumeCreate(
      content: VolumeCreateContent.fromMap((map['content'] as Map).cast<String, dynamic>()),
    );
  }
}

