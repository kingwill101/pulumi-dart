// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'regional_secret_version_customer_managed_encryption.dart';

/// Input properties used for looking up and filtering RegionalSecretVersion resources.
class RegionalSecretVersionState {
  /// The time at which the regional secret version was created.
  final pulumi.Input<String>? createTime;
  /// The customer-managed encryption configuration of the regional secret.
  /// Structure is documented below.
  final pulumi.Input<List<RegionalSecretVersionCustomerManagedEncryption>>? customerManagedEncryptions;
  /// The deletion policy for the regional secret version. Setting `ABANDON` allows the resource
  /// to be abandoned rather than deleted. Setting `DISABLE` allows the resource to be
  /// disabled rather than deleted. Default is `DELETE`. Possible values are:
  /// * DELETE
  /// * DISABLE
  /// * ABANDON
  final pulumi.Input<String>? deletionPolicy;
  /// The time at which the regional secret version was destroyed. Only present if state is DESTROYED.
  final pulumi.Input<String>? destroyTime;
  /// The current state of the regional secret version.
  final pulumi.Input<bool>? enabled;
  /// If set to 'true', the secret data is expected to be base64-encoded string and would be sent as is.
  final pulumi.Input<bool>? isSecretDataBase64;
  /// Location of Secret Manager regional secret resource.
  final pulumi.Input<String>? location;
  /// The resource name of the regional secret version. Format:
  /// `projects/{{project}}/locations/{{location}}/secrets/{{secret_id}}/versions/{{version}}`
  final pulumi.Input<String>? name;
  /// Secret Manager regional secret resource.
  final pulumi.Input<String>? secret;
  /// The secret data. Must be no larger than 64KiB.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? secretData;
  /// The version of the Regional Secret.
  final pulumi.Input<String>? version;

  /// Creates a new [RegionalSecretVersionState].
  /// [createTime] The time at which the regional secret version was created.
  /// [customerManagedEncryptions] The customer-managed encryption configuration of the regional secret.
  /// [deletionPolicy] The deletion policy for the regional secret version. Setting `ABANDON` allows the resource
  /// [destroyTime] The time at which the regional secret version was destroyed. Only present if state is DESTROYED.
  /// [enabled] The current state of the regional secret version.
  /// [isSecretDataBase64] If set to 'true', the secret data is expected to be base64-encoded string and would be sent as is.
  /// [location] Location of Secret Manager regional secret resource.
  /// [name] The resource name of the regional secret version. Format:
  /// [secret] Secret Manager regional secret resource.
  /// [secretData] The secret data. Must be no larger than 64KiB.
  /// [version] The version of the Regional Secret.
  RegionalSecretVersionState({
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
      'version': ?version,
    };
  }

  factory RegionalSecretVersionState.fromMap(Map<String, dynamic> map) {
    return RegionalSecretVersionState(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      customerManagedEncryptions: map['customerManagedEncryptions'] == null ? null : (pulumi.Input.decodeList<RegionalSecretVersionCustomerManagedEncryption>(map['customerManagedEncryptions']!, (value) => RegionalSecretVersionCustomerManagedEncryption.fromMap((value as Map).cast<String, dynamic>()))).input(),
      deletionPolicy: map['deletionPolicy'] == null ? null : (map['deletionPolicy']! as String).input(),
      destroyTime: map['destroyTime'] == null ? null : (map['destroyTime']! as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      isSecretDataBase64: map['isSecretDataBase64'] == null ? null : (map['isSecretDataBase64']! as bool).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      secret: map['secret'] == null ? null : (map['secret']! as String).input(),
      secretData: map['secretData'] == null ? null : (map['secretData']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

