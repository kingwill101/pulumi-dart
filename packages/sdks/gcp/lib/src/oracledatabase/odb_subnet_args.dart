// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracledatabase_odb_subnet_odb_subnet_args_doc}
/// The set of arguments for OdbSubnet.
/// {@endtemplate}
/// {@macro pulumi_oracledatabase_odb_subnet_odb_subnet_args_doc}
class OdbSubnetArgs {
  /// The CIDR range of the subnet.
  final pulumi.Input<String> cidrRange;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Whether or not to allow Terraform to destroy the instance. Unless this field is set to false in Terraform state, a terraform destroy or pulumi up that would delete the instance will fail.
  final pulumi.Input<bool>? deletionProtection;
  /// Labels or tags associated with the resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the OdbSubnet to create. This value is restricted
  /// to (^a-z?$) and must be a maximum of 63
  /// characters in length. The value must start with a letter and end with
  /// a letter or a number.
  final pulumi.Input<String> odbSubnetId;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> odbnetwork;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Purpose of the subnet.
  /// Possible values:
  /// CLIENT_SUBNET
  /// BACKUP_SUBNET
  final pulumi.Input<String> purpose;

  /// Creates a new [OdbSubnetArgs].
  /// [cidrRange] The CIDR range of the subnet.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [deletionProtection] Whether or not to allow Terraform to destroy the instance. Unless this field is set to false in Terraform state, a terraform destroy or pulumi up that would delete the instance will fail.
  /// [labels] Labels or tags associated with the resource.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [odbSubnetId] The ID of the OdbSubnet to create. This value is restricted
  /// [odbnetwork] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  /// [purpose] Purpose of the subnet.
  const OdbSubnetArgs({
    required this.cidrRange,
    this.deletionPolicy,
    this.deletionProtection,
    this.labels,
    required this.location,
    required this.odbSubnetId,
    required this.odbnetwork,
    this.project,
    required this.purpose,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrRange': cidrRange,
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'labels': ?labels,
      'location': location,
      'odbSubnetId': odbSubnetId,
      'odbnetwork': odbnetwork,
      'project': ?project,
      'purpose': purpose,
    };
  }

  factory OdbSubnetArgs.fromMap(Map<String, dynamic> map) {
    return OdbSubnetArgs(
      cidrRange: pulumi.Input.fromValue(map['cidrRange'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      odbSubnetId: pulumi.Input.fromValue(map['odbSubnetId'] as String),
      odbnetwork: pulumi.Input.fromValue(map['odbnetwork'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      purpose: pulumi.Input.fromValue(map['purpose'] as String),
    );
  }
}
