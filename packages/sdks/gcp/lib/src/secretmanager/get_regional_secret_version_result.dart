// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_regional_secret_version_customer_managed_encryption.dart';

/// Result data returned by getRegionalSecretVersion.
class GetRegionalSecretVersionResult {
  /// The time at which the regional secret was created.
  final String createTime;
  /// The customer-managed encryption configuration of the regional secret. Structure is documented below.
  final List<GetRegionalSecretVersionCustomerManagedEncryption> customerManagedEncryptions;
  /// The time at which the regional secret was destroyed. Only present if state is DESTROYED.
  final String destroyTime;
  /// True if the current state of the regional SecretVersion is enabled.
  final bool enabled;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? isSecretDataBase64;
  final String location;
  /// The resource name of the regional SecretVersion. Format:
  /// `projects/{{project}}/locations/{{location}}/secrets/{{secret_id}}/versions/{{version}}`
  final String name;
  final String project;
  final String secret;
  /// The secret data. No larger than 64KiB.
  final String secretData;
  final String version;

  /// Creates a new [GetRegionalSecretVersionResult].
  /// [createTime] The time at which the regional secret was created.
  /// [customerManagedEncryptions] The customer-managed encryption configuration of the regional secret. Structure is documented below.
  /// [destroyTime] The time at which the regional secret was destroyed. Only present if state is DESTROYED.
  /// [enabled] True if the current state of the regional SecretVersion is enabled.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [isSecretDataBase64] Optional.
  /// [location] Required.
  /// [name] The resource name of the regional SecretVersion. Format:
  /// [project] Required.
  /// [secret] Required.
  /// [secretData] The secret data. No larger than 64KiB.
  /// [version] Required.
  const GetRegionalSecretVersionResult({
    required this.createTime,
    required this.customerManagedEncryptions,
    required this.destroyTime,
    required this.enabled,
    required this.id,
    this.isSecretDataBase64,
    required this.location,
    required this.name,
    required this.project,
    required this.secret,
    required this.secretData,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'customerManagedEncryptions': pulumi.Input.encodeList<GetRegionalSecretVersionCustomerManagedEncryption, Map<String, dynamic>>(customerManagedEncryptions, (value) => value.toMap()),
      'destroyTime': destroyTime,
      'enabled': enabled,
      'id': id,
      'isSecretDataBase64': ?isSecretDataBase64,
      'location': location,
      'name': name,
      'project': project,
      'secret': secret,
      'secretData': secretData,
      'version': version,
    };
  }

  factory GetRegionalSecretVersionResult.fromMap(Map<String, dynamic> map) {
    return GetRegionalSecretVersionResult(
      createTime: map['createTime'] as String,
      customerManagedEncryptions: pulumi.Input.decodeList<GetRegionalSecretVersionCustomerManagedEncryption>(map['customerManagedEncryptions']!, (value) => GetRegionalSecretVersionCustomerManagedEncryption.fromMap((value as Map).cast<String, dynamic>())),
      destroyTime: map['destroyTime'] as String,
      enabled: map['enabled'] as bool,
      id: map['id'] as String,
      isSecretDataBase64: (() { final guardedValue = map['isSecretDataBase64']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      location: map['location'] as String,
      name: map['name'] as String,
      project: map['project'] as String,
      secret: map['secret'] as String,
      secretData: map['secretData'] as String,
      version: map['version'] as String,
    );
  }
}
