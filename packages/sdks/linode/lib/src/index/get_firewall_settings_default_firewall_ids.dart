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
      linode: pulumi.Input.fromValue(map['linode'] as int),
      nodebalancer: pulumi.Input.fromValue(map['nodebalancer'] as int),
      publicInterface: pulumi.Input.fromValue(map['publicInterface'] as int),
      vpcInterface: pulumi.Input.fromValue(map['vpcInterface'] as int),
    );
  }
}

