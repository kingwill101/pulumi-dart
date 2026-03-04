// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_reserved_ipv6_assignment_reserved_ipv6_assignment_args_doc}
/// The set of arguments for ReservedIpv6Assignment.
/// {@endtemplate}
/// {@macro pulumi_index_reserved_ipv6_assignment_reserved_ipv6_assignment_args_doc}
class ReservedIpv6AssignmentArgs {
  /// The ID of Droplet that the reserved IPv6 will be assigned to.
  final pulumi.Input<int> dropletId;

  /// The reserved IPv6 to assign to the Droplet.
  final pulumi.Input<String> ip;

  /// Creates a new [ReservedIpv6AssignmentArgs].
  /// [dropletId] The ID of Droplet that the reserved IPv6 will be assigned to.
  /// [ip] The reserved IPv6 to assign to the Droplet.
  ReservedIpv6AssignmentArgs({required this.dropletId, required this.ip});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'dropletId': dropletId, 'ip': ip};
  }

  factory ReservedIpv6AssignmentArgs.fromMap(Map<String, dynamic> map) {
    return ReservedIpv6AssignmentArgs(
      dropletId: pulumi.Input.fromValue(map['dropletId'] as int),
      ip: pulumi.Input.fromValue(map['ip'] as String),
    );
  }
}
