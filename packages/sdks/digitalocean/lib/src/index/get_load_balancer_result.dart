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
  final String algorithm;
  final bool disableLetsEncryptDnsRecords;
  final List<GetLoadBalancerDomain> domains;
  final List<int> dropletIds;
  final String dropletTag;
  final bool enableBackendKeepalive;
  final bool enableProxyProtocol;
  final List<GetLoadBalancerFirewall> firewalls;
  final List<GetLoadBalancerForwardingRule> forwardingRules;
  final List<GetLoadBalancerGlbSetting> glbSettings;
  final List<GetLoadBalancerHealthcheck> healthchecks;
  final int httpIdleTimeoutSeconds;
  final String? id;
  final String ip;
  final String ipv6;
  final String loadBalancerUrn;
  final String? name;
  final String network;
  final String projectId;
  final bool redirectHttpToHttps;
  final String region;
  final String size;
  final int sizeUnit;
  final String status;
  final List<GetLoadBalancerStickySession> stickySessions;
  final List<String> targetLoadBalancerIds;
  final String type;
  final String vpcUuid;

  /// Creates a new [GetLoadBalancerResult].
  /// [algorithm] Required.
  /// [disableLetsEncryptDnsRecords] Required.
  /// [domains] Required.
  /// [dropletIds] Required.
  /// [dropletTag] Required.
  /// [enableBackendKeepalive] Required.
  /// [enableProxyProtocol] Required.
  /// [firewalls] Required.
  /// [forwardingRules] Required.
  /// [glbSettings] Required.
  /// [healthchecks] Required.
  /// [httpIdleTimeoutSeconds] Required.
  /// [id] Optional.
  /// [ip] Required.
  /// [ipv6] Required.
  /// [loadBalancerUrn] Required.
  /// [name] Optional.
  /// [network] Required.
  /// [projectId] Required.
  /// [redirectHttpToHttps] Required.
  /// [region] Required.
  /// [size] Required.
  /// [sizeUnit] Required.
  /// [status] Required.
  /// [stickySessions] Required.
  /// [targetLoadBalancerIds] Required.
  /// [type] Required.
  /// [vpcUuid] Required.
  GetLoadBalancerResult({
    required this.algorithm,
    required this.disableLetsEncryptDnsRecords,
    required this.domains,
    required this.dropletIds,
    required this.dropletTag,
    required this.enableBackendKeepalive,
    required this.enableProxyProtocol,
    required this.firewalls,
    required this.forwardingRules,
    required this.glbSettings,
    required this.healthchecks,
    required this.httpIdleTimeoutSeconds,
    this.id,
    required this.ip,
    required this.ipv6,
    required this.loadBalancerUrn,
    this.name,
    required this.network,
    required this.projectId,
    required this.redirectHttpToHttps,
    required this.region,
    required this.size,
    required this.sizeUnit,
    required this.status,
    required this.stickySessions,
    required this.targetLoadBalancerIds,
    required this.type,
    required this.vpcUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'disableLetsEncryptDnsRecords': disableLetsEncryptDnsRecords,
      'domains': pulumi.Input.encodeList<GetLoadBalancerDomain, Map<String, dynamic>>(domains, (value) => value.toMap()),
      'dropletIds': dropletIds,
      'dropletTag': dropletTag,
      'enableBackendKeepalive': enableBackendKeepalive,
      'enableProxyProtocol': enableProxyProtocol,
      'firewalls': pulumi.Input.encodeList<GetLoadBalancerFirewall, Map<String, dynamic>>(firewalls, (value) => value.toMap()),
      'forwardingRules': pulumi.Input.encodeList<GetLoadBalancerForwardingRule, Map<String, dynamic>>(forwardingRules, (value) => value.toMap()),
      'glbSettings': pulumi.Input.encodeList<GetLoadBalancerGlbSetting, Map<String, dynamic>>(glbSettings, (value) => value.toMap()),
      'healthchecks': pulumi.Input.encodeList<GetLoadBalancerHealthcheck, Map<String, dynamic>>(healthchecks, (value) => value.toMap()),
      'httpIdleTimeoutSeconds': httpIdleTimeoutSeconds,
      'id': ?id,
      'ip': ip,
      'ipv6': ipv6,
      'loadBalancerUrn': loadBalancerUrn,
      'name': ?name,
      'network': network,
      'projectId': projectId,
      'redirectHttpToHttps': redirectHttpToHttps,
      'region': region,
      'size': size,
      'sizeUnit': sizeUnit,
      'status': status,
      'stickySessions': pulumi.Input.encodeList<GetLoadBalancerStickySession, Map<String, dynamic>>(stickySessions, (value) => value.toMap()),
      'targetLoadBalancerIds': targetLoadBalancerIds,
      'type': type,
      'vpcUuid': vpcUuid,
    };
  }

  factory GetLoadBalancerResult.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerResult(
      algorithm: map['algorithm'] as String,
      disableLetsEncryptDnsRecords: map['disableLetsEncryptDnsRecords'] as bool,
      domains: pulumi.Input.decodeList<GetLoadBalancerDomain>(map['domains']!, (value) => GetLoadBalancerDomain.fromMap((value as Map).cast<String, dynamic>())),
      dropletIds: (map['dropletIds'] as List).cast<int>(),
      dropletTag: map['dropletTag'] as String,
      enableBackendKeepalive: map['enableBackendKeepalive'] as bool,
      enableProxyProtocol: map['enableProxyProtocol'] as bool,
      firewalls: pulumi.Input.decodeList<GetLoadBalancerFirewall>(map['firewalls']!, (value) => GetLoadBalancerFirewall.fromMap((value as Map).cast<String, dynamic>())),
      forwardingRules: pulumi.Input.decodeList<GetLoadBalancerForwardingRule>(map['forwardingRules']!, (value) => GetLoadBalancerForwardingRule.fromMap((value as Map).cast<String, dynamic>())),
      glbSettings: pulumi.Input.decodeList<GetLoadBalancerGlbSetting>(map['glbSettings']!, (value) => GetLoadBalancerGlbSetting.fromMap((value as Map).cast<String, dynamic>())),
      healthchecks: pulumi.Input.decodeList<GetLoadBalancerHealthcheck>(map['healthchecks']!, (value) => GetLoadBalancerHealthcheck.fromMap((value as Map).cast<String, dynamic>())),
      httpIdleTimeoutSeconds: map['httpIdleTimeoutSeconds'] as int,
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ip: map['ip'] as String,
      ipv6: map['ipv6'] as String,
      loadBalancerUrn: map['loadBalancerUrn'] as String,
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: map['network'] as String,
      projectId: map['projectId'] as String,
      redirectHttpToHttps: map['redirectHttpToHttps'] as bool,
      region: map['region'] as String,
      size: map['size'] as String,
      sizeUnit: map['sizeUnit'] as int,
      status: map['status'] as String,
      stickySessions: pulumi.Input.decodeList<GetLoadBalancerStickySession>(map['stickySessions']!, (value) => GetLoadBalancerStickySession.fromMap((value as Map).cast<String, dynamic>())),
      targetLoadBalancerIds: (map['targetLoadBalancerIds'] as List).cast<String>(),
      type: map['type'] as String,
      vpcUuid: map['vpcUuid'] as String,
    );
  }
}

