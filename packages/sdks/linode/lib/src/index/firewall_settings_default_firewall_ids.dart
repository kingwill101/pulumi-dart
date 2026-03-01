// ignore_for_file: unused_element, unnecessary_cast


class FirewallSettingsDefaultFirewallIds {
  /// The Linode's default firewall.
  final int? linode;
  /// The NodeBalancer's default firewall.
  final int? nodebalancer;
  /// The public interface's default firewall.
  final int? publicInterface;
  /// The VPC interface's default firewall.
  final int? vpcInterface;

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
      linode: map['linode'] == null ? null : map['linode'] as int,
      nodebalancer: map['nodebalancer'] == null ? null : map['nodebalancer'] as int,
      publicInterface: map['publicInterface'] == null ? null : map['publicInterface'] as int,
      vpcInterface: map['vpcInterface'] == null ? null : map['vpcInterface'] as int,
    );
  }
}

