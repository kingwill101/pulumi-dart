// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_domain.dart';
import 'load_balancer_firewall.dart';
import 'load_balancer_forwarding_rule.dart';
import 'load_balancer_glb_settings.dart';
import 'load_balancer_healthcheck.dart';
import 'load_balancer_sticky_sessions.dart';

/// {@template pulumi_index_load_balancer_load_balancer_args_doc}
/// The set of arguments for LoadBalancer.
/// {@endtemplate}
/// {@macro pulumi_index_load_balancer_load_balancer_args_doc}
class LoadBalancerArgs {
  /// **Deprecated** This field has been deprecated. You can no longer specify an algorithm for load balancers.
  /// or `leastConnections`. The default value is `roundRobin`.
  final pulumi.Input<String>? algorithm;
  /// A boolean value indicating whether to disable automatic DNS record creation for Let's Encrypt certificates that are added to the load balancer. Default value is `false`.
  final pulumi.Input<bool>? disableLetsEncryptDnsRecords;
  /// A list of `domains` required to ingress traffic to a Global Load Balancer. The `domains` block is documented below.
  final pulumi.Input<List<LoadBalancerDomain>>? domains;
  /// A list of the IDs of each droplet to be attached to the Load Balancer.
  final pulumi.Input<List<int>>? dropletIds;
  /// The name of a Droplet tag corresponding to Droplets to be assigned to the Load Balancer.
  final pulumi.Input<String>? dropletTag;
  /// A boolean value indicating whether HTTP keepalive connections are maintained to target Droplets. Default value is `false`.
  final pulumi.Input<bool>? enableBackendKeepalive;
  /// A boolean value indicating whether PROXY
  /// Protocol should be used to pass information from connecting client requests to
  /// the backend service. Default value is `false`.
  final pulumi.Input<bool>? enableProxyProtocol;
  /// A block containing rules for allowing/denying traffic to the Load Balancer. The `firewall` block is documented below. Only 1 firewall is allowed.
  final pulumi.Input<LoadBalancerFirewall>? firewall;
  /// A list of `forwardingRule` to be assigned to the
  /// Load Balancer. The `forwardingRule` block is documented below.
  final pulumi.Input<List<LoadBalancerForwardingRule>>? forwardingRules;
  /// A block containing `glbSettings` required to define target rules for a Global Load Balancer. The `glbSettings` block is documented below.
  final pulumi.Input<LoadBalancerGlbSettings>? glbSettings;
  /// A `healthcheck` block to be assigned to the
  /// Load Balancer. The `healthcheck` block is documented below. Only 1 healthcheck is allowed.
  final pulumi.Input<LoadBalancerHealthcheck>? healthcheck;
  /// Specifies the idle timeout for HTTPS connections on the load balancer in seconds.
  final pulumi.Input<int>? httpIdleTimeoutSeconds;
  /// The ip of the Load Balancer
  final pulumi.Input<String>? ip;
  /// The Load Balancer name
  final pulumi.Input<String>? name;
  /// The type of network the Load Balancer is accessible from. It must be either of `INTERNAL` or `EXTERNAL`. Defaults to `EXTERNAL`.
  final pulumi.Input<String>? network;
  /// The network stack determines the allocation of ipv4/ipv6 addresses to the load balancer. It must be either of `IPV4` or `DUALSTACK`. Defaults to `IPV4`.
  final pulumi.Input<String>? networkStack;
  /// The ID of the project that the load balancer is associated with. If no ID is provided at creation, the load balancer associates with the user's default project.
  final pulumi.Input<String>? projectId;
  /// A boolean value indicating whether
  /// HTTP requests to the Load Balancer on port 80 will be redirected to HTTPS on port 443.
  /// Default value is `false`.
  final pulumi.Input<bool>? redirectHttpToHttps;
  /// The region to start in
  final pulumi.Input<String>? region;
  /// The size of the Load Balancer. It must be either `lb-small`, `lb-medium`, or `lb-large`. Defaults to `lb-small`. Only one of `size` or `sizeUnit` may be provided.
  final pulumi.Input<String>? size;
  /// The size of the Load Balancer. It must be in the range (1, 200). Defaults to `1`. Only one of `size` or `sizeUnit` may be provided.
  final pulumi.Input<int>? sizeUnit;
  /// A `stickySessions` block to be assigned to the
  /// Load Balancer. The `stickySessions` block is documented below. Only 1 stickySessions block is allowed.
  final pulumi.Input<LoadBalancerStickySessions>? stickySessions;
  /// The ID of the VPC subnet where the load balancer will be located. Must be a valid subnet in the specified VPC. Requires that `vpcUuid` is also set.
  final pulumi.Input<String>? subnetUuid;
  /// A list of Load Balancer IDs to be attached behind a Global Load Balancer.
  final pulumi.Input<List<String>>? targetLoadBalancerIds;
  /// The tls cipher policy controls the cipher suites to be used by the load balancer. It must be either of `DEFAULT` or `STRONG`. Defaults to `DEFAULT`.
  final pulumi.Input<String>? tlsCipherPolicy;
  /// The type of the Load Balancer. It must be either of `REGIONAL`, `REGIONAL_NETWORK`, or `GLOBAL`. Defaults to `REGIONAL`.
  final pulumi.Input<String>? type;
  /// The ID of the VPC where the load balancer will be located.
  final pulumi.Input<String>? vpcUuid;

  /// Creates a new [LoadBalancerArgs].
  /// [algorithm] **Deprecated** This field has been deprecated. You can no longer specify an algorithm for load balancers.
  /// [disableLetsEncryptDnsRecords] A boolean value indicating whether to disable automatic DNS record creation for Let's Encrypt certificates that are added to the load balancer. Default value is `false`.
  /// [domains] A list of `domains` required to ingress traffic to a Global Load Balancer. The `domains` block is documented below.
  /// [dropletIds] A list of the IDs of each droplet to be attached to the Load Balancer.
  /// [dropletTag] The name of a Droplet tag corresponding to Droplets to be assigned to the Load Balancer.
  /// [enableBackendKeepalive] A boolean value indicating whether HTTP keepalive connections are maintained to target Droplets. Default value is `false`.
  /// [enableProxyProtocol] A boolean value indicating whether PROXY
  /// [firewall] A block containing rules for allowing/denying traffic to the Load Balancer. The `firewall` block is documented below. Only 1 firewall is allowed.
  /// [forwardingRules] A list of `forwardingRule` to be assigned to the
  /// [glbSettings] A block containing `glbSettings` required to define target rules for a Global Load Balancer. The `glbSettings` block is documented below.
  /// [healthcheck] A `healthcheck` block to be assigned to the
  /// [httpIdleTimeoutSeconds] Specifies the idle timeout for HTTPS connections on the load balancer in seconds.
  /// [ip] The ip of the Load Balancer
  /// [name] The Load Balancer name
  /// [network] The type of network the Load Balancer is accessible from. It must be either of `INTERNAL` or `EXTERNAL`. Defaults to `EXTERNAL`.
  /// [networkStack] The network stack determines the allocation of ipv4/ipv6 addresses to the load balancer. It must be either of `IPV4` or `DUALSTACK`. Defaults to `IPV4`.
  /// [projectId] The ID of the project that the load balancer is associated with. If no ID is provided at creation, the load balancer associates with the user's default project.
  /// [redirectHttpToHttps] A boolean value indicating whether
  /// [region] The region to start in
  /// [size] The size of the Load Balancer. It must be either `lb-small`, `lb-medium`, or `lb-large`. Defaults to `lb-small`. Only one of `size` or `sizeUnit` may be provided.
  /// [sizeUnit] The size of the Load Balancer. It must be in the range (1, 200). Defaults to `1`. Only one of `size` or `sizeUnit` may be provided.
  /// [stickySessions] A `stickySessions` block to be assigned to the
  /// [subnetUuid] The ID of the VPC subnet where the load balancer will be located. Must be a valid subnet in the specified VPC. Requires that `vpcUuid` is also set.
  /// [targetLoadBalancerIds] A list of Load Balancer IDs to be attached behind a Global Load Balancer.
  /// [tlsCipherPolicy] The tls cipher policy controls the cipher suites to be used by the load balancer. It must be either of `DEFAULT` or `STRONG`. Defaults to `DEFAULT`.
  /// [type] The type of the Load Balancer. It must be either of `REGIONAL`, `REGIONAL_NETWORK`, or `GLOBAL`. Defaults to `REGIONAL`.
  /// [vpcUuid] The ID of the VPC where the load balancer will be located.
  const LoadBalancerArgs({
    this.algorithm,
    this.disableLetsEncryptDnsRecords,
    this.domains,
    this.dropletIds,
    this.dropletTag,
    this.enableBackendKeepalive,
    this.enableProxyProtocol,
    this.firewall,
    this.forwardingRules,
    this.glbSettings,
    this.healthcheck,
    this.httpIdleTimeoutSeconds,
    this.ip,
    this.name,
    this.network,
    this.networkStack,
    this.projectId,
    this.redirectHttpToHttps,
    this.region,
    this.size,
    this.sizeUnit,
    this.stickySessions,
    this.subnetUuid,
    this.targetLoadBalancerIds,
    this.tlsCipherPolicy,
    this.type,
    this.vpcUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?algorithm,
      'disableLetsEncryptDnsRecords': ?disableLetsEncryptDnsRecords,
      'domains': ?pulumi.Input.mapOptionalInputValue<List<LoadBalancerDomain>, List<Map<String, dynamic>>>(domains, (value) => pulumi.Input.encodeList<LoadBalancerDomain, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dropletIds': ?dropletIds,
      'dropletTag': ?dropletTag,
      'enableBackendKeepalive': ?enableBackendKeepalive,
      'enableProxyProtocol': ?enableProxyProtocol,
      'firewall': ?pulumi.Input.mapOptionalInputValue<LoadBalancerFirewall, Map<String, dynamic>>(firewall, (value) => value.toMap()),
      'forwardingRules': ?pulumi.Input.mapOptionalInputValue<List<LoadBalancerForwardingRule>, List<Map<String, dynamic>>>(forwardingRules, (value) => pulumi.Input.encodeList<LoadBalancerForwardingRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'glbSettings': ?pulumi.Input.mapOptionalInputValue<LoadBalancerGlbSettings, Map<String, dynamic>>(glbSettings, (value) => value.toMap()),
      'healthcheck': ?pulumi.Input.mapOptionalInputValue<LoadBalancerHealthcheck, Map<String, dynamic>>(healthcheck, (value) => value.toMap()),
      'httpIdleTimeoutSeconds': ?httpIdleTimeoutSeconds,
      'ip': ?ip,
      'name': ?name,
      'network': ?network,
      'networkStack': ?networkStack,
      'projectId': ?projectId,
      'redirectHttpToHttps': ?redirectHttpToHttps,
      'region': ?region,
      'size': ?size,
      'sizeUnit': ?sizeUnit,
      'stickySessions': ?pulumi.Input.mapOptionalInputValue<LoadBalancerStickySessions, Map<String, dynamic>>(stickySessions, (value) => value.toMap()),
      'subnetUuid': ?subnetUuid,
      'targetLoadBalancerIds': ?targetLoadBalancerIds,
      'tlsCipherPolicy': ?tlsCipherPolicy,
      'type': ?type,
      'vpcUuid': ?vpcUuid,
    };
  }

  factory LoadBalancerArgs.fromMap(Map<String, dynamic> map) {
    return LoadBalancerArgs(
      algorithm: (() { final guardedValue = map['algorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableLetsEncryptDnsRecords: (() { final guardedValue = map['disableLetsEncryptDnsRecords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      domains: (() { final guardedValue = map['domains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LoadBalancerDomain>(guardedValue, (value) => LoadBalancerDomain.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dropletIds: (() { final guardedValue = map['dropletIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      dropletTag: (() { final guardedValue = map['dropletTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableBackendKeepalive: (() { final guardedValue = map['enableBackendKeepalive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableProxyProtocol: (() { final guardedValue = map['enableProxyProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      firewall: (() { final guardedValue = map['firewall']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoadBalancerFirewall.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      forwardingRules: (() { final guardedValue = map['forwardingRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LoadBalancerForwardingRule>(guardedValue, (value) => LoadBalancerForwardingRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      glbSettings: (() { final guardedValue = map['glbSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoadBalancerGlbSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      healthcheck: (() { final guardedValue = map['healthcheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoadBalancerHealthcheck.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpIdleTimeoutSeconds: (() { final guardedValue = map['httpIdleTimeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkStack: (() { final guardedValue = map['networkStack']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirectHttpToHttps: (() { final guardedValue = map['redirectHttpToHttps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sizeUnit: (() { final guardedValue = map['sizeUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      stickySessions: (() { final guardedValue = map['stickySessions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoadBalancerStickySessions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subnetUuid: (() { final guardedValue = map['subnetUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetLoadBalancerIds: (() { final guardedValue = map['targetLoadBalancerIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tlsCipherPolicy: (() { final guardedValue = map['tlsCipherPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcUuid: (() { final guardedValue = map['vpcUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
