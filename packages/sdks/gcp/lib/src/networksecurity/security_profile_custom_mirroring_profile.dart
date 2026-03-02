// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityProfileCustomMirroringProfile {
  /// The target downstream Mirroring Deployment Groups.
  /// This field is used for Packet Broker mirroring endpoint groups to specify
  /// the deployment groups that the packet should be mirrored to by the broker.
  /// Format: projects/{project_id}/locations/global/mirroringDeploymentGroups/{deployment_group_id}
  final pulumi.Input<List<String>>? mirroringDeploymentGroups;
  /// The target Mirroring Endpoint Group.
  /// When a mirroring rule with this security profile attached matches a packet,
  /// a replica will be mirrored to the location-local target in this group.
  /// Format: projects/{project_id}/locations/global/mirroringEndpointGroups/{endpoint_group_id}
  final pulumi.Input<String> mirroringEndpointGroup;
  /// (Output, Beta)
  /// The type of the mirroring endpoint group this profile is attached to.
  /// Possible values:
  /// DIRECT
  /// BROKER
  final pulumi.Input<String>? mirroringEndpointGroupType;

  /// Creates a new [SecurityProfileCustomMirroringProfile].
  /// [mirroringDeploymentGroups] The target downstream Mirroring Deployment Groups.
  /// [mirroringEndpointGroup] The target Mirroring Endpoint Group.
  /// [mirroringEndpointGroupType] (Output, Beta)
  SecurityProfileCustomMirroringProfile({
    this.mirroringDeploymentGroups,
    required this.mirroringEndpointGroup,
    this.mirroringEndpointGroupType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mirroringDeploymentGroups': ?mirroringDeploymentGroups,
      'mirroringEndpointGroup': mirroringEndpointGroup,
      'mirroringEndpointGroupType': ?mirroringEndpointGroupType,
    };
  }

  factory SecurityProfileCustomMirroringProfile.fromMap(Map<String, dynamic> map) {
    return SecurityProfileCustomMirroringProfile(
      mirroringDeploymentGroups: map['mirroringDeploymentGroups'] == null ? null : ((map['mirroringDeploymentGroups'] as List).cast<String>()).input(),
      mirroringEndpointGroup: (map['mirroringEndpointGroup'] as String).input(),
      mirroringEndpointGroupType: map['mirroringEndpointGroupType'] == null ? null : (map['mirroringEndpointGroupType'] as String).input(),
    );
  }
}

