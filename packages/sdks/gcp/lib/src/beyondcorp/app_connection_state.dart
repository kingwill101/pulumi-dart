// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_connection_application_endpoint.dart';
import 'app_connection_gateway.dart';

/// Input properties used for looking up and filtering AppConnection resources.
class AppConnectionState {
  /// Address of the remote application endpoint for the BeyondCorp AppConnection.
  /// Structure is documented below.
  final pulumi.Input<AppConnectionApplicationEndpoint?>? applicationEndpoint;
  /// List of AppConnectors that are authorised to be associated with this AppConnection
  final pulumi.Input<List<String>?>? connectors;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// An arbitrary user-provided name for the AppConnection.
  final pulumi.Input<String?>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// Gateway used by the AppConnection.
  /// Structure is documented below.
  final pulumi.Input<AppConnectionGateway?>? gateway;
  /// Resource labels to represent user provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// ID of the AppConnection.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// The region of the AppConnection.
  final pulumi.Input<String?>? region;
  /// The type of network connectivity used by the AppConnection. Refer
  /// to https://cloud.google.com/beyondcorp/docs/reference/rest/v1/projects.locations.appConnections#type
  /// for a list of possible values.
  final pulumi.Input<String?>? type;

  /// Creates a new [AppConnectionState].
  /// [applicationEndpoint] Address of the remote application endpoint for the BeyondCorp AppConnection.
  /// [connectors] List of AppConnectors that are authorised to be associated with this AppConnection
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] An arbitrary user-provided name for the AppConnection.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [gateway] Gateway used by the AppConnection.
  /// [labels] Resource labels to represent user provided metadata.
  /// [name] ID of the AppConnection.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [region] The region of the AppConnection.
  /// [type] The type of network connectivity used by the AppConnection. Refer
  const AppConnectionState({
    this.applicationEndpoint,
    this.connectors,
    this.deletionPolicy,
    this.displayName,
    this.effectiveLabels,
    this.gateway,
    this.labels,
    this.name,
    this.project,
    this.pulumiLabels,
    this.region,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationEndpoint': ?pulumi.Input.mapOptionalInputValue<AppConnectionApplicationEndpoint, Map<String, dynamic>>(applicationEndpoint, (value) => value.toMap()),
      'connectors': ?connectors,
      'deletionPolicy': ?deletionPolicy,
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
      applicationEndpoint: (() { final guardedValue = map['applicationEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppConnectionApplicationEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectors: (() { final guardedValue = map['connectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      gateway: (() { final guardedValue = map['gateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppConnectionGateway.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
