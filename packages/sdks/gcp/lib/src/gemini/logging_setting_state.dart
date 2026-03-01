// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LoggingSetting resources.
class LoggingSettingState {
  /// Create time stamp.
  final pulumi.Input<String>? createTime;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Whether to log metadata.
  final pulumi.Input<bool>? logMetadata;
  /// Whether to log prompts and responses.
  final pulumi.Input<bool>? logPromptsAndResponses;
  /// Id of the Logging Setting.
  final pulumi.Input<String>? loggingSettingId;
  /// Identifier. Name of the resource.
  /// Format:projects/{project}/locations/{location}/loggingsettings/{loggingsetting}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Update time stamp.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [LoggingSettingState].
  /// [createTime] Create time stamp.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Labels as key value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [logMetadata] Whether to log metadata.
  /// [logPromptsAndResponses] Whether to log prompts and responses.
  /// [loggingSettingId] Id of the Logging Setting.
  /// [name] Identifier. Name of the resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [updateTime] Update time stamp.
  LoggingSettingState({
    pulumi.Output<String>? createTime,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<bool>? logMetadata,
    pulumi.Output<bool>? logPromptsAndResponses,
    pulumi.Output<String>? loggingSettingId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      logMetadata = pulumi.Input.asOptionalInput<bool>(logMetadata),
      logPromptsAndResponses = pulumi.Input.asOptionalInput<bool>(logPromptsAndResponses),
      loggingSettingId = pulumi.Input.asOptionalInput<String>(loggingSettingId),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'logMetadata': ?logMetadata,
      'logPromptsAndResponses': ?logPromptsAndResponses,
      'loggingSettingId': ?loggingSettingId,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'updateTime': ?updateTime,
    };
  }

  factory LoggingSettingState.fromMap(Map<String, dynamic> map) {
    return LoggingSettingState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      logMetadata: map['logMetadata'] == null ? null : pulumi.Output.create<bool>(map['logMetadata'] as bool),
      logPromptsAndResponses: map['logPromptsAndResponses'] == null ? null : pulumi.Output.create<bool>(map['logPromptsAndResponses'] as bool),
      loggingSettingId: map['loggingSettingId'] == null ? null : pulumi.Output.create<String>(map['loggingSettingId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

