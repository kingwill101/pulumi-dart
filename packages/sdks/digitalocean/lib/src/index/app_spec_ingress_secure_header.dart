// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppSpecIngressSecureHeader {
  /// The name of the environment variable.
  final pulumi.Input<String>? key;
  final pulumi.Input<String>? value;

  /// Creates a new [AppSpecIngressSecureHeader].
  /// [key] The name of the environment variable.
  /// [value] Optional.
  const AppSpecIngressSecureHeader({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory AppSpecIngressSecureHeader.fromMap(Map<String, dynamic> map) {
    return AppSpecIngressSecureHeader(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

