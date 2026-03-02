// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssl_settings.dart';

/// {@template pulumi_appengine_v1_domain_mapping_args_doc}
/// The set of arguments for DomainMapping.
/// {@endtemplate}
/// {@macro pulumi_appengine_v1_domain_mapping_args_doc}
class DomainMappingArgs {
  final pulumi.Input<String> appId;
  /// Relative name of the domain serving the application. Example: example.com.
  final pulumi.Input<String>? id;
  /// Whether the domain creation should override any existing mappings for this domain. By default, overrides are rejected.
  final pulumi.Input<String>? overrideStrategy;
  /// SSL configuration for this domain. If unconfigured, this domain will not serve with SSL.
  final pulumi.Input<SslSettings>? sslSettings;

  /// Creates a new [DomainMappingArgs].
  /// [appId] Required.
  /// [id] Relative name of the domain serving the application. Example: example.com.
  /// [overrideStrategy] Whether the domain creation should override any existing mappings for this domain. By default, overrides are rejected.
  /// [sslSettings] SSL configuration for this domain. If unconfigured, this domain will not serve with SSL.
  DomainMappingArgs({
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
      'sslSettings': ?pulumi.Input.mapOptionalInputValue<SslSettings, Map<String, dynamic>>(sslSettings, (value) => value.toMap()),
    };
  }

  factory DomainMappingArgs.fromMap(Map<String, dynamic> map) {
    return DomainMappingArgs(
      appId: (map['appId'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      overrideStrategy: map['overrideStrategy'] == null ? null : (map['overrideStrategy'] as String).input(),
      sslSettings: map['sslSettings'] == null ? null : (SslSettings.fromMap((map['sslSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

