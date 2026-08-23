// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_encryption_customer_managed_encryption_enforcement_config.dart';
import 'get_bucket_encryption_customer_supplied_encryption_enforcement_config.dart';
import 'get_bucket_encryption_google_managed_encryption_enforcement_config.dart';

class GetBucketEncryption {
  /// If omitted, then new objects with CMEK encryption-type is allowed. If FullyRestricted, then new objects created in this bucket must comply with enforcement config. Changing this has no effect on existing objects; it applies to new objects only.
  final pulumi.Input<List<GetBucketEncryptionCustomerManagedEncryptionEnforcementConfig>> customerManagedEncryptionEnforcementConfigs;
  /// If omitted, then new objects with CSEK encryption-type is allowed. If FullyRestricted, then new objects created in this bucket must comply with enforcement config. Changing this has no effect on existing objects; it applies to new objects only.
  final pulumi.Input<List<GetBucketEncryptionCustomerSuppliedEncryptionEnforcementConfig>> customerSuppliedEncryptionEnforcementConfigs;
  /// A Cloud KMS key that will be used to encrypt objects inserted into this bucket, if no encryption method is specified. You must pay attention to whether the crypto key is available in the location that this bucket is created in. See the docs for more details.
  final pulumi.Input<String> defaultKmsKeyName;
  /// If omitted, then new objects with GMEK encryption-type is allowed. If FullyRestricted, then new objects created in this bucket must comply with enforcement config. Changing this has no effect on existing objects; it applies to new objects only.
  final pulumi.Input<List<GetBucketEncryptionGoogleManagedEncryptionEnforcementConfig>> googleManagedEncryptionEnforcementConfigs;

  /// Creates a new [GetBucketEncryption].
  /// [customerManagedEncryptionEnforcementConfigs] If omitted, then new objects with CMEK encryption-type is allowed. If FullyRestricted, then new objects created in this bucket must comply with enforcement config. Changing this has no effect on existing objects; it applies to new objects only.
  /// [customerSuppliedEncryptionEnforcementConfigs] If omitted, then new objects with CSEK encryption-type is allowed. If FullyRestricted, then new objects created in this bucket must comply with enforcement config. Changing this has no effect on existing objects; it applies to new objects only.
  /// [defaultKmsKeyName] A Cloud KMS key that will be used to encrypt objects inserted into this bucket, if no encryption method is specified. You must pay attention to whether the crypto key is available in the location that this bucket is created in. See the docs for more details.
  /// [googleManagedEncryptionEnforcementConfigs] If omitted, then new objects with GMEK encryption-type is allowed. If FullyRestricted, then new objects created in this bucket must comply with enforcement config. Changing this has no effect on existing objects; it applies to new objects only.
  const GetBucketEncryption({
    required this.customerManagedEncryptionEnforcementConfigs,
    required this.customerSuppliedEncryptionEnforcementConfigs,
    required this.defaultKmsKeyName,
    required this.googleManagedEncryptionEnforcementConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedEncryptionEnforcementConfigs': pulumi.Input.mapInputValue<List<GetBucketEncryptionCustomerManagedEncryptionEnforcementConfig>, List<Map<String, dynamic>>>(customerManagedEncryptionEnforcementConfigs, (value) => pulumi.Input.encodeList<GetBucketEncryptionCustomerManagedEncryptionEnforcementConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customerSuppliedEncryptionEnforcementConfigs': pulumi.Input.mapInputValue<List<GetBucketEncryptionCustomerSuppliedEncryptionEnforcementConfig>, List<Map<String, dynamic>>>(customerSuppliedEncryptionEnforcementConfigs, (value) => pulumi.Input.encodeList<GetBucketEncryptionCustomerSuppliedEncryptionEnforcementConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultKmsKeyName': defaultKmsKeyName,
      'googleManagedEncryptionEnforcementConfigs': pulumi.Input.mapInputValue<List<GetBucketEncryptionGoogleManagedEncryptionEnforcementConfig>, List<Map<String, dynamic>>>(googleManagedEncryptionEnforcementConfigs, (value) => pulumi.Input.encodeList<GetBucketEncryptionGoogleManagedEncryptionEnforcementConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetBucketEncryption.fromMap(Map<String, dynamic> map) {
    return GetBucketEncryption(
      customerManagedEncryptionEnforcementConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBucketEncryptionCustomerManagedEncryptionEnforcementConfig>(map['customerManagedEncryptionEnforcementConfigs']!, (value) => GetBucketEncryptionCustomerManagedEncryptionEnforcementConfig.fromMap((value as Map).cast<String, dynamic>()))),
      customerSuppliedEncryptionEnforcementConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBucketEncryptionCustomerSuppliedEncryptionEnforcementConfig>(map['customerSuppliedEncryptionEnforcementConfigs']!, (value) => GetBucketEncryptionCustomerSuppliedEncryptionEnforcementConfig.fromMap((value as Map).cast<String, dynamic>()))),
      defaultKmsKeyName: pulumi.Input.fromValue(map['defaultKmsKeyName'] as String),
      googleManagedEncryptionEnforcementConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBucketEncryptionGoogleManagedEncryptionEnforcementConfig>(map['googleManagedEncryptionEnforcementConfigs']!, (value) => GetBucketEncryptionGoogleManagedEncryptionEnforcementConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
