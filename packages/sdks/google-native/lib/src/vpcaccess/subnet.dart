// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The subnet in which to house the connector
class Subnet {
  /// Subnet name (relative, not fully qualified). E.g. if the full subnet selfLink is https://compute.googleapis.com/compute/v1/projects/{project}/regions/{region}/subnetworks/{subnetName} the correct input for this field would be {subnetName}
  final pulumi.Input<String>? name;

  /// Project in which the subnet exists. If not set, this project is assumed to be the project for which the connector create request was issued.
  final pulumi.Input<String>? project;

  /// Creates a new [Subnet].
  /// [name] Subnet name (relative, not fully qualified). E.g. if the full subnet selfLink is https://compute.googleapis.com/compute/v1/projects/{project}/regions/{region}/subnetworks/{subnetName} the correct input for this field would be {subnetName}
  /// [project] Project in which the subnet exists. If not set, this project is assumed to be the project for which the connector create request was issued.
  Subnet({this.name, this.project});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'project': ?project};
  }

  factory Subnet.fromMap(Map<String, dynamic> map) {
    return Subnet(
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
    );
  }
}
