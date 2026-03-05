// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BuilderConfig {
  final pulumi.Input<String>? id;

  /// Creates a new [BuilderConfig].
  /// [id] Optional.
  BuilderConfig({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory BuilderConfig.fromMap(Map<String, dynamic> map) {
    return BuilderConfig(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

