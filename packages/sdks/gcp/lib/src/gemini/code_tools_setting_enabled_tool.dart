// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_tools_setting_enabled_tool_config.dart';

class CodeToolsSettingEnabledTool {
  /// Link to the Dev Connect Account Connector that holds the user credentials.
  /// projects/{project}/locations/{location}/accountConnectors/{account_connector_id}
  final pulumi.Input<String>? accountConnector;
  /// Configuration parameters for the tool.
  /// Structure is documented below.
  final pulumi.Input<List<CodeToolsSettingEnabledToolConfig>>? configs;
  /// Handle used to invoke the tool.
  final pulumi.Input<String> handle;
  /// Link to the Tool
  final pulumi.Input<String> tool;
  /// Overridden URI, if allowed by Tool.
  final pulumi.Input<String>? uriOverride;

  /// Creates a new [CodeToolsSettingEnabledTool].
  /// [accountConnector] Link to the Dev Connect Account Connector that holds the user credentials.
  /// [configs] Configuration parameters for the tool.
  /// [handle] Handle used to invoke the tool.
  /// [tool] Link to the Tool
  /// [uriOverride] Overridden URI, if allowed by Tool.
  CodeToolsSettingEnabledTool({
    this.accountConnector,
    this.configs,
    required this.handle,
    required this.tool,
    this.uriOverride,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountConnector': ?accountConnector,
      'configs': ?pulumi.Input.mapOptionalInputValue<List<CodeToolsSettingEnabledToolConfig>, List<Map<String, dynamic>>>(configs, (value) => pulumi.Input.encodeList<CodeToolsSettingEnabledToolConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'handle': handle,
      'tool': tool,
      'uriOverride': ?uriOverride,
    };
  }

  factory CodeToolsSettingEnabledTool.fromMap(Map<String, dynamic> map) {
    return CodeToolsSettingEnabledTool(
      accountConnector: map['accountConnector'] == null ? null : (map['accountConnector']! as String).input(),
      configs: map['configs'] == null ? null : (pulumi.Input.decodeList<CodeToolsSettingEnabledToolConfig>(map['configs']!, (value) => CodeToolsSettingEnabledToolConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      handle: (map['handle'] as String).input(),
      tool: (map['tool'] as String).input(),
      uriOverride: map['uriOverride'] == null ? null : (map['uriOverride']! as String).input(),
    );
  }
}

