// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'magic_transit_site_wan_static_addressing.dart';

/// {@template pulumi_index_magic_transit_site_wan_magic_transit_site_wan_args_doc}
/// The set of arguments for MagicTransitSiteWan.
/// {@endtemplate}
/// {@macro pulumi_index_magic_transit_site_wan_magic_transit_site_wan_args_doc}
class MagicTransitSiteWanArgs {
  /// Identifier
  final pulumi.Input<String> accountId;
  /// Magic WAN health check rate for tunnels created on this link. The default value is `mid`.
  /// Available values: "low", "mid", "high".
  final pulumi.Input<String?>? healthCheckRate;
  final pulumi.Input<bool?>? loadBalanceInnerFlows;
  final pulumi.Input<String?>? name;
  final pulumi.Input<int> physport;
  final pulumi.Input<int?>? priority;
  /// Provisioned download rate of the WAN circuit in kilobits per second.
  final pulumi.Input<int?>? provisionedDownloadKbps;
  /// Provisioned upload rate of the WAN circuit in kilobits per second.
  final pulumi.Input<int?>? provisionedUploadKbps;
  /// Identifier
  final pulumi.Input<String> siteId;
  /// Static addressing configuration for a WAN. Omit to use DHCP. Submit secondary*address when the site is in high availability mode.
  final pulumi.Input<MagicTransitSiteWanStaticAddressing?>? staticAddressing;
  /// VLAN ID. Use zero for untagged.
  final pulumi.Input<int?>? vlanTag;

  /// Creates a new [MagicTransitSiteWanArgs].
  /// [accountId] Identifier
  /// [healthCheckRate] Magic WAN health check rate for tunnels created on this link. The default value is `mid`.
  /// [loadBalanceInnerFlows] Optional.
  /// [name] Optional.
  /// [physport] Required.
  /// [priority] Optional.
  /// [provisionedDownloadKbps] Provisioned download rate of the WAN circuit in kilobits per second.
  /// [provisionedUploadKbps] Provisioned upload rate of the WAN circuit in kilobits per second.
  /// [siteId] Identifier
  /// [staticAddressing] Static addressing configuration for a WAN. Omit to use DHCP. Submit secondary*address when the site is in high availability mode.
  /// [vlanTag] VLAN ID. Use zero for untagged.
  const MagicTransitSiteWanArgs({
    required this.accountId,
    this.healthCheckRate,
    this.loadBalanceInnerFlows,
    this.name,
    required this.physport,
    this.priority,
    this.provisionedDownloadKbps,
    this.provisionedUploadKbps,
    required this.siteId,
    this.staticAddressing,
    this.vlanTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'healthCheckRate': ?healthCheckRate,
      'loadBalanceInnerFlows': ?loadBalanceInnerFlows,
      'name': ?name,
      'physport': physport,
      'priority': ?priority,
      'provisionedDownloadKbps': ?provisionedDownloadKbps,
      'provisionedUploadKbps': ?provisionedUploadKbps,
      'siteId': siteId,
      'staticAddressing': ?pulumi.Input.mapOptionalInputValue<MagicTransitSiteWanStaticAddressing, Map<String, dynamic>>(staticAddressing, (value) => value.toMap()),
      'vlanTag': ?vlanTag,
    };
  }

  factory MagicTransitSiteWanArgs.fromMap(Map<String, dynamic> map) {
    return MagicTransitSiteWanArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      healthCheckRate: (() { final guardedValue = map['healthCheckRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalanceInnerFlows: (() { final guardedValue = map['loadBalanceInnerFlows']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      physport: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['physport'])),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      provisionedDownloadKbps: (() { final guardedValue = map['provisionedDownloadKbps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      provisionedUploadKbps: (() { final guardedValue = map['provisionedUploadKbps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
      staticAddressing: (() { final guardedValue = map['staticAddressing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MagicTransitSiteWanStaticAddressing.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vlanTag: (() { final guardedValue = map['vlanTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
