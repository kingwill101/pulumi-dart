// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CloudExadataInfrastructureExascaleConfig resources.
class CloudExadataInfrastructureExascaleConfigState {
  /// A reference to CloudExadataInfrastructure resource
  final pulumi.Input<String?>? cloudExadataInfrastructure;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// (Required)
  final pulumi.Input<String?>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The total storage to be allocated to Exascale in GBs.
  final pulumi.Input<int?>? totalStorageSizeGb;
  /// Storage size needed for VM storage on Exascale in GBs.
  final pulumi.Input<int?>? totalVmStorageSizeGb;

  /// Creates a new [CloudExadataInfrastructureExascaleConfigState].
  /// [cloudExadataInfrastructure] A reference to CloudExadataInfrastructure resource
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [location] (Required)
  /// [project] The ID of the project in which the resource belongs.
  /// [totalStorageSizeGb] The total storage to be allocated to Exascale in GBs.
  /// [totalVmStorageSizeGb] Storage size needed for VM storage on Exascale in GBs.
  const CloudExadataInfrastructureExascaleConfigState({
    this.cloudExadataInfrastructure,
    this.deletionPolicy,
    this.location,
    this.project,
    this.totalStorageSizeGb,
    this.totalVmStorageSizeGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudExadataInfrastructure': ?cloudExadataInfrastructure,
      'deletionPolicy': ?deletionPolicy,
      'location': ?location,
      'project': ?project,
      'totalStorageSizeGb': ?totalStorageSizeGb,
      'totalVmStorageSizeGb': ?totalVmStorageSizeGb,
    };
  }

  factory CloudExadataInfrastructureExascaleConfigState.fromMap(Map<String, dynamic> map) {
    return CloudExadataInfrastructureExascaleConfigState(
      cloudExadataInfrastructure: (() { final guardedValue = map['cloudExadataInfrastructure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      totalStorageSizeGb: (() { final guardedValue = map['totalStorageSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      totalVmStorageSizeGb: (() { final guardedValue = map['totalVmStorageSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
