// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'companion_agent_toolset_tool_parameter_override.dart';

class CompanionAgentToolsetTool {
  /// Indicates whether the tool requires human confirmation.
  /// Possible values are: `REQUIRED`, `NOT_REQUIRED`.
  final pulumi.Input<String?>? confirmationRequirement;
  /// The `operationId` field of the OpenAPI endpoint. The `operationId` must be present in the toolset's definition.
  final pulumi.Input<String?>? operationId;
  /// Overrides for the tool's input parameters. When the tool is called, each listed parameter is set to the value found in the ingested context references, populating it if omitted by the model or replacing any value predicted by the model. Duplicate entries for the same `parameterName` are disallowed and rejected during Companion Agent validation.
  /// Structure is documented below.
  final pulumi.Input<List<CompanionAgentToolsetToolParameterOverride>?>? parameterOverrides;
  /// Indicates whether the toolset tool is enabled in proactive mode.
  /// NOTE: At least one of `proactiveEnabled` or `reactiveEnabled` should be `true` else the toolset tool will be ignored.
  final pulumi.Input<bool?>? proactiveEnabled;
  /// Indicates whether the toolset tool is enabled in reactive mode.
  /// NOTE: At least one of `reactiveEnabled` or `proactiveEnabled` should be `true` else the toolset tool will be ignored.
  final pulumi.Input<bool?>? reactiveEnabled;
  /// The name of the toolset to retrieve the schema for.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`.
  final pulumi.Input<String> toolset;

  /// Creates a new [CompanionAgentToolsetTool].
  /// [confirmationRequirement] Indicates whether the tool requires human confirmation.
  /// [operationId] The `operationId` field of the OpenAPI endpoint. The `operationId` must be present in the toolset's definition.
  /// [parameterOverrides] Overrides for the tool's input parameters. When the tool is called, each listed parameter is set to the value found in the ingested context references, populating it if omitted by the model or replacing any value predicted by the model. Duplicate entries for the same `parameterName` are disallowed and rejected during Companion Agent validation.
  /// [proactiveEnabled] Indicates whether the toolset tool is enabled in proactive mode.
  /// [reactiveEnabled] Indicates whether the toolset tool is enabled in reactive mode.
  /// [toolset] The name of the toolset to retrieve the schema for.
  const CompanionAgentToolsetTool({
    this.confirmationRequirement,
    this.operationId,
    this.parameterOverrides,
    this.proactiveEnabled,
    this.reactiveEnabled,
    required this.toolset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confirmationRequirement': ?confirmationRequirement,
      'operationId': ?operationId,
      'parameterOverrides': ?pulumi.Input.mapOptionalInputValue<List<CompanionAgentToolsetToolParameterOverride>, List<Map<String, dynamic>>>(parameterOverrides, (value) => pulumi.Input.encodeList<CompanionAgentToolsetToolParameterOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'proactiveEnabled': ?proactiveEnabled,
      'reactiveEnabled': ?reactiveEnabled,
      'toolset': toolset,
    };
  }

  factory CompanionAgentToolsetTool.fromMap(Map<String, dynamic> map) {
    return CompanionAgentToolsetTool(
      confirmationRequirement: (() { final guardedValue = map['confirmationRequirement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationId: (() { final guardedValue = map['operationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterOverrides: (() { final guardedValue = map['parameterOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CompanionAgentToolsetToolParameterOverride>(guardedValue, (value) => CompanionAgentToolsetToolParameterOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
      proactiveEnabled: (() { final guardedValue = map['proactiveEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      reactiveEnabled: (() { final guardedValue = map['reactiveEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      toolset: pulumi.Input.fromValue(map['toolset'] as String),
    );
  }
}
