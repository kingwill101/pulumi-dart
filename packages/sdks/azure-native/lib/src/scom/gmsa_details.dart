// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gmsa Details
class GmsaDetails {
  /// Frontend DNS name for Load Balancer which will be used by Agents to initiate communication
  final pulumi.Input<String?>? dnsName;
  /// gMSA account under which context all Management Server services will run
  final pulumi.Input<String?>? gmsaAccount;
  /// Frontend IP configuration for Load Balancer, which should be an available IP in customer VNet
  final pulumi.Input<String?>? loadBalancerIP;
  /// OnPrem AD Computer Group where we will join VMs for ease of management
  final pulumi.Input<String?>? managementServerGroupName;

  /// Creates a new [GmsaDetails].
  /// [dnsName] Frontend DNS name for Load Balancer which will be used by Agents to initiate communication
  /// [gmsaAccount] gMSA account under which context all Management Server services will run
  /// [loadBalancerIP] Frontend IP configuration for Load Balancer, which should be an available IP in customer VNet
  /// [managementServerGroupName] OnPrem AD Computer Group where we will join VMs for ease of management
  const GmsaDetails({
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
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gmsaAccount: (() { final guardedValue = map['gmsaAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancerIP: (() { final guardedValue = map['loadBalancerIP']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managementServerGroupName: (() { final guardedValue = map['managementServerGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
