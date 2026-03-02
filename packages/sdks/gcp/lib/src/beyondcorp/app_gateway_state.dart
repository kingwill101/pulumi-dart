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
    this.allocatedConnections,
    this.displayName,
    this.effectiveLabels,
    this.hostType,
    this.labels,
    this.name,
    this.project,
    this.pulumiLabels,
    this.region,
    this.state,
    this.type,
    this.uri,
  });

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
      allocatedConnections: map['allocatedConnections'] == null ? null : (pulumi.Input.decodeList<AppGatewayAllocatedConnection>(map['allocatedConnections']!, (value) => AppGatewayAllocatedConnection.fromMap((value as Map).cast<String, dynamic>()))).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      hostType: map['hostType'] == null ? null : (map['hostType']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      uri: map['uri'] == null ? null : (map['uri']! as String).input(),
    );
  }
}

