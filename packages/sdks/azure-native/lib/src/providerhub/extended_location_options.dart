// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExtendedLocationOptions {
  final pulumi.Input<String>? supportedPolicy;
  /// The type.
  final pulumi.Input<String>? type;

  /// Creates a new [ExtendedLocationOptions].
  /// [supportedPolicy] Optional.
  /// [type] The type.
  ExtendedLocationOptions({
    this.supportedPolicy,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'supportedPolicy': ?supportedPolicy,
      'type': ?type,
    };
  }

  factory ExtendedLocationOptions.fromMap(Map<String, dynamic> map) {
    return ExtendedLocationOptions(
      supportedPolicy: map['supportedPolicy'] == null ? null : (map['supportedPolicy'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

