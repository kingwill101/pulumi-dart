// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'regional_secret_version_customer_managed_encryption.dart';

/// Input properties used for looking up and filtering RegionalSecretVersion resources.
class RegionalSecretVersionState {
  /// The time at which the regional secret version was created.
  final pulumi.Input<String>? createTime;

  /// The customer-managed encryption configuration of the regional secret.
  /// Structure is documented below.
  final pulumi.Input<List<RegionalSecretVersionCustomerManagedEncryption>>?
  customerManagedEncryptions;

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
      'customerManagedEncryptions':
          ?pulumi.Input.mapOptionalInputValue<
            List<RegionalSecretVersionCustomerManagedEncryption>,
            List<Map<String, dynamic>>
          >(
            customerManagedEncryptions,
            (value) =>
                pulumi.Input.encodeList<
                  RegionalSecretVersionCustomerManagedEncryption,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      customerManagedEncryptions: (() {
        final guardedValue = map['customerManagedEncryptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi
              .Input.decodeList<RegionalSecretVersionCustomerManagedEncryption>(
            guardedValue,
            (value) => RegionalSecretVersionCustomerManagedEncryption.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      deletionPolicy: (() {
        final guardedValue = map['deletionPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destroyTime: (() {
        final guardedValue = map['destroyTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      isSecretDataBase64: (() {
        final guardedValue = map['isSecretDataBase64'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secret: (() {
        final guardedValue = map['secret'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secretData: (() {
        final guardedValue = map['secretData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
