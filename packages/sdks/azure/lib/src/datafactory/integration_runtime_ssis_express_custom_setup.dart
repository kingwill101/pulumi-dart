// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_ssis_express_custom_setup_command_key.dart';
import 'integration_runtime_ssis_express_custom_setup_component.dart';

class IntegrationRuntimeSsisExpressCustomSetup {
  /// One or more `command_key` blocks as defined below.
  final List<IntegrationRuntimeSsisExpressCustomSetupCommandKey>? commandKeys;
  /// One or more `component` blocks as defined below.
  final List<IntegrationRuntimeSsisExpressCustomSetupComponent>? components;
  /// The Environment Variables for the Azure-SSIS Integration Runtime.
  final Map<String, String>? environment;
  /// The version of Azure Powershell installed for the Azure-SSIS Integration Runtime.
  ///
  /// > **Note:** At least one of `env`, `powershell_version`, `component` and `command_key` should be specified.
  final String? powershellVersion;

  /// Creates a new [IntegrationRuntimeSsisExpressCustomSetup].
  /// [commandKeys] One or more `command_key` blocks as defined below.
  /// [components] One or more `component` blocks as defined below.
  /// [environment] The Environment Variables for the Azure-SSIS Integration Runtime.
  /// [powershellVersion] The version of Azure Powershell installed for the Azure-SSIS Integration Runtime.
  IntegrationRuntimeSsisExpressCustomSetup({
    this.commandKeys,
    this.components,
    this.environment,
    this.powershellVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commandKeys': ?commandKeys == null ? null : pulumi.Input.encodeList<IntegrationRuntimeSsisExpressCustomSetupCommandKey, Map<String, dynamic>>(commandKeys!, (value) => value.toMap()),
      'components': ?components == null ? null : pulumi.Input.encodeList<IntegrationRuntimeSsisExpressCustomSetupComponent, Map<String, dynamic>>(components!, (value) => value.toMap()),
      'environment': ?environment,
      'powershellVersion': ?powershellVersion,
    };
  }

  factory IntegrationRuntimeSsisExpressCustomSetup.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeSsisExpressCustomSetup(
      commandKeys: map['commandKeys'] == null ? null : pulumi.Input.decodeList<IntegrationRuntimeSsisExpressCustomSetupCommandKey>(map['commandKeys'], (value) => IntegrationRuntimeSsisExpressCustomSetupCommandKey.fromMap((value as Map).cast<String, dynamic>())),
      components: map['components'] == null ? null : pulumi.Input.decodeList<IntegrationRuntimeSsisExpressCustomSetupComponent>(map['components'], (value) => IntegrationRuntimeSsisExpressCustomSetupComponent.fromMap((value as Map).cast<String, dynamic>())),
      environment: map['environment'] == null ? null : (map['environment'] as Map).cast<String, String>(),
      powershellVersion: map['powershellVersion'] == null ? null : map['powershellVersion'] as String,
    );
  }
}

