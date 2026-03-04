// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_create_content.dart';

class VolumeCreate {
  /// Upload content from a URL or local file
  final pulumi.Input<VolumeCreateContent> content;

  /// Creates a new [VolumeCreate].
  /// [content] Upload content from a URL or local file
  VolumeCreate({required this.content});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content':
          pulumi.Input.mapInputValue<VolumeCreateContent, Map<String, dynamic>>(
            content,
            (value) => value.toMap(),
          ),
    };
  }

  factory VolumeCreate.fromMap(Map<String, dynamic> map) {
    return VolumeCreate(
      content: pulumi.Input.fromValue(
        VolumeCreateContent.fromMap(
          (map['content']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
