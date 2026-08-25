// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_regional_secret_version_customer_managed_encryption.dart';

/// Result data returned by getRegionalSecretVersion.
class GetRegionalSecretVersionResult {
  /// The time at which the regional secret was created.
  final String? createTime;
  /// The customer-managed encryption configuration of the regional secret. Structure is documented below.
  final List<GetRegionalSecretVersionCustomerManagedEncryption>? customerManagedEncryptions;
  /// The time at which the regional secret was destroyed. Only present if state is DESTROYED.
  final String? destroyTime;
  /// True if the current state of the regional SecretVersion is enabled.
  final bool? enabled;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final bool? isSecretDataBase64;
  final String? location;
  /// The resource name of the regional SecretVersion. Format:
  /// `projects/{{project}}/locations/{{location}}/secrets/{{secret_id}}/versions/{{version}}`
  final String? name;
  final String? project;
  final String? secret;
  /// The secret data. No larger than 64KiB.
  final String? secretData;
  final String? version;

  /// Creates a new [GetRegionalSecretVersionResult].
  /// [createTime] The time at which the regional secret was created.
  /// [customerManagedEncryptions] The customer-managed encryption configuration of the regional secret. Structure is documented below.
  /// [destroyTime] The time at which the regional secret was destroyed. Only present if state is DESTROYED.
  /// [enabled] True if the current state of the regional SecretVersion is enabled.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [isSecretDataBase64] Optional.
  /// [location] Optional.
  /// [name] The resource name of the regional SecretVersion. Format:
  /// [project] Optional.
  /// [secret] Optional.
  /// [secretData] The secret data. No larger than 64KiB.
  /// [version] Optional.
  const GetRegionalSecretVersionResult({
    this.createTime,
    this.customerManagedEncryptions,
    this.destroyTime,
    this.enabled,
    this.id,
    this.isSecretDataBase64,
    this.location,
    this.name,
    this.project,
    this.secret,
    this.secretData,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'customerManagedEncryptions': ?(() { final guardedValue = customerManagedEncryptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionalSecretVersionCustomerManagedEncryption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'destroyTime': ?destroyTime,
      'enabled': ?enabled,
      'id': ?id,
      'isSecretDataBase64': ?isSecretDataBase64,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'secret': ?secret,
      'secretData': ?secretData,
      'version': ?version,
    };
  }

  factory GetRegionalSecretVersionResult.fromMap(Map<String, dynamic> map) {
    return GetRegionalSecretVersionResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customerManagedEncryptions: (() { final guardedValue = map['customerManagedEncryptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionalSecretVersionCustomerManagedEncryption>(guardedValue, (value) => GetRegionalSecretVersionCustomerManagedEncryption.fromMap((value as Map).cast<String, dynamic>())); })(),
      destroyTime: (() { final guardedValue = map['destroyTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isSecretDataBase64: (() { final guardedValue = map['isSecretDataBase64']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secretData: (() { final guardedValue = map['secretData']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
