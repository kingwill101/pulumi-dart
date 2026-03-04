// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallSettingsDefaultFirewallIds {
  /// The Linode's default firewall.
  final pulumi.Input<int>? linode;

  /// The NodeBalancer's default firewall.
  final pulumi.Input<int>? nodebalancer;

  /// The public interface's default firewall.
  final pulumi.Input<int>? publicInterface;

  /// The VPC interface's default firewall.
  final pulumi.Input<int>? vpcInterface;

  /// Creates a new [FirewallSettingsDefaultFirewallIds].
  /// [linode] The Linode's default firewall.
  /// [nodebalancer] The NodeBalancer's default firewall.
  /// [publicInterface] The public interface's default firewall.
  /// [vpcInterface] The VPC interface's default firewall.
  FirewallSettingsDefaultFirewallIds({
    this.linode,
    this.nodebalancer,
    this.publicInterface,
    this.vpcInterface,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linode': ?linode,
      'nodebalancer': ?nodebalancer,
      'publicInterface': ?publicInterface,
      'vpcInterface': ?vpcInterface,
    };
  }

  factory FirewallSettingsDefaultFirewallIds.fromMap(Map<String, dynamic> map) {
    return FirewallSettingsDefaultFirewallIds(
      linode: (() {
        final guardedValue = map['linode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      nodebalancer: (() {
        final guardedValue = map['nodebalancer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      publicInterface: (() {
        final guardedValue = map['publicInterface'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      vpcInterface: (() {
        final guardedValue = map['vpcInterface'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
