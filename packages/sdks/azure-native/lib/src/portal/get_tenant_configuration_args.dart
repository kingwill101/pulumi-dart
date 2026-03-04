// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_portal_get_tenant_configuration_args_doc}
/// Arguments for getTenantConfiguration.
/// {@endtemplate}
/// {@macro pulumi_portal_get_tenant_configuration_args_doc}
class GetTenantConfigurationArgs {
  /// The name of the Configuration
  final pulumi.Input<String> configurationName;

  /// Creates a new [GetTenantConfigurationArgs].
  /// [configurationName] The name of the Configuration
  GetTenantConfigurationArgs({required this.configurationName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'configurationName': configurationName};
  }

  factory GetTenantConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetTenantConfigurationArgs(
      configurationName: pulumi.Input.fromValue(
        map['configurationName'] as String,
      ),
    );
  }
}
