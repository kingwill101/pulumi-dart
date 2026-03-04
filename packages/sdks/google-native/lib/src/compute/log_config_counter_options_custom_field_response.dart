// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This is deprecated and has no effect. Do not use.
class LogConfigCounterOptionsCustomFieldResponse {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<String> name;

  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<String> value;

  /// Creates a new [LogConfigCounterOptionsCustomFieldResponse].
  /// [name] This is deprecated and has no effect. Do not use.
  /// [value] This is deprecated and has no effect. Do not use.
  LogConfigCounterOptionsCustomFieldResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory LogConfigCounterOptionsCustomFieldResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return LogConfigCounterOptionsCustomFieldResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
