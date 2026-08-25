// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_tools_setting_enabled_tool.dart';

/// {@template pulumi_gemini_code_tools_setting_code_tools_setting_args_doc}
/// The set of arguments for CodeToolsSetting.
/// {@endtemplate}
/// {@macro pulumi_gemini_code_tools_setting_code_tools_setting_args_doc}
class CodeToolsSettingArgs {
  /// Id of the Code Tools Setting.
  final pulumi.Input<String> codeToolsSettingId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Represents the full set of enabled tools.
  /// Structure is documented below.
  final pulumi.Input<List<CodeToolsSettingEnabledTool>> enabledTools;
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [CodeToolsSettingArgs].
  /// [codeToolsSettingId] Id of the Code Tools Setting.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [enabledTools] Represents the full set of enabled tools.
  /// [labels] Labels as key value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  const CodeToolsSettingArgs({
    required this.codeToolsSettingId,
    this.deletionPolicy,
    required this.enabledTools,
    this.labels,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeToolsSettingId': codeToolsSettingId,
      'deletionPolicy': ?deletionPolicy,
      'enabledTools': pulumi.Input.mapInputValue<List<CodeToolsSettingEnabledTool>, List<Map<String, dynamic>>>(enabledTools, (value) => pulumi.Input.encodeList<CodeToolsSettingEnabledTool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
    };
  }

  factory CodeToolsSettingArgs.fromMap(Map<String, dynamic> map) {
    return CodeToolsSettingArgs(
      codeToolsSettingId: pulumi.Input.fromValue(map['codeToolsSettingId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabledTools: pulumi.Input.fromValue(pulumi.Input.decodeList<CodeToolsSettingEnabledTool>(map['enabledTools']!, (value) => CodeToolsSettingEnabledTool.fromMap((value as Map).cast<String, dynamic>()))),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
