// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'companion_agent_ces_tool_spec_parameter_override.dart';

class CompanionAgentCesToolSpec {
  /// The resource name of the CES tool.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/tools/{tool}`.
  final pulumi.Input<String?>? cesTool;
  /// Indicates whether the tool requires human confirmation.
  /// Possible values are: `REQUIRED`, `NOT_REQUIRED`.
  final pulumi.Input<String?>? confirmationRequirement;
  /// Overrides for the tool's input parameters. When the tool is called, each listed parameter is set to the value found in the ingested context references, populating it if omitted by the model or replacing any value predicted by the model. Duplicate entries for the same `parameterName` are disallowed and rejected during Companion Agent validation.
  /// Structure is documented below.
  final pulumi.Input<List<CompanionAgentCesToolSpecParameterOverride>?>? parameterOverrides;
  /// Indicates whether the tool is enabled in proactive mode.
  /// All tools are enabled in proactive mode by default. To disable a tool in proactive mode, set this field to `false`.
  /// NOTE: At least one of `proactiveEnabled` or `reactiveEnabled` should be `true` else the tool will be ignored.
  final pulumi.Input<bool?>? proactiveEnabled;
  /// Indicates whether the tool is enabled in reactive mode.
  /// All tools are disabled in reactive mode by default. To enable a tool in reactive mode, set this field to `true`.
  /// NOTE: At least one of `reactiveEnabled` or `proactiveEnabled` should be `true` else the tool will be ignored. CompanionAgent config will throw an error if any unsupported tool is enabled in reactive mode.
  final pulumi.Input<bool?>? reactiveEnabled;

  /// Creates a new [CompanionAgentCesToolSpec].
  /// [cesTool] The resource name of the CES tool.
  /// [confirmationRequirement] Indicates whether the tool requires human confirmation.
  /// [parameterOverrides] Overrides for the tool's input parameters. When the tool is called, each listed parameter is set to the value found in the ingested context references, populating it if omitted by the model or replacing any value predicted by the model. Duplicate entries for the same `parameterName` are disallowed and rejected during Companion Agent validation.
  /// [proactiveEnabled] Indicates whether the tool is enabled in proactive mode.
  /// [reactiveEnabled] Indicates whether the tool is enabled in reactive mode.
  const CompanionAgentCesToolSpec({
    this.cesTool,
    this.confirmationRequirement,
    this.parameterOverrides,
    this.proactiveEnabled,
    this.reactiveEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cesTool': ?cesTool,
      'confirmationRequirement': ?confirmationRequirement,
      'parameterOverrides': ?pulumi.Input.mapOptionalInputValue<List<CompanionAgentCesToolSpecParameterOverride>, List<Map<String, dynamic>>>(parameterOverrides, (value) => pulumi.Input.encodeList<CompanionAgentCesToolSpecParameterOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'proactiveEnabled': ?proactiveEnabled,
      'reactiveEnabled': ?reactiveEnabled,
    };
  }

  factory CompanionAgentCesToolSpec.fromMap(Map<String, dynamic> map) {
    return CompanionAgentCesToolSpec(
      cesTool: (() { final guardedValue = map['cesTool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      confirmationRequirement: (() { final guardedValue = map['confirmationRequirement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterOverrides: (() { final guardedValue = map['parameterOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CompanionAgentCesToolSpecParameterOverride>(guardedValue, (value) => CompanionAgentCesToolSpecParameterOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
      proactiveEnabled: (() { final guardedValue = map['proactiveEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      reactiveEnabled: (() { final guardedValue = map['reactiveEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
