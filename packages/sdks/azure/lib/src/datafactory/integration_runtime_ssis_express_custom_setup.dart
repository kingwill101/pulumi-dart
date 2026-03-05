// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_ssis_express_custom_setup_command_key.dart';
import 'integration_runtime_ssis_express_custom_setup_component.dart';

class IntegrationRuntimeSsisExpressCustomSetup {
  /// One or more `command_key` blocks as defined below.
  final pulumi.Input<List<IntegrationRuntimeSsisExpressCustomSetupCommandKey>>? commandKeys;
  /// One or more `component` blocks as defined below.
  final pulumi.Input<List<IntegrationRuntimeSsisExpressCustomSetupComponent>>? components;
  /// The Environment Variables for the Azure-SSIS Integration Runtime.
  final pulumi.Input<Map<String, String>>? environment;
  /// The version of Azure Powershell installed for the Azure-SSIS Integration Runtime.
  ///
  /// &gt; **Note:** At least one of `env`, `powershell_version`, `component` and `command_key` should be specified.
  final pulumi.Input<String>? powershellVersion;

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
      'commandKeys': ?pulumi.Input.mapOptionalInputValue<List<IntegrationRuntimeSsisExpressCustomSetupCommandKey>, List<Map<String, dynamic>>>(commandKeys, (value) => pulumi.Input.encodeList<IntegrationRuntimeSsisExpressCustomSetupCommandKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'components': ?pulumi.Input.mapOptionalInputValue<List<IntegrationRuntimeSsisExpressCustomSetupComponent>, List<Map<String, dynamic>>>(components, (value) => pulumi.Input.encodeList<IntegrationRuntimeSsisExpressCustomSetupComponent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'environment': ?environment,
      'powershellVersion': ?powershellVersion,
    };
  }

  factory IntegrationRuntimeSsisExpressCustomSetup.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeSsisExpressCustomSetup(
      commandKeys: (() { final guardedValue = map['commandKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IntegrationRuntimeSsisExpressCustomSetupCommandKey>(guardedValue, (value) => IntegrationRuntimeSsisExpressCustomSetupCommandKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
      components: (() { final guardedValue = map['components']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IntegrationRuntimeSsisExpressCustomSetupComponent>(guardedValue, (value) => IntegrationRuntimeSsisExpressCustomSetupComponent.fromMap((value as Map).cast<String, dynamic>()))); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      powershellVersion: (() { final guardedValue = map['powershellVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

