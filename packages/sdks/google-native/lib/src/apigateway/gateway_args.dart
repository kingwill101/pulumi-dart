// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_v1_gateway_args_doc}
/// The set of arguments for Gateway.
/// {@endtemplate}
/// {@macro pulumi_apigateway_v1_gateway_args_doc}
class GatewayArgs {
  /// Resource name of the API Config for this Gateway. Format: projects/{project}/locations/global/apis/{api}/configs/{apiConfig}
  final pulumi.Input<String> apiConfig;
  /// Optional. Display name.
  final pulumi.Input<String>? displayName;
  /// Required. Identifier to assign to the Gateway. Must be unique within scope of the parent resource.
  final pulumi.Input<String> gatewayId;
  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Creates a new [GatewayArgs].
  /// [apiConfig] Resource name of the API Config for this Gateway. Format: projects/{project}/locations/global/apis/{api}/configs/{apiConfig}
  /// [displayName] Optional. Display name.
  /// [gatewayId] Required. Identifier to assign to the Gateway. Must be unique within scope of the parent resource.
  /// [labels] Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  /// [location] Optional.
  /// [project] Optional.
  GatewayArgs({
    required pulumi.Output<String> apiConfig,
    pulumi.Output<String>? displayName,
    required pulumi.Output<String> gatewayId,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? project,
  }) :
      apiConfig = pulumi.Input.asInput<String>(apiConfig),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      gatewayId = pulumi.Input.asInput<String>(gatewayId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiConfig': apiConfig,
      'displayName': ?displayName,
      'gatewayId': gatewayId,
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GatewayArgs.fromMap(Map<String, dynamic> map) {
    return GatewayArgs(
      apiConfig: pulumi.Output.create<String>(map['apiConfig'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      gatewayId: pulumi.Output.create<String>(map['gatewayId'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

