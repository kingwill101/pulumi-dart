// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomLocationAuthentication {
  /// Specifies the type of authentication.
  final pulumi.Input<String>? type;
  /// Specifies the value of authentication.
  final pulumi.Input<String> value;

  /// Creates a new [CustomLocationAuthentication].
  /// [type] Specifies the type of authentication.
  /// [value] Specifies the value of authentication.
  CustomLocationAuthentication({
    this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'value': value,
    };
  }

  factory CustomLocationAuthentication.fromMap(Map<String, dynamic> map) {
    return CustomLocationAuthentication(
      type: map['type'] == null ? null : (map['type']! as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

