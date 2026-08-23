// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketEncryptionCustomerManagedEncryptionEnforcementConfig {
  /// Time from which the config was effective.
  final pulumi.Input<String>? effectiveTime;
  /// Whether Customer Managed Encryption (CMEK) is restricted for new objects within the bucket. If FullyRestricted, new objects can't be created using CMEK encryption. If NotRestricted or unset, creation of new objects with CMEK encryption is allowed.
  final pulumi.Input<String> restrictionMode;

  /// Creates a new [BucketEncryptionCustomerManagedEncryptionEnforcementConfig].
  /// [effectiveTime] Time from which the config was effective.
  /// [restrictionMode] Whether Customer Managed Encryption (CMEK) is restricted for new objects within the bucket. If FullyRestricted, new objects can't be created using CMEK encryption. If NotRestricted or unset, creation of new objects with CMEK encryption is allowed.
  const BucketEncryptionCustomerManagedEncryptionEnforcementConfig({
    this.effectiveTime,
    required this.restrictionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effectiveTime': ?effectiveTime,
      'restrictionMode': restrictionMode,
    };
  }

  factory BucketEncryptionCustomerManagedEncryptionEnforcementConfig.fromMap(Map<String, dynamic> map) {
    return BucketEncryptionCustomerManagedEncryptionEnforcementConfig(
      effectiveTime: (() { final guardedValue = map['effectiveTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restrictionMode: pulumi.Input.fromValue(map['restrictionMode'] as String),
    );
  }
}
