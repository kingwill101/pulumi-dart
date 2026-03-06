// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_instance_ip_instance_ip_args_doc}
/// The set of arguments for InstanceIp.
/// {@endtemplate}
/// {@macro pulumi_index_instance_ip_instance_ip_args_doc}
class InstanceIpArgs {
  /// If true, the instance will be rebooted to update network interfaces.
  final pulumi.Input<bool>? applyImmediately;
  /// The ID of the Linode to allocate an IPv4 address for.
  final pulumi.Input<int> linodeId;
  /// Whether the IPv4 address is public or private. Defaults to true.
  final pulumi.Input<bool>? public;
  /// The reverse DNS assigned to this address.
  final pulumi.Input<String>? rdns;

  /// Creates a new [InstanceIpArgs].
  /// [applyImmediately] If true, the instance will be rebooted to update network interfaces.
  /// [linodeId] The ID of the Linode to allocate an IPv4 address for.
  /// [public] Whether the IPv4 address is public or private. Defaults to true.
  /// [rdns] The reverse DNS assigned to this address.
  const InstanceIpArgs({
    this.applyImmediately,
    required this.linodeId,
    this.public,
    this.rdns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyImmediately': ?applyImmediately,
      'linodeId': linodeId,
      'public': ?public,
      'rdns': ?rdns,
    };
  }

  factory InstanceIpArgs.fromMap(Map<String, dynamic> map) {
    return InstanceIpArgs(
      applyImmediately: (() { final guardedValue = map['applyImmediately']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      linodeId: pulumi.Input.fromValue(map['linodeId'] as int),
      public: (() { final guardedValue = map['public']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rdns: (() { final guardedValue = map['rdns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

