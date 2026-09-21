// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancer_domain.dart';
import 'get_load_balancer_firewall.dart';
import 'get_load_balancer_forwarding_rule.dart';
import 'get_load_balancer_glb_setting.dart';
import 'get_load_balancer_healthcheck.dart';
import 'get_load_balancer_sticky_session.dart';

/// Result data returned by getLoadBalancer.
class GetLoadBalancerResult {
  final String? algorithm;
  final bool? disableLetsEncryptDnsRecords;
  final List<GetLoadBalancerDomain>? domains;
  final List<int>? dropletIds;
  final String? dropletTag;
  final bool? enableBackendKeepalive;
  final bool? enableProxyProtocol;
  final List<GetLoadBalancerFirewall>? firewalls;
  final List<GetLoadBalancerForwardingRule>? forwardingRules;
  final List<GetLoadBalancerGlbSetting>? glbSettings;
  final List<GetLoadBalancerHealthcheck>? healthchecks;
  final int? httpIdleTimeoutSeconds;
  final String? id;
  final String? ip;
  final String? ipv6;
  final String? loadBalancerUrn;
  final String? name;
  final String? network;
  final String? projectId;
  final bool? redirectHttpToHttps;
  final String? region;
  final String? size;
  final int? sizeUnit;
  final String? status;
  final List<GetLoadBalancerStickySession>? stickySessions;
  final String? subnetUuid;
  final List<String>? targetLoadBalancerIds;
  final String? type;
  final String? vpcUuid;

  /// Creates a new [GetLoadBalancerResult].
  /// [algorithm] Optional.
  /// [disableLetsEncryptDnsRecords] Optional.
  /// [domains] Optional.
  /// [dropletIds] Optional.
  /// [dropletTag] Optional.
  /// [enableBackendKeepalive] Optional.
  /// [enableProxyProtocol] Optional.
  /// [firewalls] Optional.
  /// [forwardingRules] Optional.
  /// [glbSettings] Optional.
  /// [healthchecks] Optional.
  /// [httpIdleTimeoutSeconds] Optional.
  /// [id] Optional.
  /// [ip] Optional.
  /// [ipv6] Optional.
  /// [loadBalancerUrn] Optional.
  /// [name] Optional.
  /// [network] Optional.
  /// [projectId] Optional.
  /// [redirectHttpToHttps] Optional.
  /// [region] Optional.
  /// [size] Optional.
  /// [sizeUnit] Optional.
  /// [status] Optional.
  /// [stickySessions] Optional.
  /// [subnetUuid] Optional.
  /// [targetLoadBalancerIds] Optional.
  /// [type] Optional.
  /// [vpcUuid] Optional.
  const GetLoadBalancerResult({
    this.algorithm,
    this.disableLetsEncryptDnsRecords,
    this.domains,
    this.dropletIds,
    this.dropletTag,
    this.enableBackendKeepalive,
    this.enableProxyProtocol,
    this.firewalls,
    this.forwardingRules,
    this.glbSettings,
    this.healthchecks,
    this.httpIdleTimeoutSeconds,
    this.id,
    this.ip,
    this.ipv6,
    this.loadBalancerUrn,
    this.name,
    this.network,
    this.projectId,
    this.redirectHttpToHttps,
    this.region,
    this.size,
    this.sizeUnit,
    this.status,
    this.stickySessions,
    this.subnetUuid,
    this.targetLoadBalancerIds,
    this.type,
    this.vpcUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?algorithm,
      'disableLetsEncryptDnsRecords': ?disableLetsEncryptDnsRecords,
      'domains': ?(() { final guardedValue = domains; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLoadBalancerDomain, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'dropletIds': ?dropletIds,
      'dropletTag': ?dropletTag,
      'enableBackendKeepalive': ?enableBackendKeepalive,
      'enableProxyProtocol': ?enableProxyProtocol,
      'firewalls': ?(() { final guardedValue = firewalls; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLoadBalancerFirewall, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'forwardingRules': ?(() { final guardedValue = forwardingRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLoadBalancerForwardingRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'glbSettings': ?(() { final guardedValue = glbSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLoadBalancerGlbSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'healthchecks': ?(() { final guardedValue = healthchecks; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLoadBalancerHealthcheck, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'httpIdleTimeoutSeconds': ?httpIdleTimeoutSeconds,
      'id': ?id,
      'ip': ?ip,
      'ipv6': ?ipv6,
      'loadBalancerUrn': ?loadBalancerUrn,
      'name': ?name,
      'network': ?network,
      'projectId': ?projectId,
      'redirectHttpToHttps': ?redirectHttpToHttps,
      'region': ?region,
      'size': ?size,
      'sizeUnit': ?sizeUnit,
      'status': ?status,
      'stickySessions': ?(() { final guardedValue = stickySessions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLoadBalancerStickySession, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'subnetUuid': ?subnetUuid,
      'targetLoadBalancerIds': ?targetLoadBalancerIds,
      'type': ?type,
      'vpcUuid': ?vpcUuid,
    };
  }

  factory GetLoadBalancerResult.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerResult(
      algorithm: (() { final guardedValue = map['algorithm']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disableLetsEncryptDnsRecords: (() { final guardedValue = map['disableLetsEncryptDnsRecords']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      domains: (() { final guardedValue = map['domains']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLoadBalancerDomain>(guardedValue, (value) => GetLoadBalancerDomain.fromMap((value as Map).cast<String, dynamic>())); })(),
      dropletIds: (() { final guardedValue = map['dropletIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<int>(); })(),
      dropletTag: (() { final guardedValue = map['dropletTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableBackendKeepalive: (() { final guardedValue = map['enableBackendKeepalive']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableProxyProtocol: (() { final guardedValue = map['enableProxyProtocol']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      firewalls: (() { final guardedValue = map['firewalls']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLoadBalancerFirewall>(guardedValue, (value) => GetLoadBalancerFirewall.fromMap((value as Map).cast<String, dynamic>())); })(),
      forwardingRules: (() { final guardedValue = map['forwardingRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLoadBalancerForwardingRule>(guardedValue, (value) => GetLoadBalancerForwardingRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      glbSettings: (() { final guardedValue = map['glbSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLoadBalancerGlbSetting>(guardedValue, (value) => GetLoadBalancerGlbSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      healthchecks: (() { final guardedValue = map['healthchecks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLoadBalancerHealthcheck>(guardedValue, (value) => GetLoadBalancerHealthcheck.fromMap((value as Map).cast<String, dynamic>())); })(),
      httpIdleTimeoutSeconds: (() { final guardedValue = map['httpIdleTimeoutSeconds']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv6: (() { final guardedValue = map['ipv6']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loadBalancerUrn: (() { final guardedValue = map['loadBalancerUrn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      redirectHttpToHttps: (() { final guardedValue = map['redirectHttpToHttps']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sizeUnit: (() { final guardedValue = map['sizeUnit']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stickySessions: (() { final guardedValue = map['stickySessions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLoadBalancerStickySession>(guardedValue, (value) => GetLoadBalancerStickySession.fromMap((value as Map).cast<String, dynamic>())); })(),
      subnetUuid: (() { final guardedValue = map['subnetUuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetLoadBalancerIds: (() { final guardedValue = map['targetLoadBalancerIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcUuid: (() { final guardedValue = map['vpcUuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
