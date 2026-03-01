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
    pulumi.Output<bool>? createWithoutValidation,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<List<PrivateConnectionError>>? errors,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? privateConnectionId,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? state,
    pulumi.Output<PrivateConnectionVpcPeeringConfig>? vpcPeeringConfig,
  }) :
      createWithoutValidation = pulumi.Input.asOptionalInput<bool>(createWithoutValidation),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      errors = pulumi.Input.asOptionalInput<List<PrivateConnectionError>>(errors),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      privateConnectionId = pulumi.Input.asOptionalInput<String>(privateConnectionId),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      state = pulumi.Input.asOptionalInput<String>(state),
      vpcPeeringConfig = pulumi.Input.asOptionalInput<PrivateConnectionVpcPeeringConfig>(vpcPeeringConfig);

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
      createWithoutValidation: map['createWithoutValidation'] == null ? null : pulumi.Output.create<bool>(map['createWithoutValidation'] as bool),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      errors: map['errors'] == null ? null : pulumi.Output.create<List<PrivateConnectionError>>(pulumi.Input.decodeList<PrivateConnectionError>(map['errors'], (value) => PrivateConnectionError.fromMap((value as Map).cast<String, dynamic>()))),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      privateConnectionId: map['privateConnectionId'] == null ? null : pulumi.Output.create<String>(map['privateConnectionId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      vpcPeeringConfig: map['vpcPeeringConfig'] == null ? null : pulumi.Output.create<PrivateConnectionVpcPeeringConfig>(PrivateConnectionVpcPeeringConfig.fromMap((map['vpcPeeringConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

