// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'goldengate_deployment_properties.dart';

/// {@template pulumi_oracledatabase_goldengate_deployment_goldengate_deployment_args_doc}
/// The set of arguments for GoldengateDeployment.
/// {@endtemplate}
/// {@macro pulumi_oracledatabase_goldengate_deployment_goldengate_deployment_args_doc}
class GoldengateDeploymentArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to PREVENT.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The display name for the GoldengateDeployment.
  final pulumi.Input<String> displayName;
  /// The GCP Oracle zone where Oracle GoldengateDeployment is hosted.
  /// Example: us-east4-b-r2.
  /// If not specified, the system will pick a zone based on availability.
  final pulumi.Input<String?>? gcpOracleZone;
  /// The ID of the GoldengateDeployment to create. This value is
  /// restricted to (^a-z?$) and must be a maximum of
  /// 63 characters in length. The value must start with a letter and end with a
  /// letter or a number.
  final pulumi.Input<String> goldengateDeploymentId;
  /// The labels or tags associated with the GoldengateDeployment.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The name of the OdbNetwork associated with the GoldengateDeployment.
  final pulumi.Input<String?>? odbNetwork;
  /// The name of the OdbSubnet associated with the GoldengateDeployment for IP
  /// allocation.
  final pulumi.Input<String> odbSubnet;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Properties of GoldengateDeployment.
  /// Structure is documented below.
  final pulumi.Input<GoldengateDeploymentProperties> properties;

  /// Creates a new [GoldengateDeploymentArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to PREVENT.
  /// [displayName] The display name for the GoldengateDeployment.
  /// [gcpOracleZone] The GCP Oracle zone where Oracle GoldengateDeployment is hosted.
  /// [goldengateDeploymentId] The ID of the GoldengateDeployment to create. This value is
  /// [labels] The labels or tags associated with the GoldengateDeployment.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [odbNetwork] The name of the OdbNetwork associated with the GoldengateDeployment.
  /// [odbSubnet] The name of the OdbSubnet associated with the GoldengateDeployment for IP
  /// [project] The ID of the project in which the resource belongs.
  /// [properties] Properties of GoldengateDeployment.
  const GoldengateDeploymentArgs({
    this.deletionPolicy,
    required this.displayName,
    this.gcpOracleZone,
    required this.goldengateDeploymentId,
    this.labels,
    required this.location,
    this.odbNetwork,
    required this.odbSubnet,
    this.project,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'displayName': displayName,
      'gcpOracleZone': ?gcpOracleZone,
      'goldengateDeploymentId': goldengateDeploymentId,
      'labels': ?labels,
      'location': location,
      'odbNetwork': ?odbNetwork,
      'odbSubnet': odbSubnet,
      'project': ?project,
      'properties': pulumi.Input.mapInputValue<GoldengateDeploymentProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory GoldengateDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return GoldengateDeploymentArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      gcpOracleZone: (() { final guardedValue = map['gcpOracleZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      goldengateDeploymentId: pulumi.Input.fromValue(map['goldengateDeploymentId'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      odbNetwork: (() { final guardedValue = map['odbNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      odbSubnet: pulumi.Input.fromValue(map['odbSubnet'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: pulumi.Input.fromValue(GoldengateDeploymentProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
    );
  }
}
