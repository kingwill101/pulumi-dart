// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorSubnet {
  /// Subnet name (relative, not fully qualified). E.g. if the full subnet selfLink is
  /// https://compute.googleapis.com/compute/v1/projects/{project}/regions/{region}/subnetworks/{subnetName} the correct input for this field would be {subnetName}"
  final pulumi.Input<String>? name;
  /// Project in which the subnet exists. If not set, this project is assumed to be the project for which the connector create request was issued.
  final pulumi.Input<String>? projectId;

  /// Creates a new [ConnectorSubnet].
  /// [name] Subnet name (relative, not fully qualified). E.g. if the full subnet selfLink is
  /// [projectId] Project in which the subnet exists. If not set, this project is assumed to be the project for which the connector create request was issued.
  const ConnectorSubnet({
    this.name,
    this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'projectId': ?projectId,
    };
  }

  factory ConnectorSubnet.fromMap(Map<String, dynamic> map) {
    return ConnectorSubnet(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
