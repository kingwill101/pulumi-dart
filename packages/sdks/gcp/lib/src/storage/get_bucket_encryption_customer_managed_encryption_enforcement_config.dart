// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketEncryptionCustomerManagedEncryptionEnforcementConfig {
  /// Time from which the config was effective. This is service-provided.
  final pulumi.Input<String> effectiveTime;
  /// Whether CMEK is restricted for new objects within the bucket. If FullyRestricted, new objects can't be created using CMEK encryption. If NotRestricted or unset, creation of new objects with CMEK encryption is allowed.
  final pulumi.Input<String> restrictionMode;

  /// Creates a new [GetBucketEncryptionCustomerManagedEncryptionEnforcementConfig].
  /// [effectiveTime] Time from which the config was effective. This is service-provided.
  /// [restrictionMode] Whether CMEK is restricted for new objects within the bucket. If FullyRestricted, new objects can't be created using CMEK encryption. If NotRestricted or unset, creation of new objects with CMEK encryption is allowed.
  const GetBucketEncryptionCustomerManagedEncryptionEnforcementConfig({
    required this.effectiveTime,
    required this.restrictionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effectiveTime': effectiveTime,
      'restrictionMode': restrictionMode,
    };
  }

  factory GetBucketEncryptionCustomerManagedEncryptionEnforcementConfig.fromMap(Map<String, dynamic> map) {
    return GetBucketEncryptionCustomerManagedEncryptionEnforcementConfig(
      effectiveTime: pulumi.Input.fromValue(map['effectiveTime'] as String),
      restrictionMode: pulumi.Input.fromValue(map['restrictionMode'] as String),
    );
  }
}
