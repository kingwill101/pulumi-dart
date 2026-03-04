// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_mapping_ssl_settings.dart';

/// {@template pulumi_appengine_domain_mapping_domain_mapping_args_doc}
/// The set of arguments for DomainMapping.
/// {@endtemplate}
/// {@macro pulumi_appengine_domain_mapping_domain_mapping_args_doc}
class DomainMappingArgs {
  /// Relative name of the domain serving the application. Example: example.com.
  final pulumi.Input<String> domainName;

  /// Whether the domain creation should override any existing mappings for this domain.
  /// By default, overrides are rejected.
  /// Default value is `STRICT`.
  /// Possible values are: `STRICT`, `OVERRIDE`.
  final pulumi.Input<String>? overrideStrategy;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// SSL configuration for this domain. If unconfigured, this domain will not serve with SSL.
  /// Structure is documented below.
  final pulumi.Input<DomainMappingSslSettings>? sslSettings;

  /// Creates a new [DomainMappingArgs].
  /// [domainName] Relative name of the domain serving the application. Example: example.com.
  /// [overrideStrategy] Whether the domain creation should override any existing mappings for this domain.
  /// [project] The ID of the project in which the resource belongs.
  /// [sslSettings] SSL configuration for this domain. If unconfigured, this domain will not serve with SSL.
  DomainMappingArgs({
    required this.domainName,
    this.overrideStrategy,
    this.project,
    this.sslSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'overrideStrategy': ?overrideStrategy,
      'project': ?project,
      'sslSettings':
          ?pulumi.Input.mapOptionalInputValue<
            DomainMappingSslSettings,
            Map<String, dynamic>
          >(sslSettings, (value) => value.toMap()),
    };
  }

  factory DomainMappingArgs.fromMap(Map<String, dynamic> map) {
    return DomainMappingArgs(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      overrideStrategy: (() {
        final guardedValue = map['overrideStrategy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sslSettings: (() {
        final guardedValue = map['sslSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainMappingSslSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
