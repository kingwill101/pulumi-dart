// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssl_settings_appengine_v1beta.dart';

/// {@template pulumi_appengine_v1beta_domain_mapping_appengine_v1beta_args_doc}
/// The set of arguments for DomainMapping.
/// {@endtemplate}
/// {@macro pulumi_appengine_v1beta_domain_mapping_appengine_v1beta_args_doc}
class DomainMappingAppengineV1betaArgs {
  final pulumi.Input<String> appId;
  /// Relative name of the domain serving the application. Example: example.com.
  final pulumi.Input<String>? id;
  /// Whether the domain creation should override any existing mappings for this domain. By default, overrides are rejected.
  final pulumi.Input<String>? overrideStrategy;
  /// SSL configuration for this domain. If unconfigured, this domain will not serve with SSL.
  final pulumi.Input<SslSettingsAppengineV1beta>? sslSettings;

  /// Creates a new [DomainMappingAppengineV1betaArgs].
  /// [appId] Required.
  /// [id] Relative name of the domain serving the application. Example: example.com.
  /// [overrideStrategy] Whether the domain creation should override any existing mappings for this domain. By default, overrides are rejected.
  /// [sslSettings] SSL configuration for this domain. If unconfigured, this domain will not serve with SSL.
  const DomainMappingAppengineV1betaArgs({
    required this.appId,
    this.id,
    this.overrideStrategy,
    this.sslSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'id': ?id,
      'overrideStrategy': ?overrideStrategy,
      'sslSettings': ?pulumi.Input.mapOptionalInputValue<SslSettingsAppengineV1beta, Map<String, dynamic>>(sslSettings, (value) => value.toMap()),
    };
  }

  factory DomainMappingAppengineV1betaArgs.fromMap(Map<String, dynamic> map) {
    return DomainMappingAppengineV1betaArgs(
      appId: pulumi.Input.fromValue(map['appId'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      overrideStrategy: (() { final guardedValue = map['overrideStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslSettings: (() { final guardedValue = map['sslSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SslSettingsAppengineV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
