// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of a Custom SIP Header.
class CustomSipHeader {
  /// The name of the Custom SIP Header
  final pulumi.Input<String>? name;

  /// Creates a new [CustomSipHeader].
  /// [name] The name of the Custom SIP Header
  CustomSipHeader({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory CustomSipHeader.fromMap(Map<String, dynamic> map) {
    return CustomSipHeader(
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

