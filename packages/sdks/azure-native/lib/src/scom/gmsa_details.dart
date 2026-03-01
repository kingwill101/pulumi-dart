// ignore_for_file: unused_element, unnecessary_cast


/// Gmsa Details
class GmsaDetails {
  /// Frontend DNS name for Load Balancer which will be used by Agents to initiate communication
  final String? dnsName;
  /// gMSA account under which context all Management Server services will run
  final String? gmsaAccount;
  /// Frontend IP configuration for Load Balancer, which should be an available IP in customer VNet
  final String? loadBalancerIP;
  /// OnPrem AD Computer Group where we will join VMs for ease of management
  final String? managementServerGroupName;

  /// Creates a new [GmsaDetails].
  /// [dnsName] Frontend DNS name for Load Balancer which will be used by Agents to initiate communication
  /// [gmsaAccount] gMSA account under which context all Management Server services will run
  /// [loadBalancerIP] Frontend IP configuration for Load Balancer, which should be an available IP in customer VNet
  /// [managementServerGroupName] OnPrem AD Computer Group where we will join VMs for ease of management
  GmsaDetails({
    this.dnsName,
    this.gmsaAccount,
    this.loadBalancerIP,
    this.managementServerGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsName': ?dnsName,
      'gmsaAccount': ?gmsaAccount,
      'loadBalancerIP': ?loadBalancerIP,
      'managementServerGroupName': ?managementServerGroupName,
    };
  }

  factory GmsaDetails.fromMap(Map<String, dynamic> map) {
    return GmsaDetails(
      dnsName: map['dnsName'] == null ? null : map['dnsName'] as String,
      gmsaAccount: map['gmsaAccount'] == null ? null : map['gmsaAccount'] as String,
      loadBalancerIP: map['loadBalancerIP'] == null ? null : map['loadBalancerIP'] as String,
      managementServerGroupName: map['managementServerGroupName'] == null ? null : map['managementServerGroupName'] as String,
    );
  }
}

