// ignore_for_file: unused_element, unnecessary_cast


/// Soft delete Settings of vault
class SoftDeleteSettings {
  final String? enhancedSecurityState;
  /// Soft delete retention period in days
  final int? softDeleteRetentionPeriodInDays;
  final String? softDeleteState;

  /// Creates a new [SoftDeleteSettings].
  /// [enhancedSecurityState] Optional.
  /// [softDeleteRetentionPeriodInDays] Soft delete retention period in days
  /// [softDeleteState] Optional.
  SoftDeleteSettings({
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
      enhancedSecurityState: map['enhancedSecurityState'] == null ? null : map['enhancedSecurityState'] as String,
      softDeleteRetentionPeriodInDays: map['softDeleteRetentionPeriodInDays'] == null ? null : map['softDeleteRetentionPeriodInDays'] as int,
      softDeleteState: map['softDeleteState'] == null ? null : map['softDeleteState'] as String,
    );
  }
}

