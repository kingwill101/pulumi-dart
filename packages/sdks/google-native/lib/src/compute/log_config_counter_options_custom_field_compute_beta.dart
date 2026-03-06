// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This is deprecated and has no effect. Do not use.
class LogConfigCounterOptionsCustomFieldComputeBeta {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<String>? name;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<String>? value;

  /// Creates a new [LogConfigCounterOptionsCustomFieldComputeBeta].
  /// [name] This is deprecated and has no effect. Do not use.
  /// [value] This is deprecated and has no effect. Do not use.
  const LogConfigCounterOptionsCustomFieldComputeBeta({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory LogConfigCounterOptionsCustomFieldComputeBeta.fromMap(Map<String, dynamic> map) {
    return LogConfigCounterOptionsCustomFieldComputeBeta(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

