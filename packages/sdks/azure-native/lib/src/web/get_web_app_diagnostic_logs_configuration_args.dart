// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_web_app_diagnostic_logs_configuration_args_doc}
/// Arguments for getWebAppDiagnosticLogsConfiguration.
/// {@endtemplate}
/// {@macro pulumi_web_get_web_app_diagnostic_logs_configuration_args_doc}
class GetWebAppDiagnosticLogsConfigurationArgs {
  /// Name of the app.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWebAppDiagnosticLogsConfigurationArgs].
  /// [name] Name of the app.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetWebAppDiagnosticLogsConfigurationArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWebAppDiagnosticLogsConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppDiagnosticLogsConfigurationArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
