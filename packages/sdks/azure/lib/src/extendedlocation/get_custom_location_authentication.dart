// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCustomLocationAuthentication {
  /// The type of authentication.
  final pulumi.Input<String> type;
  /// The value of authentication.
  final pulumi.Input<String> value;

  /// Creates a new [GetCustomLocationAuthentication].
  /// [type] The type of authentication.
  /// [value] The value of authentication.
  const GetCustomLocationAuthentication({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory GetCustomLocationAuthentication.fromMap(Map<String, dynamic> map) {
    return GetCustomLocationAuthentication(
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

