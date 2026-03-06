// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_floating_ip_assignment_floating_ip_assignment_args_doc}
/// The set of arguments for FloatingIpAssignment.
/// {@endtemplate}
/// {@macro pulumi_index_floating_ip_assignment_floating_ip_assignment_args_doc}
class FloatingIpAssignmentArgs {
  /// The ID of Droplet that the Floating IP will be assigned to.
  final pulumi.Input<int> dropletId;
  /// The Floating IP to assign to the Droplet.
  final pulumi.Input<String> ipAddress;

  /// Creates a new [FloatingIpAssignmentArgs].
  /// [dropletId] The ID of Droplet that the Floating IP will be assigned to.
  /// [ipAddress] The Floating IP to assign to the Droplet.
  const FloatingIpAssignmentArgs({
    required this.dropletId,
    required this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropletId': dropletId,
      'ipAddress': ipAddress,
    };
  }

  factory FloatingIpAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return FloatingIpAssignmentArgs(
      dropletId: pulumi.Input.fromValue(map['dropletId'] as int),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
    );
  }
}

