// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Soft delete Settings of vault
class SoftDeleteSettingsResponse {
  final pulumi.Input<String>? enhancedSecurityState;

  /// Soft delete retention period in days
  final pulumi.Input<int>? softDeleteRetentionPeriodInDays;
  final pulumi.Input<String>? softDeleteState;

  /// Creates a new [SoftDeleteSettingsResponse].
  /// [enhancedSecurityState] Optional.
  /// [softDeleteRetentionPeriodInDays] Soft delete retention period in days
  /// [softDeleteState] Optional.
  SoftDeleteSettingsResponse({
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

  factory SoftDeleteSettingsResponse.fromMap(Map<String, dynamic> map) {
    return SoftDeleteSettingsResponse(
      enhancedSecurityState: (() {
        final guardedValue = map['enhancedSecurityState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      softDeleteRetentionPeriodInDays: (() {
        final guardedValue = map['softDeleteRetentionPeriodInDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      softDeleteState: (() {
        final guardedValue = map['softDeleteState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
