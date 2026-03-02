// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssl_settings_appengine_v1alpha.dart';

/// {@template pulumi_appengine_v1alpha_domain_mapping_appengine_v1alpha_args_doc}
/// The set of arguments for DomainMapping.
/// {@endtemplate}
/// {@macro pulumi_appengine_v1alpha_domain_mapping_appengine_v1alpha_args_doc}
class DomainMappingAppengineV1alphaArgs {
  final pulumi.Input<String> appId;
  /// Relative name of the domain serving the application. Example: example.com.
  final pulumi.Input<String>? id;
  /// Whether a managed certificate should be provided by App Engine. If true, a certificate ID must be manaually set in the DomainMapping resource to configure SSL for this domain. If false, a managed certificate will be provisioned and a certificate ID will be automatically populated.
  final pulumi.Input<bool>? noManagedCertificate;
  /// Whether the domain creation should override any existing mappings for this domain. By default, overrides are rejected.
  final pulumi.Input<String>? overrideStrategy;
  /// SSL configuration for this domain. If unconfigured, this domain will not serve with SSL.
  final pulumi.Input<SslSettingsAppengineV1alpha>? sslSettings;

  /// Creates a new [DomainMappingAppengineV1alphaArgs].
  /// [appId] Required.
  /// [id] Relative name of the domain serving the application. Example: example.com.
  /// [noManagedCertificate] Whether a managed certificate should be provided by App Engine. If true, a certificate ID must be manaually set in the DomainMapping resource to configure SSL for this domain. If false, a managed certificate will be provisioned and a certificate ID will be automatically populated.
  /// [overrideStrategy] Whether the domain creation should override any existing mappings for this domain. By default, overrides are rejected.
  /// [sslSettings] SSL configuration for this domain. If unconfigured, this domain will not serve with SSL.
  DomainMappingAppengineV1alphaArgs({
    required this.appId,
    this.id,
    this.noManagedCertificate,
    this.overrideStrategy,
    this.sslSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'id': ?id,
      'noManagedCertificate': ?noManagedCertificate,
      'overrideStrategy': ?overrideStrategy,
      'sslSettings': ?pulumi.Input.mapOptionalInputValue<SslSettingsAppengineV1alpha, Map<String, dynamic>>(sslSettings, (value) => value.toMap()),
    };
  }

  factory DomainMappingAppengineV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return DomainMappingAppengineV1alphaArgs(
      appId: (map['appId'] as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      noManagedCertificate: map['noManagedCertificate'] == null ? null : (map['noManagedCertificate']! as bool).input(),
      overrideStrategy: map['overrideStrategy'] == null ? null : (map['overrideStrategy']! as String).input(),
      sslSettings: map['sslSettings'] == null ? null : (SslSettingsAppengineV1alpha.fromMap((map['sslSettings']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

