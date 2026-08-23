// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_connection_error.dart';
import 'private_connection_psc_interface_config.dart';
import 'private_connection_vpc_peering_config.dart';

/// Input properties used for looking up and filtering PrivateConnection resources.
class PrivateConnectionState {
  /// If set to true, will skip validations.
  final pulumi.Input<bool>? createWithoutValidation;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Display name.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The PrivateConnection error in case of failure.
  /// Structure is documented below.
  final pulumi.Input<List<PrivateConnectionError>>? errors;
  /// Labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
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
  /// The PSC Interface configuration is used to create PSC Interface
  /// between DMS's internal VPC and the consumer's PSC.
  /// Structure is documented below.
  final pulumi.Input<PrivateConnectionPscInterfaceConfig>? pscInterfaceConfig;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Display name.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [errors] The PrivateConnection error in case of failure.
  /// [labels] Labels.
  /// [location] The name of the location this private connection is located in.
  /// [name] The resource's name.
  /// [privateConnectionId] The private connectivity identifier.
  /// [project] The ID of the project in which the resource belongs.
  /// [pscInterfaceConfig] The PSC Interface configuration is used to create PSC Interface
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [state] State of the PrivateConnection.
  /// [vpcPeeringConfig] The VPC Peering configuration is used to create VPC peering
  const PrivateConnectionState({
    this.createWithoutValidation,
    this.deletionPolicy,
    this.displayName,
    this.effectiveLabels,
    this.errors,
    this.labels,
    this.location,
    this.name,
    this.privateConnectionId,
    this.project,
    this.pscInterfaceConfig,
    this.pulumiLabels,
    this.state,
    this.vpcPeeringConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createWithoutValidation': ?createWithoutValidation,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'errors': ?pulumi.Input.mapOptionalInputValue<List<PrivateConnectionError>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<PrivateConnectionError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'privateConnectionId': ?privateConnectionId,
      'project': ?project,
      'pscInterfaceConfig': ?pulumi.Input.mapOptionalInputValue<PrivateConnectionPscInterfaceConfig, Map<String, dynamic>>(pscInterfaceConfig, (value) => value.toMap()),
      'pulumiLabels': ?pulumiLabels,
      'state': ?state,
      'vpcPeeringConfig': ?pulumi.Input.mapOptionalInputValue<PrivateConnectionVpcPeeringConfig, Map<String, dynamic>>(vpcPeeringConfig, (value) => value.toMap()),
    };
  }

  factory PrivateConnectionState.fromMap(Map<String, dynamic> map) {
    return PrivateConnectionState(
      createWithoutValidation: (() { final guardedValue = map['createWithoutValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateConnectionError>(guardedValue, (value) => PrivateConnectionError.fromMap((value as Map).cast<String, dynamic>()))); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateConnectionId: (() { final guardedValue = map['privateConnectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pscInterfaceConfig: (() { final guardedValue = map['pscInterfaceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateConnectionPscInterfaceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcPeeringConfig: (() { final guardedValue = map['vpcPeeringConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateConnectionVpcPeeringConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
