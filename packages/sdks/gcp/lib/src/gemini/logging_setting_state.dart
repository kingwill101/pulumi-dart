// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LoggingSetting resources.
class LoggingSettingState {
  /// Create time stamp.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? location;
  /// Whether to log metadata.
  final pulumi.Input<bool?>? logMetadata;
  /// Whether to log prompts and responses.
  final pulumi.Input<bool?>? logPromptsAndResponses;
  /// Id of the Logging Setting.
  final pulumi.Input<String?>? loggingSettingId;
  /// Identifier. Name of the resource.
  /// Format:projects/{project}/locations/{location}/loggingsettings/{loggingsetting}
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// Update time stamp.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [LoggingSettingState].
  /// [createTime] Create time stamp.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
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
  const LoggingSettingState({
    this.createTime,
    this.deletionPolicy,
    this.effectiveLabels,
    this.labels,
    this.location,
    this.logMetadata,
    this.logPromptsAndResponses,
    this.loggingSettingId,
    this.name,
    this.project,
    this.pulumiLabels,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logMetadata: (() { final guardedValue = map['logMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logPromptsAndResponses: (() { final guardedValue = map['logPromptsAndResponses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      loggingSettingId: (() { final guardedValue = map['loggingSettingId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
