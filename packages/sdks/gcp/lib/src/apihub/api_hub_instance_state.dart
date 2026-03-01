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
    pulumi.Output<String>? apiHubInstanceId,
    pulumi.Output<ApiHubInstanceConfig>? config,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? state,
    pulumi.Output<String>? stateMessage,
    pulumi.Output<String>? updateTime,
  }) :
      apiHubInstanceId = pulumi.Input.asOptionalInput<String>(apiHubInstanceId),
      config = pulumi.Input.asOptionalInput<ApiHubInstanceConfig>(config),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      state = pulumi.Input.asOptionalInput<String>(state),
      stateMessage = pulumi.Input.asOptionalInput<String>(stateMessage),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      apiHubInstanceId: map['apiHubInstanceId'] == null ? null : pulumi.Output.create<String>(map['apiHubInstanceId'] as String),
      config: map['config'] == null ? null : pulumi.Output.create<ApiHubInstanceConfig>(ApiHubInstanceConfig.fromMap((map['config'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      stateMessage: map['stateMessage'] == null ? null : pulumi.Output.create<String>(map['stateMessage'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

