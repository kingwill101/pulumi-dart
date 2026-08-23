// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Soft delete Settings of vault
class SoftDeleteSettings {
  final pulumi.Input<String>? enhancedSecurityState;
  /// Soft delete retention period in days
  final pulumi.Input<int>? softDeleteRetentionPeriodInDays;
  final pulumi.Input<String>? softDeleteState;

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
      enhancedSecurityState: (() { final guardedValue = map['enhancedSecurityState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      softDeleteRetentionPeriodInDays: (() { final guardedValue = map['softDeleteRetentionPeriodInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      softDeleteState: (() { final guardedValue = map['softDeleteState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
