// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Gateway resources.
class GatewayState {
  /// Resource name of the API Config for this Gateway. Format: projects/{project}/locations/global/apis/{api}/configs/{apiConfig}.
  /// When changing api configs please ensure the new config is a new resource and the
  /// lifecycle rule `create_before_destroy` is set.
  final pulumi.Input<String>? apiConfig;
  /// The default API Gateway host name of the form {gatewayId}-{hash}.{region_code}.gateway.dev.
  final pulumi.Input<String>? defaultHostname;
  /// A user-visible name for the API.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Identifier to assign to the Gateway. Must be unique within scope of the parent resource(project).
  final pulumi.Input<String>? gatewayId;
  /// Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource name of the Gateway. Format: projects/{project}/locations/{region}/gateways/{gateway}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The region of the gateway for the API.
  final pulumi.Input<String>? region;

  /// Creates a new [GatewayState].
  /// [apiConfig] Resource name of the API Config for this Gateway. Format: projects/{project}/locations/global/apis/{api}/configs/{apiConfig}.
  /// [defaultHostname] The default API Gateway host name of the form {gatewayId}-{hash}.{region_code}.gateway.dev.
  /// [displayName] A user-visible name for the API.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [gatewayId] Identifier to assign to the Gateway. Must be unique within scope of the parent resource(project).
  /// [labels] Resource labels to represent user-provided metadata.
  /// [name] Resource name of the Gateway. Format: projects/{project}/locations/{region}/gateways/{gateway}
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [region] The region of the gateway for the API.
  GatewayState({
    pulumi.Output<String>? apiConfig,
    pulumi.Output<String>? defaultHostname,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? gatewayId,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? region,
  }) :
      apiConfig = pulumi.Input.asOptionalInput<String>(apiConfig),
      defaultHostname = pulumi.Input.asOptionalInput<String>(defaultHostname),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      gatewayId = pulumi.Input.asOptionalInput<String>(gatewayId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiConfig': ?apiConfig,
      'defaultHostname': ?defaultHostname,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'gatewayId': ?gatewayId,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
    };
  }

  factory GatewayState.fromMap(Map<String, dynamic> map) {
    return GatewayState(
      apiConfig: map['apiConfig'] == null ? null : pulumi.Output.create<String>(map['apiConfig'] as String),
      defaultHostname: map['defaultHostname'] == null ? null : pulumi.Output.create<String>(map['defaultHostname'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      gatewayId: map['gatewayId'] == null ? null : pulumi.Output.create<String>(map['gatewayId'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

