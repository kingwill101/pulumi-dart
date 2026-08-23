// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExtendedLocationOptionsResponse {
  final pulumi.Input<String>? supportedPolicy;
  /// The type.
  final pulumi.Input<String>? type;

  /// Creates a new [ExtendedLocationOptionsResponse].
  /// [supportedPolicy] Optional.
  /// [type] The type.
  const ExtendedLocationOptionsResponse({
    this.supportedPolicy,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'supportedPolicy': ?supportedPolicy,
      'type': ?type,
    };
  }

  factory ExtendedLocationOptionsResponse.fromMap(Map<String, dynamic> map) {
    return ExtendedLocationOptionsResponse(
      supportedPolicy: (() { final guardedValue = map['supportedPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
