// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This is deprecated and has no effect. Do not use.
class LogConfigCounterOptionsCustomField {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<String>? name;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<String>? value;

  /// Creates a new [LogConfigCounterOptionsCustomField].
  /// [name] This is deprecated and has no effect. Do not use.
  /// [value] This is deprecated and has no effect. Do not use.
  LogConfigCounterOptionsCustomField({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory LogConfigCounterOptionsCustomField.fromMap(Map<String, dynamic> map) {
    return LogConfigCounterOptionsCustomField(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

