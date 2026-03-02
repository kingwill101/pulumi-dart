// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_v1beta_api_apigateway_v1beta_args_doc}
/// The set of arguments for Api.
/// {@endtemplate}
/// {@macro pulumi_apigateway_v1beta_api_apigateway_v1beta_args_doc}
class ApiApigatewayV1betaArgs {
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

  /// Creates a new [ApiApigatewayV1betaArgs].
  /// [apiId] Required. Identifier to assign to the API. Must be unique within scope of the parent resource.
  /// [displayName] Optional. Display name.
  /// [labels] Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  /// [location] Optional.
  /// [managedService] Optional. Immutable. The name of a Google Managed Service ( https://cloud.google.com/service-infrastructure/docs/glossary#managed). If not specified, a new Service will automatically be created in the same project as this API.
  /// [project] Optional.
  ApiApigatewayV1betaArgs({
    required this.apiId,
    this.displayName,
    this.labels,
    this.location,
    this.managedService,
    this.project,
  });

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

  factory ApiApigatewayV1betaArgs.fromMap(Map<String, dynamic> map) {
    return ApiApigatewayV1betaArgs(
      apiId: (map['apiId'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      managedService: map['managedService'] == null ? null : (map['managedService']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

