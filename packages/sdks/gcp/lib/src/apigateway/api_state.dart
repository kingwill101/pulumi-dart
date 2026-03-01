// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Api resources.
class ApiState {
  /// Identifier to assign to the API. Must be unique within scope of the parent resource(project)
  final pulumi.Input<String>? apiId;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? createTime;
  /// A user-visible name for the API.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Immutable. The name of a Google Managed Service ( https://cloud.google.com/service-infrastructure/docs/glossary#managed).
  /// If not specified, a new Service will automatically be created in the same project as this API.
  final pulumi.Input<String>? managedService;
  /// The resource name of the API. Format `projects/{{project}}/locations/global/apis/{{apiId}}`
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;

  /// Creates a new [ApiState].
  /// [apiId] Identifier to assign to the API. Must be unique within scope of the parent resource(project)
  /// [createTime] Creation timestamp in RFC3339 text format.
  /// [displayName] A user-visible name for the API.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Resource labels to represent user-provided metadata.
  /// [managedService] Immutable. The name of a Google Managed Service ( https://cloud.google.com/service-infrastructure/docs/glossary#managed).
  /// [name] The resource name of the API. Format `projects/{{project}}/locations/global/apis/{{apiId}}`
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  ApiState({
    pulumi.Output<String>? apiId,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? managedService,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
  }) :
      apiId = pulumi.Input.asOptionalInput<String>(apiId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      managedService = pulumi.Input.asOptionalInput<String>(managedService),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': ?apiId,
      'createTime': ?createTime,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'managedService': ?managedService,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
    };
  }

  factory ApiState.fromMap(Map<String, dynamic> map) {
    return ApiState(
      apiId: map['apiId'] == null ? null : pulumi.Output.create<String>(map['apiId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      managedService: map['managedService'] == null ? null : pulumi.Output.create<String>(map['managedService'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
    );
  }
}

