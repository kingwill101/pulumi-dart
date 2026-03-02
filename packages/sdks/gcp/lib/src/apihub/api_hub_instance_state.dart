// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_hub_instance_config.dart';

/// Input properties used for looking up and filtering ApiHubInstance resources.
class ApiHubInstanceState {
  /// Optional. Identifier to assign to the Api Hub instance. Must be unique within
  /// scope of the parent resource. If the field is not provided,
  /// system generated id will be used.
  /// This value should be 4-40 characters, and valid characters
  /// are `/a-z[0-9]-_/`.
  final pulumi.Input<String>? apiHubInstanceId;
  /// Available configurations to provision an ApiHub Instance.
  /// Structure is documented below.
  final pulumi.Input<ApiHubInstanceConfig>? config;
  /// Output only. Creation timestamp.
  final pulumi.Input<String>? createTime;
  /// Optional. Description of the ApiHub instance.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Optional. Instance labels to represent user-provided metadata.
  /// Refer to cloud documentation on labels for more details.
  /// https://cloud.google.com/compute/docs/labeling-resources
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Identifier. Format:
  /// `projects/{project}/locations/{location}/apiHubInstances/{apiHubInstance}`.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Output only. The current state of the ApiHub instance.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// INACTIVE
  /// CREATING
  /// ACTIVE
  /// UPDATING
  /// DELETING
  /// FAILED
  final pulumi.Input<String>? state;
  /// Output only. Extra information about ApiHub instance state. Currently the message
  /// would be populated when state is `FAILED`.
  final pulumi.Input<String>? stateMessage;
  /// Output only. Last update timestamp.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ApiHubInstanceState].
  /// [apiHubInstanceId] Optional. Identifier to assign to the Api Hub instance. Must be unique within
  /// [config] Available configurations to provision an ApiHub Instance.
  /// [createTime] Output only. Creation timestamp.
  /// [description] Optional. Description of the ApiHub instance.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Optional. Instance labels to represent user-provided metadata.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. Format:
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [state] Output only. The current state of the ApiHub instance.
  /// [stateMessage] Output only. Extra information about ApiHub instance state. Currently the message
  /// [updateTime] Output only. Last update timestamp.
  ApiHubInstanceState({
    this.apiHubInstanceId,
    this.config,
    this.createTime,
    this.description,
    this.effectiveLabels,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.state,
    this.stateMessage,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiHubInstanceId': ?apiHubInstanceId,
      'config': ?pulumi.Input.mapOptionalInputValue<ApiHubInstanceConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'state': ?state,
      'stateMessage': ?stateMessage,
      'updateTime': ?updateTime,
    };
  }

  factory ApiHubInstanceState.fromMap(Map<String, dynamic> map) {
    return ApiHubInstanceState(
      apiHubInstanceId: map['apiHubInstanceId'] == null ? null : (map['apiHubInstanceId'] as String).input(),
      config: map['config'] == null ? null : (ApiHubInstanceConfig.fromMap((map['config'] as Map).cast<String, dynamic>())).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      stateMessage: map['stateMessage'] == null ? null : (map['stateMessage'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

