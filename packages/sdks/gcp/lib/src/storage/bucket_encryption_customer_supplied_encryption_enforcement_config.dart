// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketEncryptionCustomerSuppliedEncryptionEnforcementConfig {
  /// Time from which the config was effective.
  final pulumi.Input<String?>? effectiveTime;
  /// Whether Customer Supplied Encryption (CSEK) is restricted for new objects within the bucket. If FullyRestricted, new objects can't be created using CSEK encryption. If NotRestricted or unset, creation of new objects with CSEK encryption is allowed.
  final pulumi.Input<String> restrictionMode;

  /// Creates a new [BucketEncryptionCustomerSuppliedEncryptionEnforcementConfig].
  /// [effectiveTime] Time from which the config was effective.
  /// [restrictionMode] Whether Customer Supplied Encryption (CSEK) is restricted for new objects within the bucket. If FullyRestricted, new objects can't be created using CSEK encryption. If NotRestricted or unset, creation of new objects with CSEK encryption is allowed.
  const BucketEncryptionCustomerSuppliedEncryptionEnforcementConfig({
    this.effectiveTime,
    required this.restrictionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effectiveTime': ?effectiveTime,
      'restrictionMode': restrictionMode,
    };
  }

  factory BucketEncryptionCustomerSuppliedEncryptionEnforcementConfig.fromMap(Map<String, dynamic> map) {
    return BucketEncryptionCustomerSuppliedEncryptionEnforcementConfig(
      effectiveTime: (() { final guardedValue = map['effectiveTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restrictionMode: pulumi.Input.fromValue(map['restrictionMode'] as String),
    );
  }
}
