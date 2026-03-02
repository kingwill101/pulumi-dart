// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_floating_ip_assignment_floating_ip_assignment_args_doc}
/// The set of arguments for FloatingIpAssignment.
/// {@endtemplate}
/// {@macro pulumi_index_floating_ip_assignment_floating_ip_assignment_args_doc}
class FloatingIpAssignmentArgs {
  /// ID of the Floating IP.
  final pulumi.Input<int> floatingIpId;
  /// Server to assign the Floating IP to.
  final pulumi.Input<int> serverId;

  /// Creates a new [FloatingIpAssignmentArgs].
  /// [floatingIpId] ID of the Floating IP.
  /// [serverId] Server to assign the Floating IP to.
  FloatingIpAssignmentArgs({
    required this.floatingIpId,
    required this.serverId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'floatingIpId': floatingIpId,
      'serverId': serverId,
    };
  }

  factory FloatingIpAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return FloatingIpAssignmentArgs(
      floatingIpId: (map['floatingIpId'] as int).input(),
      serverId: (map['serverId'] as int).input(),
    );
  }
}

