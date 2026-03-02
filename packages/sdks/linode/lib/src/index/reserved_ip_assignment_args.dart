// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_reserved_ip_assignment_reserved_ip_assignment_args_doc}
/// The set of arguments for ReservedIpAssignment.
/// {@endtemplate}
/// {@macro pulumi_index_reserved_ip_assignment_reserved_ip_assignment_args_doc}
class ReservedIpAssignmentArgs {
  /// The resulting IPv4 address.
  final pulumi.Input<String> address;
  /// If true, the instance will be rebooted to update network interfaces. This functionality is not affected by the `skip_implicit_reboots` provider argument.
  final pulumi.Input<bool>? applyImmediately;
  /// The ID of the Linode to allocate an IPv4 address for.
  final pulumi.Input<int> linodeId;
  /// Whether the IPv4 address is public or private.
  final pulumi.Input<bool>? public;
  /// The reverse DNS assigned to this address.
  final pulumi.Input<String>? rdns;

  /// Creates a new [ReservedIpAssignmentArgs].
  /// [address] The resulting IPv4 address.
  /// [applyImmediately] If true, the instance will be rebooted to update network interfaces. This functionality is not affected by the `skip_implicit_reboots` provider argument.
  /// [linodeId] The ID of the Linode to allocate an IPv4 address for.
  /// [public] Whether the IPv4 address is public or private.
  /// [rdns] The reverse DNS assigned to this address.
  ReservedIpAssignmentArgs({
    required this.address,
    this.applyImmediately,
    required this.linodeId,
    this.public,
    this.rdns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'applyImmediately': ?applyImmediately,
      'linodeId': linodeId,
      'public': ?public,
      'rdns': ?rdns,
    };
  }

  factory ReservedIpAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return ReservedIpAssignmentArgs(
      address: (map['address'] as String).input(),
      applyImmediately: map['applyImmediately'] == null ? null : (map['applyImmediately'] as bool).input(),
      linodeId: (map['linodeId'] as int).input(),
      public: map['public'] == null ? null : (map['public'] as bool).input(),
      rdns: map['rdns'] == null ? null : (map['rdns'] as String).input(),
    );
  }
}

