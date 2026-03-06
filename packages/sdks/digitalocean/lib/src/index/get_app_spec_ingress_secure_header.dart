// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppSpecIngressSecureHeader {
  /// The name of the environment variable.
  final pulumi.Input<String> key;
  /// The threshold for the type of the warning.
  final pulumi.Input<String> value;

  /// Creates a new [GetAppSpecIngressSecureHeader].
  /// [key] The name of the environment variable.
  /// [value] The threshold for the type of the warning.
  const GetAppSpecIngressSecureHeader({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetAppSpecIngressSecureHeader.fromMap(Map<String, dynamic> map) {
    return GetAppSpecIngressSecureHeader(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

