// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes how identity is verified
class Identity {
  /// The identity type
  final pulumi.Input<String>? type;

  /// Creates a new [Identity].
  /// [type] The identity type
  const Identity({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory Identity.fromMap(Map<String, dynamic> map) {
    return Identity(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
