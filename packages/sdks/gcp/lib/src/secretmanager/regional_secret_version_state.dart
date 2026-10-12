// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'regional_secret_version_customer_managed_encryption.dart';

/// Input properties used for looking up and filtering RegionalSecretVersion resources.
class RegionalSecretVersionState {
  /// The time at which the regional secret version was created.
  final pulumi.Input<String?>? createTime;
  /// The customer-managed encryption configuration of the regional secret.
  /// Structure is documented below.
  final pulumi.Input<List<RegionalSecretVersionCustomerManagedEncryption>?>? customerManagedEncryptions;
  /// The deletion policy for the secret version. Setting `ABANDON` allows the resource
  /// to be abandoned rather than deleted. Setting `DISABLE` allows the resource to be
  /// disabled rather than deleted.
  ///
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  ///
  /// Default is `DELETE`. Possible values are:
  /// * DELETE
  /// * DISABLE
  /// * ABANDON
  /// * PREVENT
  final pulumi.Input<String?>? deletionPolicy;
  /// The time at which the regional secret version was destroyed. Only present if state is DESTROYED.
  final pulumi.Input<String?>? destroyTime;
  /// The current state of the regional secret version.
  final pulumi.Input<bool?>? enabled;
  /// If set to 'true', the secret data is expected to be base64-encoded string and would be sent as is.
  final pulumi.Input<bool?>? isSecretDataBase64;
  /// Location of Secret Manager regional secret resource.
  final pulumi.Input<String?>? location;
  /// The resource name of the regional secret version. Format:
  /// `projects/{{project}}/locations/{{location}}/secrets/{{secret_id}}/versions/{{version}}`
  final pulumi.Input<String?>? name;
  /// Secret Manager regional secret resource.
  final pulumi.Input<String?>? secret;
  /// The secret data. Must be no larger than 64KiB.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? secretData;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// (Optional, Write-Only)
  /// The secret data. Must be no larger than 64KiB.
  /// **Note**: This property is write-only and will not be read from the API.
  ///
  /// &gt; **Note:** One of `secretData` or `secretDataWo` can only be set.
  final pulumi.Input<String?>? secretDataWo;
  /// Triggers update of `secretDataWo` write-only. Increment this value when an update to `secretDataWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<String?>? secretDataWoVersion;
  /// The version of the Regional Secret.
  final pulumi.Input<String?>? version;

  /// Creates a new [RegionalSecretVersionState].
  /// [createTime] The time at which the regional secret version was created.
  /// [customerManagedEncryptions] The customer-managed encryption configuration of the regional secret.
  /// [deletionPolicy] The deletion policy for the secret version. Setting `ABANDON` allows the resource
  /// [destroyTime] The time at which the regional secret version was destroyed. Only present if state is DESTROYED.
  /// [enabled] The current state of the regional secret version.
  /// [isSecretDataBase64] If set to 'true', the secret data is expected to be base64-encoded string and would be sent as is.
  /// [location] Location of Secret Manager regional secret resource.
  /// [name] The resource name of the regional secret version. Format:
  /// [secret] Secret Manager regional secret resource.
  /// [secretData] The secret data. Must be no larger than 64KiB.
  /// [secretDataWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [secretDataWoVersion] Triggers update of `secretDataWo` write-only. Increment this value when an update to `secretDataWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  /// [version] The version of the Regional Secret.
  const RegionalSecretVersionState({
    this.createTime,
    this.customerManagedEncryptions,
    this.deletionPolicy,
    this.destroyTime,
    this.enabled,
    this.isSecretDataBase64,
    this.location,
    this.name,
    this.secret,
    this.secretData,
    this.secretDataWo,
    this.secretDataWoVersion,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'customerManagedEncryptions': ?pulumi.Input.mapOptionalInputValue<List<RegionalSecretVersionCustomerManagedEncryption>, List<Map<String, dynamic>>>(customerManagedEncryptions, (value) => pulumi.Input.encodeList<RegionalSecretVersionCustomerManagedEncryption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deletionPolicy': ?deletionPolicy,
      'destroyTime': ?destroyTime,
      'enabled': ?enabled,
      'isSecretDataBase64': ?isSecretDataBase64,
      'location': ?location,
      'name': ?name,
      'secret': ?secret,
      'secretData': ?secretData,
      'secretDataWo': ?secretDataWo,
      'secretDataWoVersion': ?secretDataWoVersion,
      'version': ?version,
    };
  }

  factory RegionalSecretVersionState.fromMap(Map<String, dynamic> map) {
    return RegionalSecretVersionState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerManagedEncryptions: (() { final guardedValue = map['customerManagedEncryptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionalSecretVersionCustomerManagedEncryption>(guardedValue, (value) => RegionalSecretVersionCustomerManagedEncryption.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destroyTime: (() { final guardedValue = map['destroyTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isSecretDataBase64: (() { final guardedValue = map['isSecretDataBase64']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretData: (() { final guardedValue = map['secretData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretDataWo: (() { final guardedValue = map['secretDataWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretDataWoVersion: (() { final guardedValue = map['secretDataWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
