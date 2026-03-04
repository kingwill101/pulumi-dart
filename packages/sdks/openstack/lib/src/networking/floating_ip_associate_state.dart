// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FloatingIpAssociate resources.
class FloatingIpAssociateState {
  final pulumi.Input<String>? fixedIp;

  /// IP Address of an existing floating IP.
  final pulumi.Input<String>? floatingIp;

  /// ID of an existing port with at least one IP address to
  /// associate with this floating IP.
  final pulumi.Input<String>? portId;

  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a floating IP that can be used with
  /// another networking resource, such as a load balancer. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// floating IP (which may or may not have a different address).
  final pulumi.Input<String>? region;

  /// Creates a new [FloatingIpAssociateState].
  /// [fixedIp] Optional.
  /// [floatingIp] IP Address of an existing floating IP.
  /// [portId] ID of an existing port with at least one IP address to
  /// [region] The region in which to obtain the V2 Networking client.
  FloatingIpAssociateState({
    this.fixedIp,
    this.floatingIp,
    this.portId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedIp': ?fixedIp,
      'floatingIp': ?floatingIp,
      'portId': ?portId,
      'region': ?region,
    };
  }

  factory FloatingIpAssociateState.fromMap(Map<String, dynamic> map) {
    return FloatingIpAssociateState(
      fixedIp: (() {
        final guardedValue = map['fixedIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      floatingIp: (() {
        final guardedValue = map['floatingIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      portId: (() {
        final guardedValue = map['portId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
