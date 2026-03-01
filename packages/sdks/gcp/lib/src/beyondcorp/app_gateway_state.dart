// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_gateway_allocated_connection.dart';

/// Input properties used for looking up and filtering AppGateway resources.
class AppGatewayState {
  /// A list of connections allocated for the Gateway.
  /// Structure is documented below.
  final pulumi.Input<List<AppGatewayAllocatedConnection>>? allocatedConnections;
  /// An arbitrary user-provided name for the AppGateway.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The type of hosting used by the AppGateway.
  /// Default value is `HOST_TYPE_UNSPECIFIED`.
  /// Possible values are: `HOST_TYPE_UNSPECIFIED`, `GCP_REGIONAL_MIG`.
  final pulumi.Input<String>? hostType;
  /// Resource labels to represent user provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// ID of the AppGateway.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The region of the AppGateway.
  final pulumi.Input<String>? region;
  /// Represents the different states of a AppGateway.
  final pulumi.Input<String>? state;
  /// The type of network connectivity used by the AppGateway.
  /// Default value is `TYPE_UNSPECIFIED`.
  /// Possible values are: `TYPE_UNSPECIFIED`, `TCP_PROXY`.
  final pulumi.Input<String>? type;
  /// Server-defined URI for this resource.
  final pulumi.Input<String>? uri;

  /// Creates a new [AppGatewayState].
  /// [allocatedConnections] A list of connections allocated for the Gateway.
  /// [displayName] An arbitrary user-provided name for the AppGateway.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [hostType] The type of hosting used by the AppGateway.
  /// [labels] Resource labels to represent user provided metadata.
  /// [name] ID of the AppGateway.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [region] The region of the AppGateway.
  /// [state] Represents the different states of a AppGateway.
  /// [type] The type of network connectivity used by the AppGateway.
  /// [uri] Server-defined URI for this resource.
  AppGatewayState({
    pulumi.Output<List<AppGatewayAllocatedConnection>>? allocatedConnections,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? hostType,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? region,
    pulumi.Output<String>? state,
    pulumi.Output<String>? type,
    pulumi.Output<String>? uri,
  }) :
      allocatedConnections = pulumi.Input.asOptionalInput<List<AppGatewayAllocatedConnection>>(allocatedConnections),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      hostType = pulumi.Input.asOptionalInput<String>(hostType),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      region = pulumi.Input.asOptionalInput<String>(region),
      state = pulumi.Input.asOptionalInput<String>(state),
      type = pulumi.Input.asOptionalInput<String>(type),
      uri = pulumi.Input.asOptionalInput<String>(uri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedConnections': ?pulumi.Input.mapOptionalInputValue<List<AppGatewayAllocatedConnection>, List<Map<String, dynamic>>>(allocatedConnections, (value) => pulumi.Input.encodeList<AppGatewayAllocatedConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'hostType': ?hostType,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'state': ?state,
      'type': ?type,
      'uri': ?uri,
    };
  }

  factory AppGatewayState.fromMap(Map<String, dynamic> map) {
    return AppGatewayState(
      allocatedConnections: map['allocatedConnections'] == null ? null : pulumi.Output.create<List<AppGatewayAllocatedConnection>>(pulumi.Input.decodeList<AppGatewayAllocatedConnection>(map['allocatedConnections'], (value) => AppGatewayAllocatedConnection.fromMap((value as Map).cast<String, dynamic>()))),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      hostType: map['hostType'] == null ? null : pulumi.Output.create<String>(map['hostType'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      uri: map['uri'] == null ? null : pulumi.Output.create<String>(map['uri'] as String),
    );
  }
}

