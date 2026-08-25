// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_encryption_customer_managed_encryption_enforcement_config.dart';
import 'bucket_encryption_customer_supplied_encryption_enforcement_config.dart';
import 'bucket_encryption_google_managed_encryption_enforcement_config.dart';

class BucketEncryption {
  /// If omitted, then new objects with CMEK encryption-type is allowed. If set, then new objects created in this bucket must comply with enforcement config. Changing this has no effect on existing objects; it applies to new objects only, Structure is documented below documented below.
  final pulumi.Input<BucketEncryptionCustomerManagedEncryptionEnforcementConfig?>? customerManagedEncryptionEnforcementConfig;
  /// If omitted, then new objects with CSEK encryption-type is allowed. If set, then new objects created in this bucket must comply with enforcement config. Changing this has no effect on existing objects; it applies to new objects only, Structure is documented below documented below.
  final pulumi.Input<BucketEncryptionCustomerSuppliedEncryptionEnforcementConfig?>? customerSuppliedEncryptionEnforcementConfig;
  /// The `id` of a Cloud KMS key that will be used to encrypt objects inserted into this bucket, if no encryption method is specified.
  /// You must pay attention to whether the crypto key is available in the location that this bucket is created in.
  /// See [the docs](https://cloud.google.com/storage/docs/encryption/using-customer-managed-keys) for more details.
  ///
  /// &gt; As per [the docs](https://cloud.google.com/storage/docs/encryption/using-customer-managed-keys) for customer-managed encryption keys, the IAM policy for the
  /// specified key must permit the [automatic Google Cloud Storage service account](https://cloud.google.com/storage/docs/projects#service-accounts) for the bucket's
  /// project to use the specified key for encryption and decryption operations.
  /// Although the service account email address follows a well-known format, the service account is created on-demand and may not necessarily exist for your project
  /// until a relevant action has occurred which triggers its creation.
  /// You should use the [`gcp.storage.getProjectServiceAccount`](https://www.terraform.io/docs/providers/google/d/storage_project_service_account.html) data source to obtain the email
  /// address for the service account when configuring IAM policy on the Cloud KMS key.
  /// This data source calls an API which creates the account if required, ensuring your provider applies cleanly and repeatedly irrespective of the
  /// state of the project.
  /// You should take care for race conditions when the same provider manages IAM policy on the Cloud KMS crypto key. See the data source page for more details.
  final pulumi.Input<String?>? defaultKmsKeyName;
  /// If omitted, then new objects with GMEK encryption-type is allowed. If set, then new objects created in this bucket must comply with enforcement config. Changing this has no effect on existing objects; it applies to new objects only, Structure is documented below documented below.
  final pulumi.Input<BucketEncryptionGoogleManagedEncryptionEnforcementConfig?>? googleManagedEncryptionEnforcementConfig;

  /// Creates a new [BucketEncryption].
  /// [customerManagedEncryptionEnforcementConfig] If omitted, then new objects with CMEK encryption-type is allowed. If set, then new objects created in this bucket must comply with enforcement config. Changing this has no effect on existing objects; it applies to new objects only, Structure is documented below documented below.
  /// [customerSuppliedEncryptionEnforcementConfig] If omitted, then new objects with CSEK encryption-type is allowed. If set, then new objects created in this bucket must comply with enforcement config. Changing this has no effect on existing objects; it applies to new objects only, Structure is documented below documented below.
  /// [defaultKmsKeyName] The `id` of a Cloud KMS key that will be used to encrypt objects inserted into this bucket, if no encryption method is specified.
  /// [googleManagedEncryptionEnforcementConfig] If omitted, then new objects with GMEK encryption-type is allowed. If set, then new objects created in this bucket must comply with enforcement config. Changing this has no effect on existing objects; it applies to new objects only, Structure is documented below documented below.
  const BucketEncryption({
    this.customerManagedEncryptionEnforcementConfig,
    this.customerSuppliedEncryptionEnforcementConfig,
    this.defaultKmsKeyName,
    this.googleManagedEncryptionEnforcementConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedEncryptionEnforcementConfig': ?pulumi.Input.mapOptionalInputValue<BucketEncryptionCustomerManagedEncryptionEnforcementConfig, Map<String, dynamic>>(customerManagedEncryptionEnforcementConfig, (value) => value.toMap()),
      'customerSuppliedEncryptionEnforcementConfig': ?pulumi.Input.mapOptionalInputValue<BucketEncryptionCustomerSuppliedEncryptionEnforcementConfig, Map<String, dynamic>>(customerSuppliedEncryptionEnforcementConfig, (value) => value.toMap()),
      'defaultKmsKeyName': ?defaultKmsKeyName,
      'googleManagedEncryptionEnforcementConfig': ?pulumi.Input.mapOptionalInputValue<BucketEncryptionGoogleManagedEncryptionEnforcementConfig, Map<String, dynamic>>(googleManagedEncryptionEnforcementConfig, (value) => value.toMap()),
    };
  }

  factory BucketEncryption.fromMap(Map<String, dynamic> map) {
    return BucketEncryption(
      customerManagedEncryptionEnforcementConfig: (() { final guardedValue = map['customerManagedEncryptionEnforcementConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketEncryptionCustomerManagedEncryptionEnforcementConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customerSuppliedEncryptionEnforcementConfig: (() { final guardedValue = map['customerSuppliedEncryptionEnforcementConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketEncryptionCustomerSuppliedEncryptionEnforcementConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultKmsKeyName: (() { final guardedValue = map['defaultKmsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      googleManagedEncryptionEnforcementConfig: (() { final guardedValue = map['googleManagedEncryptionEnforcementConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketEncryptionGoogleManagedEncryptionEnforcementConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
