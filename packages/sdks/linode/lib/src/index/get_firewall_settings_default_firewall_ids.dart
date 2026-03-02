// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFirewallSettingsDefaultFirewallIds {
  final pulumi.Input<int> linode;
  final pulumi.Input<int> nodebalancer;
  final pulumi.Input<int> publicInterface;
  final pulumi.Input<int> vpcInterface;

  /// Creates a new [GetFirewallSettingsDefaultFirewallIds].
  /// [linode] Required.
  /// [nodebalancer] Required.
  /// [publicInterface] Required.
  /// [vpcInterface] Required.
  GetFirewallSettingsDefaultFirewallIds({
    required this.linode,
    required this.nodebalancer,
    required this.publicInterface,
    required this.vpcInterface,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linode': linode,
      'nodebalancer': nodebalancer,
      'publicInterface': publicInterface,
      'vpcInterface': vpcInterface,
    };
  }

  factory GetFirewallSettingsDefaultFirewallIds.fromMap(Map<String, dynamic> map) {
    return GetFirewallSettingsDefaultFirewallIds(
      linode: (map['linode'] as int).input(),
      nodebalancer: (map['nodebalancer'] as int).input(),
      publicInterface: (map['publicInterface'] as int).input(),
      vpcInterface: (map['vpcInterface'] as int).input(),
    );
  }
}

