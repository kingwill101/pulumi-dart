// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_connection_application_endpoint.dart';
import 'app_connection_gateway.dart';

/// Input properties used for looking up and filtering AppConnection resources.
class AppConnectionState {
  /// Address of the remote application endpoint for the BeyondCorp AppConnection.
  /// Structure is documented below.
  final pulumi.Input<AppConnectionApplicationEndpoint>? applicationEndpoint;
  /// List of AppConnectors that are authorised to be associated with this AppConnection
  final pulumi.Input<List<String>>? connectors;
  /// An arbitrary user-provided name for the AppConnection.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Gateway used by the AppConnection.
  /// Structure is documented below.
  final pulumi.Input<AppConnectionGateway>? gateway;
  /// Resource labels to represent user provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// ID of the AppConnection.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The region of the AppConnection.
  final pulumi.Input<String>? region;
  /// The type of network connectivity used by the AppConnection. Refer
  /// to https://cloud.google.com/beyondcorp/docs/reference/rest/v1/projects.locations.appConnections#type
  /// for a list of possible values.
  final pulumi.Input<String>? type;

  /// Creates a new [AppConnectionState].
  /// [applicationEndpoint] Address of the remote application endpoint for the BeyondCorp AppConnection.
  /// [connectors] List of AppConnectors that are authorised to be associated with this AppConnection
  /// [displayName] An arbitrary user-provided name for the AppConnection.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [gateway] Gateway used by the AppConnection.
  /// [labels] Resource labels to represent user provided metadata.
  /// [name] ID of the AppConnection.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [region] The region of the AppConnection.
  /// [type] The type of network connectivity used by the AppConnection. Refer
  AppConnectionState({
    pulumi.Output<AppConnectionApplicationEndpoint>? applicationEndpoint,
    pulumi.Output<List<String>>? connectors,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<AppConnectionGateway>? gateway,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? region,
    pulumi.Output<String>? type,
  }) :
      applicationEndpoint = pulumi.Input.asOptionalInput<AppConnectionApplicationEndpoint>(applicationEndpoint),
      connectors = pulumi.Input.asOptionalInput<List<String>>(connectors),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      gateway = pulumi.Input.asOptionalInput<AppConnectionGateway>(gateway),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      region = pulumi.Input.asOptionalInput<String>(region),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationEndpoint': ?pulumi.Input.mapOptionalInputValue<AppConnectionApplicationEndpoint, Map<String, dynamic>>(applicationEndpoint, (value) => value.toMap()),
      'connectors': ?connectors,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'gateway': ?pulumi.Input.mapOptionalInputValue<AppConnectionGateway, Map<String, dynamic>>(gateway, (value) => value.toMap()),
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'type': ?type,
    };
  }

  factory AppConnectionState.fromMap(Map<String, dynamic> map) {
    return AppConnectionState(
      applicationEndpoint: map['applicationEndpoint'] == null ? null : pulumi.Output.create<AppConnectionApplicationEndpoint>(AppConnectionApplicationEndpoint.fromMap((map['applicationEndpoint'] as Map).cast<String, dynamic>())),
      connectors: map['connectors'] == null ? null : pulumi.Output.create<List<String>>((map['connectors'] as List).cast<String>()),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      gateway: map['gateway'] == null ? null : pulumi.Output.create<AppConnectionGateway>(AppConnectionGateway.fromMap((map['gateway'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

