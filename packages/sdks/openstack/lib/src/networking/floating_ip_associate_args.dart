// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_floating_ip_associate_floating_ip_associate_args_doc}
/// The set of arguments for FloatingIpAssociate.
/// {@endtemplate}
/// {@macro pulumi_networking_floating_ip_associate_floating_ip_associate_args_doc}
class FloatingIpAssociateArgs {
  final pulumi.Input<String>? fixedIp;

  /// IP Address of an existing floating IP.
  final pulumi.Input<String> floatingIp;

  /// ID of an existing port with at least one IP address to
  /// associate with this floating IP.
  final pulumi.Input<String> portId;

  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a floating IP that can be used with
  /// another networking resource, such as a load balancer. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// floating IP (which may or may not have a different address).
  final pulumi.Input<String>? region;

  /// Creates a new [FloatingIpAssociateArgs].
  /// [fixedIp] Optional.
  /// [floatingIp] IP Address of an existing floating IP.
  /// [portId] ID of an existing port with at least one IP address to
  /// [region] The region in which to obtain the V2 Networking client.
  FloatingIpAssociateArgs({
    this.fixedIp,
    required this.floatingIp,
    required this.portId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedIp': ?fixedIp,
      'floatingIp': floatingIp,
      'portId': portId,
      'region': ?region,
    };
  }

  factory FloatingIpAssociateArgs.fromMap(Map<String, dynamic> map) {
    return FloatingIpAssociateArgs(
      fixedIp: (() {
        final guardedValue = map['fixedIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      floatingIp: pulumi.Input.fromValue(map['floatingIp'] as String),
      portId: pulumi.Input.fromValue(map['portId'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
