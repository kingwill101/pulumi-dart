// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_connection_error.dart';
import 'private_connection_vpc_peering_config.dart';

/// Input properties used for looking up and filtering PrivateConnection resources.
class PrivateConnectionState {
  /// If set to true, will skip validations.
  final pulumi.Input<bool>? createWithoutValidation;
  /// Display name.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The PrivateConnection error in case of failure.
  /// Structure is documented below.
  final pulumi.Input<List<PrivateConnectionError>>? errors;
  /// Labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The name of the location this private connection is located in.
  final pulumi.Input<String>? location;
  /// The resource's name.
  final pulumi.Input<String>? name;
  /// The private connectivity identifier.
  final pulumi.Input<String>? privateConnectionId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// State of the PrivateConnection.
  final pulumi.Input<String>? state;
  /// The VPC Peering configuration is used to create VPC peering
  /// between databasemigrationservice and the consumer's VPC.
  /// Structure is documented below.
  final pulumi.Input<PrivateConnectionVpcPeeringConfig>? vpcPeeringConfig;

  /// Creates a new [PrivateConnectionState].
  /// [createWithoutValidation] If set to true, will skip validations.
  /// [displayName] Display name.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [errors] The PrivateConnection error in case of failure.
  /// [labels] Labels.
  /// [location] The name of the location this private connection is located in.
  /// [name] The resource's name.
  /// [privateConnectionId] The private connectivity identifier.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [state] State of the PrivateConnection.
  /// [vpcPeeringConfig] The VPC Peering configuration is used to create VPC peering
  PrivateConnectionState({
    this.createWithoutValidation,
    this.displayName,
    this.effectiveLabels,
    this.errors,
    this.labels,
    this.location,
    this.name,
    this.privateConnectionId,
    this.project,
    this.pulumiLabels,
    this.state,
    this.vpcPeeringConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createWithoutValidation': ?createWithoutValidation,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'errors': ?pulumi.Input.mapOptionalInputValue<List<PrivateConnectionError>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<PrivateConnectionError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'privateConnectionId': ?privateConnectionId,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'state': ?state,
      'vpcPeeringConfig': ?pulumi.Input.mapOptionalInputValue<PrivateConnectionVpcPeeringConfig, Map<String, dynamic>>(vpcPeeringConfig, (value) => value.toMap()),
    };
  }

  factory PrivateConnectionState.fromMap(Map<String, dynamic> map) {
    return PrivateConnectionState(
      createWithoutValidation: map['createWithoutValidation'] == null ? null : (map['createWithoutValidation'] as bool).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      errors: map['errors'] == null ? null : (pulumi.Input.decodeList<PrivateConnectionError>(map['errors'], (value) => PrivateConnectionError.fromMap((value as Map).cast<String, dynamic>()))).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      privateConnectionId: map['privateConnectionId'] == null ? null : (map['privateConnectionId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      vpcPeeringConfig: map['vpcPeeringConfig'] == null ? null : (PrivateConnectionVpcPeeringConfig.fromMap((map['vpcPeeringConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

