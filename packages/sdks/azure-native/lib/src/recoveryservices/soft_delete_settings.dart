// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Soft delete Settings of vault
class SoftDeleteSettings {
  final pulumi.Input<dynamic>? enhancedSecurityState;
  /// Soft delete retention period in days
  final pulumi.Input<int?>? softDeleteRetentionPeriodInDays;
  final pulumi.Input<dynamic>? softDeleteState;

  /// Creates a new [SoftDeleteSettings].
  /// [enhancedSecurityState] Optional.
  /// [softDeleteRetentionPeriodInDays] Soft delete retention period in days
  /// [softDeleteState] Optional.
  const SoftDeleteSettings({
    this.enhancedSecurityState,
    this.softDeleteRetentionPeriodInDays,
    this.softDeleteState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enhancedSecurityState': ?enhancedSecurityState,
      'softDeleteRetentionPeriodInDays': ?softDeleteRetentionPeriodInDays,
      'softDeleteState': ?softDeleteState,
    };
  }

  factory SoftDeleteSettings.fromMap(Map<String, dynamic> map) {
    return SoftDeleteSettings(
      enhancedSecurityState: (() { final guardedValue = map['enhancedSecurityState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      softDeleteRetentionPeriodInDays: (() { final guardedValue = map['softDeleteRetentionPeriodInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      softDeleteState: (() { final guardedValue = map['softDeleteState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
