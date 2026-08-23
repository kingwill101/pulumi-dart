// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_client_permissions.dart';

class ConfigClient {
  /// (Output)
  /// API key that can be used when making requests for this project.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? apiKey;
  /// (Output)
  /// Firebase subdomain.
  final pulumi.Input<String>? firebaseSubdomain;
  /// Configuration related to restricting a user's ability to affect their account.
  /// Structure is documented below.
  final pulumi.Input<ConfigClientPermissions>? permissions;

  /// Creates a new [ConfigClient].
  /// [apiKey] (Output)
  /// [firebaseSubdomain] (Output)
  /// [permissions] Configuration related to restricting a user's ability to affect their account.
  const ConfigClient({
    this.apiKey,
    this.firebaseSubdomain,
    this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'firebaseSubdomain': ?firebaseSubdomain,
      'permissions': ?pulumi.Input.mapOptionalInputValue<ConfigClientPermissions, Map<String, dynamic>>(permissions, (value) => value.toMap()),
    };
  }

  factory ConfigClient.fromMap(Map<String, dynamic> map) {
    return ConfigClient(
      apiKey: (() { final guardedValue = map['apiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firebaseSubdomain: (() { final guardedValue = map['firebaseSubdomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigClientPermissions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
