// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_properties.dart';

/// {@template pulumi_portal_tenant_configuration_args_doc}
/// The set of arguments for TenantConfiguration.
/// {@endtemplate}
/// {@macro pulumi_portal_tenant_configuration_args_doc}
class TenantConfigurationArgs {
  /// The name of the Configuration
  final pulumi.Input<String>? configurationName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<ConfigurationProperties>? properties;

  /// Creates a new [TenantConfigurationArgs].
  /// [configurationName] The name of the Configuration
  /// [properties] The resource-specific properties for this resource.
  TenantConfigurationArgs({
    pulumi.Output<String>? configurationName,
    pulumi.Output<ConfigurationProperties>? properties,
  }) :
      configurationName = pulumi.Input.asOptionalInput<String>(configurationName),
      properties = pulumi.Input.asOptionalInput<ConfigurationProperties>(properties);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationName': ?configurationName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ConfigurationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory TenantConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return TenantConfigurationArgs(
      configurationName: map['configurationName'] == null ? null : pulumi.Output.create<String>(map['configurationName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ConfigurationProperties>(ConfigurationProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
    );
  }
}

