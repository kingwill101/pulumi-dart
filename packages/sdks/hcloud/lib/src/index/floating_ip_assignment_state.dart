// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FloatingIpAssignment resources.
class FloatingIpAssignmentState {
  /// ID of the Floating IP.
  final pulumi.Input<int>? floatingIpId;
  /// Server to assign the Floating IP to.
  final pulumi.Input<int>? serverId;

  /// Creates a new [FloatingIpAssignmentState].
  /// [floatingIpId] ID of the Floating IP.
  /// [serverId] Server to assign the Floating IP to.
  FloatingIpAssignmentState({
    pulumi.Output<int>? floatingIpId,
    pulumi.Output<int>? serverId,
  }) :
      floatingIpId = pulumi.Input.asOptionalInput<int>(floatingIpId),
      serverId = pulumi.Input.asOptionalInput<int>(serverId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'floatingIpId': ?floatingIpId,
      'serverId': ?serverId,
    };
  }

  factory FloatingIpAssignmentState.fromMap(Map<String, dynamic> map) {
    return FloatingIpAssignmentState(
      floatingIpId: map['floatingIpId'] == null ? null : pulumi.Output.create<int>(map['floatingIpId'] as int),
      serverId: map['serverId'] == null ? null : pulumi.Output.create<int>(map['serverId'] as int),
    );
  }
}

