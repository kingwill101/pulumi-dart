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
      'allocatedConnections':
          ?pulumi.Input.mapOptionalInputValue<
            List<AppGatewayAllocatedConnection>,
            List<Map<String, dynamic>>
          >(
            allocatedConnections,
            (value) =>
                pulumi.Input.encodeList<
                  AppGatewayAllocatedConnection,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      allocatedConnections: (() {
        final guardedValue = map['allocatedConnections'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AppGatewayAllocatedConnection>(
            guardedValue,
            (value) => AppGatewayAllocatedConnection.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      effectiveLabels: (() {
        final guardedValue = map['effectiveLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      hostType: (() {
        final guardedValue = map['hostType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pulumiLabels: (() {
        final guardedValue = map['pulumiLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      uri: (() {
        final guardedValue = map['uri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
