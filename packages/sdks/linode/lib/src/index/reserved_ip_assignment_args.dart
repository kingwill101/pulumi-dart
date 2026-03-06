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
  const ReservedIpAssignmentArgs({
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
      address: pulumi.Input.fromValue(map['address'] as String),
      applyImmediately: (() { final guardedValue = map['applyImmediately']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      linodeId: pulumi.Input.fromValue(map['linodeId'] as int),
      public: (() { final guardedValue = map['public']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rdns: (() { final guardedValue = map['rdns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

