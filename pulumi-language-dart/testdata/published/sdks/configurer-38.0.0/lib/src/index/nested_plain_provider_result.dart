// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Result data returned by nestedPlainProvider.
class NestedPlainProviderResult {
  final pulumi.ProviderResource? provider;
  final int? value;

  /// Creates a new [NestedPlainProviderResult].
  /// [provider] Optional.
  /// [value] Optional.
  const NestedPlainProviderResult({
    this.provider,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provider': ?provider,
      'value': ?value,
    };
  }

  factory NestedPlainProviderResult.fromMap(Map<String, dynamic> map) {
    return NestedPlainProviderResult(
      provider: (() { final guardedValue = map['provider']; if (guardedValue == null) return null; return guardedValue as pulumi.ProviderResource; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
    );
  }
}
