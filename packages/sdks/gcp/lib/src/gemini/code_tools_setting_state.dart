// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_tools_setting_enabled_tool.dart';

/// Input properties used for looking up and filtering CodeToolsSetting resources.
class CodeToolsSettingState {
  /// Id of the Code Tools Setting.
  final pulumi.Input<String>? codeToolsSettingId;
  /// Create time stamp.
  final pulumi.Input<String>? createTime;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Represents the full set of enabled tools.
  /// Structure is documented below.
  final pulumi.Input<List<CodeToolsSettingEnabledTool>>? enabledTools;
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Identifier. Name of the resource.
  /// Format:projects/{project}/locations/{location}/codeToolsSettings/{codeToolsSetting}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Update time stamp.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [CodeToolsSettingState].
  /// [codeToolsSettingId] Id of the Code Tools Setting.
  /// [createTime] Create time stamp.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [enabledTools] Represents the full set of enabled tools.
  /// [labels] Labels as key value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. Name of the resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [updateTime] Update time stamp.
  CodeToolsSettingState({
    pulumi.Output<String>? codeToolsSettingId,
    pulumi.Output<String>? createTime,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<List<CodeToolsSettingEnabledTool>>? enabledTools,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? updateTime,
  }) :
      codeToolsSettingId = pulumi.Input.asOptionalInput<String>(codeToolsSettingId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      enabledTools = pulumi.Input.asOptionalInput<List<CodeToolsSettingEnabledTool>>(enabledTools),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeToolsSettingId': ?codeToolsSettingId,
      'createTime': ?createTime,
      'effectiveLabels': ?effectiveLabels,
      'enabledTools': ?pulumi.Input.mapOptionalInputValue<List<CodeToolsSettingEnabledTool>, List<Map<String, dynamic>>>(enabledTools, (value) => pulumi.Input.encodeList<CodeToolsSettingEnabledTool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'updateTime': ?updateTime,
    };
  }

  factory CodeToolsSettingState.fromMap(Map<String, dynamic> map) {
    return CodeToolsSettingState(
      codeToolsSettingId: map['codeToolsSettingId'] == null ? null : pulumi.Output.create<String>(map['codeToolsSettingId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      enabledTools: map['enabledTools'] == null ? null : pulumi.Output.create<List<CodeToolsSettingEnabledTool>>(pulumi.Input.decodeList<CodeToolsSettingEnabledTool>(map['enabledTools'], (value) => CodeToolsSettingEnabledTool.fromMap((value as Map).cast<String, dynamic>()))),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

