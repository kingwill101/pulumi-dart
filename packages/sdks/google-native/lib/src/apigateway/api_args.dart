// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_v1_api_args_doc}
/// The set of arguments for Api.
/// {@endtemplate}
/// {@macro pulumi_apigateway_v1_api_args_doc}
class ApiArgs {
  /// Required. Identifier to assign to the API. Must be unique within scope of the parent resource.
  final pulumi.Input<String> apiId;
  /// Optional. Display name.
  final pulumi.Input<String>? displayName;
  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Optional. Immutable. The name of a Google Managed Service ( https://cloud.google.com/service-infrastructure/docs/glossary#managed). If not specified, a new Service will automatically be created in the same project as this API.
  final pulumi.Input<String>? managedService;
  final pulumi.Input<String>? project;

  /// Creates a new [ApiArgs].
  /// [apiId] Required. Identifier to assign to the API. Must be unique within scope of the parent resource.
  /// [displayName] Optional. Display name.
  /// [labels] Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  /// [location] Optional.
  /// [managedService] Optional. Immutable. The name of a Google Managed Service ( https://cloud.google.com/service-infrastructure/docs/glossary#managed). If not specified, a new Service will automatically be created in the same project as this API.
  /// [project] Optional.
  ApiArgs({
    required pulumi.Output<String> apiId,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? managedService,
    pulumi.Output<String>? project,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedService = pulumi.Input.asOptionalInput<String>(managedService),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'displayName': ?displayName,
      'labels': ?labels,
      'location': ?location,
      'managedService': ?managedService,
      'project': ?project,
    };
  }

  factory ApiArgs.fromMap(Map<String, dynamic> map) {
    return ApiArgs(
      apiId: pulumi.Output.create<String>(map['apiId'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedService: map['managedService'] == null ? null : pulumi.Output.create<String>(map['managedService'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

