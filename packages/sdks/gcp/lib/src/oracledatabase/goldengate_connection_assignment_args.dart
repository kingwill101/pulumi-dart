// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'goldengate_connection_assignment_properties.dart';

/// {@template pulumi_oracledatabase_goldengate_connection_assignment_goldengate_connection_assignment_args_doc}
/// The set of arguments for GoldengateConnectionAssignment.
/// {@endtemplate}
/// {@macro pulumi_oracledatabase_goldengate_connection_assignment_goldengate_connection_assignment_args_doc}
class GoldengateConnectionAssignmentArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Whether or not to allow Terraform to destroy the instance. Unless this field is set to false in Terraform state, a terraform destroy or pulumi up that would delete the instance will fail.
  final pulumi.Input<bool>? deletionProtection;
  /// The display name for the GoldengateConnectionAssignment.
  final pulumi.Input<String>? displayName;
  /// The ID of the GoldengateConnectionAssignment to create.
  final pulumi.Input<String> goldengateConnectionAssignmentId;
  /// The labels or tags associated with the GoldengateConnectionAssignment.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The properties of a GoldengateConnectionAssignment.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionAssignmentProperties> properties;

  /// Creates a new [GoldengateConnectionAssignmentArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [deletionProtection] Whether or not to allow Terraform to destroy the instance. Unless this field is set to false in Terraform state, a terraform destroy or pulumi up that would delete the instance will fail.
  /// [displayName] The display name for the GoldengateConnectionAssignment.
  /// [goldengateConnectionAssignmentId] The ID of the GoldengateConnectionAssignment to create.
  /// [labels] The labels or tags associated with the GoldengateConnectionAssignment.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  /// [properties] The properties of a GoldengateConnectionAssignment.
  const GoldengateConnectionAssignmentArgs({
    this.deletionPolicy,
    this.deletionProtection,
    this.displayName,
    required this.goldengateConnectionAssignmentId,
    this.labels,
    required this.location,
    this.project,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'displayName': ?displayName,
      'goldengateConnectionAssignmentId': goldengateConnectionAssignmentId,
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'properties': pulumi.Input.mapInputValue<GoldengateConnectionAssignmentProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory GoldengateConnectionAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionAssignmentArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      goldengateConnectionAssignmentId: pulumi.Input.fromValue(map['goldengateConnectionAssignmentId'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: pulumi.Input.fromValue(GoldengateConnectionAssignmentProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
    );
  }
}
