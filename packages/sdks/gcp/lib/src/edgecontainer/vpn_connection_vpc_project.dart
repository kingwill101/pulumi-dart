// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpnConnectionVpcProject {
  /// The project of the VPC to connect to. If not specified, it is the same as the cluster project.
  final pulumi.Input<String>? projectId;

  /// Creates a new [VpnConnectionVpcProject].
  /// [projectId] The project of the VPC to connect to. If not specified, it is the same as the cluster project.
  VpnConnectionVpcProject({
    this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectId': ?projectId,
    };
  }

  factory VpnConnectionVpcProject.fromMap(Map<String, dynamic> map) {
    return VpnConnectionVpcProject(
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

