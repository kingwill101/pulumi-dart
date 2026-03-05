// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImageTimeouts {
  /// Used when creating the instance image (until the instance is available)
  final pulumi.Input<String>? create;

  /// Creates a new [ImageTimeouts].
  /// [create] Used when creating the instance image (until the instance is available)
  ImageTimeouts({
    this.create,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'create': ?create,
    };
  }

  factory ImageTimeouts.fromMap(Map<String, dynamic> map) {
    return ImageTimeouts(
      create: (() { final guardedValue = map['create']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

