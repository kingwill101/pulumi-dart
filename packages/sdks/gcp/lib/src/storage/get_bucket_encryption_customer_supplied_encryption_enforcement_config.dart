// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketEncryptionCustomerSuppliedEncryptionEnforcementConfig {
  /// Time from which the config was effective. This is service-provided.
  final pulumi.Input<String> effectiveTime;
  /// Whether CSEK is restricted for new objects within the bucket. If FullyRestricted, new objects can't be created using CSEK encryption. If NotRestricted or unset, creation of new objects with CSEK encryption is allowed.
  final pulumi.Input<String> restrictionMode;

  /// Creates a new [GetBucketEncryptionCustomerSuppliedEncryptionEnforcementConfig].
  /// [effectiveTime] Time from which the config was effective. This is service-provided.
  /// [restrictionMode] Whether CSEK is restricted for new objects within the bucket. If FullyRestricted, new objects can't be created using CSEK encryption. If NotRestricted or unset, creation of new objects with CSEK encryption is allowed.
  const GetBucketEncryptionCustomerSuppliedEncryptionEnforcementConfig({
    required this.effectiveTime,
    required this.restrictionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effectiveTime': effectiveTime,
      'restrictionMode': restrictionMode,
    };
  }

  factory GetBucketEncryptionCustomerSuppliedEncryptionEnforcementConfig.fromMap(Map<String, dynamic> map) {
    return GetBucketEncryptionCustomerSuppliedEncryptionEnforcementConfig(
      effectiveTime: pulumi.Input.fromValue(map['effectiveTime'] as String),
      restrictionMode: pulumi.Input.fromValue(map['restrictionMode'] as String),
    );
  }
}
