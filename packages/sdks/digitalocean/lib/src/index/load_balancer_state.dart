// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_domain.dart';
import 'load_balancer_firewall.dart';
import 'load_balancer_forwarding_rule.dart';
import 'load_balancer_glb_settings.dart';
import 'load_balancer_healthcheck.dart';
import 'load_balancer_sticky_sessions.dart';

/// Input properties used for looking up and filtering LoadBalancer resources.
class LoadBalancerState {
  /// **Deprecated** This field has been deprecated. You can no longer specify an algorithm for load balancers.
  /// or `least_connections`. The default value is `round_robin`.
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
  /// A list of `forwarding_rule` to be assigned to the
  /// Load Balancer. The `forwarding_rule` block is documented below.
  final pulumi.Input<List<LoadBalancerForwardingRule>>? forwardingRules;
  /// A block containing `glb_settings` required to define target rules for a Global Load Balancer. The `glb_settings` block is documented below.
  final pulumi.Input<LoadBalancerGlbSettings>? glbSettings;
  /// A `healthcheck` block to be assigned to the
  /// Load Balancer. The `healthcheck` block is documented below. Only 1 healthcheck is allowed.
  final pulumi.Input<LoadBalancerHealthcheck>? healthcheck;
  /// Specifies the idle timeout for HTTPS connections on the load balancer in seconds.
  final pulumi.Input<int>? httpIdleTimeoutSeconds;
  /// The ip of the Load Balancer
  final pulumi.Input<String>? ip;
  final pulumi.Input<String>? ipv6;
  /// The uniform resource name for the Load Balancer
  final pulumi.Input<String>? loadBalancerUrn;
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
  /// The size of the Load Balancer. It must be either `lb-small`, `lb-medium`, or `lb-large`. Defaults to `lb-small`. Only one of `size` or `size_unit` may be provided.
  final pulumi.Input<String>? size;
  /// The size of the Load Balancer. It must be in the range (1, 200). Defaults to `1`. Only one of `size` or `size_unit` may be provided.
  final pulumi.Input<int>? sizeUnit;
  final pulumi.Input<String>? status;
  /// A `sticky_sessions` block to be assigned to the
  /// Load Balancer. The `sticky_sessions` block is documented below. Only 1 sticky_sessions block is allowed.
  final pulumi.Input<LoadBalancerStickySessions>? stickySessions;
  /// A list of Load Balancer IDs to be attached behind a Global Load Balancer.
  final pulumi.Input<List<String>>? targetLoadBalancerIds;
  /// The tls cipher policy controls the cipher suites to be used by the load balancer. It must be either of `DEFAULT` or `STRONG`. Defaults to `DEFAULT`.
  final pulumi.Input<String>? tlsCipherPolicy;
  /// The type of the Load Balancer. It must be either of `REGIONAL`, `REGIONAL_NETWORK`, or `GLOBAL`. Defaults to `REGIONAL`.
  final pulumi.Input<String>? type;
  /// The ID of the VPC where the load balancer will be located.
  final pulumi.Input<String>? vpcUuid;

  /// Creates a new [LoadBalancerState].
  /// [algorithm] **Deprecated** This field has been deprecated. You can no longer specify an algorithm for load balancers.
  /// [disableLetsEncryptDnsRecords] A boolean value indicating whether to disable automatic DNS record creation for Let's Encrypt certificates that are added to the load balancer. Default value is `false`.
  /// [domains] A list of `domains` required to ingress traffic to a Global Load Balancer. The `domains` block is documented below.
  /// [dropletIds] A list of the IDs of each droplet to be attached to the Load Balancer.
  /// [dropletTag] The name of a Droplet tag corresponding to Droplets to be assigned to the Load Balancer.
  /// [enableBackendKeepalive] A boolean value indicating whether HTTP keepalive connections are maintained to target Droplets. Default value is `false`.
  /// [enableProxyProtocol] A boolean value indicating whether PROXY
  /// [firewall] A block containing rules for allowing/denying traffic to the Load Balancer. The `firewall` block is documented below. Only 1 firewall is allowed.
  /// [forwardingRules] A list of `forwarding_rule` to be assigned to the
  /// [glbSettings] A block containing `glb_settings` required to define target rules for a Global Load Balancer. The `glb_settings` block is documented below.
  /// [healthcheck] A `healthcheck` block to be assigned to the
  /// [httpIdleTimeoutSeconds] Specifies the idle timeout for HTTPS connections on the load balancer in seconds.
  /// [ip] The ip of the Load Balancer
  /// [ipv6] Optional.
  /// [loadBalancerUrn] The uniform resource name for the Load Balancer
  /// [name] The Load Balancer name
  /// [network] The type of network the Load Balancer is accessible from. It must be either of `INTERNAL` or `EXTERNAL`. Defaults to `EXTERNAL`.
  /// [networkStack] The network stack determines the allocation of ipv4/ipv6 addresses to the load balancer. It must be either of `IPV4` or `DUALSTACK`. Defaults to `IPV4`.
  /// [projectId] The ID of the project that the load balancer is associated with. If no ID is provided at creation, the load balancer associates with the user's default project.
  /// [redirectHttpToHttps] A boolean value indicating whether
  /// [region] The region to start in
  /// [size] The size of the Load Balancer. It must be either `lb-small`, `lb-medium`, or `lb-large`. Defaults to `lb-small`. Only one of `size` or `size_unit` may be provided.
  /// [sizeUnit] The size of the Load Balancer. It must be in the range (1, 200). Defaults to `1`. Only one of `size` or `size_unit` may be provided.
  /// [status] Optional.
  /// [stickySessions] A `sticky_sessions` block to be assigned to the
  /// [targetLoadBalancerIds] A list of Load Balancer IDs to be attached behind a Global Load Balancer.
  /// [tlsCipherPolicy] The tls cipher policy controls the cipher suites to be used by the load balancer. It must be either of `DEFAULT` or `STRONG`. Defaults to `DEFAULT`.
  /// [type] The type of the Load Balancer. It must be either of `REGIONAL`, `REGIONAL_NETWORK`, or `GLOBAL`. Defaults to `REGIONAL`.
  /// [vpcUuid] The ID of the VPC where the load balancer will be located.
  LoadBalancerState({
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
    this.ipv6,
    this.loadBalancerUrn,
    this.name,
    this.network,
    this.networkStack,
    this.projectId,
    this.redirectHttpToHttps,
    this.region,
    this.size,
    this.sizeUnit,
    this.status,
    this.stickySessions,
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
      'ipv6': ?ipv6,
      'loadBalancerUrn': ?loadBalancerUrn,
      'name': ?name,
      'network': ?network,
      'networkStack': ?networkStack,
      'projectId': ?projectId,
      'redirectHttpToHttps': ?redirectHttpToHttps,
      'region': ?region,
      'size': ?size,
      'sizeUnit': ?sizeUnit,
      'status': ?status,
      'stickySessions': ?pulumi.Input.mapOptionalInputValue<LoadBalancerStickySessions, Map<String, dynamic>>(stickySessions, (value) => value.toMap()),
      'targetLoadBalancerIds': ?targetLoadBalancerIds,
      'tlsCipherPolicy': ?tlsCipherPolicy,
      'type': ?type,
      'vpcUuid': ?vpcUuid,
    };
  }

  factory LoadBalancerState.fromMap(Map<String, dynamic> map) {
    return LoadBalancerState(
      algorithm: map['algorithm'] == null ? null : (map['algorithm'] as String).input(),
      disableLetsEncryptDnsRecords: map['disableLetsEncryptDnsRecords'] == null ? null : (map['disableLetsEncryptDnsRecords'] as bool).input(),
      domains: map['domains'] == null ? null : (pulumi.Input.decodeList<LoadBalancerDomain>(map['domains'], (value) => LoadBalancerDomain.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dropletIds: map['dropletIds'] == null ? null : ((map['dropletIds'] as List).cast<int>()).input(),
      dropletTag: map['dropletTag'] == null ? null : (map['dropletTag'] as String).input(),
      enableBackendKeepalive: map['enableBackendKeepalive'] == null ? null : (map['enableBackendKeepalive'] as bool).input(),
      enableProxyProtocol: map['enableProxyProtocol'] == null ? null : (map['enableProxyProtocol'] as bool).input(),
      firewall: map['firewall'] == null ? null : (LoadBalancerFirewall.fromMap((map['firewall'] as Map).cast<String, dynamic>())).input(),
      forwardingRules: map['forwardingRules'] == null ? null : (pulumi.Input.decodeList<LoadBalancerForwardingRule>(map['forwardingRules'], (value) => LoadBalancerForwardingRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      glbSettings: map['glbSettings'] == null ? null : (LoadBalancerGlbSettings.fromMap((map['glbSettings'] as Map).cast<String, dynamic>())).input(),
      healthcheck: map['healthcheck'] == null ? null : (LoadBalancerHealthcheck.fromMap((map['healthcheck'] as Map).cast<String, dynamic>())).input(),
      httpIdleTimeoutSeconds: map['httpIdleTimeoutSeconds'] == null ? null : (map['httpIdleTimeoutSeconds'] as int).input(),
      ip: map['ip'] == null ? null : (map['ip'] as String).input(),
      ipv6: map['ipv6'] == null ? null : (map['ipv6'] as String).input(),
      loadBalancerUrn: map['loadBalancerUrn'] == null ? null : (map['loadBalancerUrn'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      network: map['network'] == null ? null : (map['network'] as String).input(),
      networkStack: map['networkStack'] == null ? null : (map['networkStack'] as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId'] as String).input(),
      redirectHttpToHttps: map['redirectHttpToHttps'] == null ? null : (map['redirectHttpToHttps'] as bool).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      size: map['size'] == null ? null : (map['size'] as String).input(),
      sizeUnit: map['sizeUnit'] == null ? null : (map['sizeUnit'] as int).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      stickySessions: map['stickySessions'] == null ? null : (LoadBalancerStickySessions.fromMap((map['stickySessions'] as Map).cast<String, dynamic>())).input(),
      targetLoadBalancerIds: map['targetLoadBalancerIds'] == null ? null : ((map['targetLoadBalancerIds'] as List).cast<String>()).input(),
      tlsCipherPolicy: map['tlsCipherPolicy'] == null ? null : (map['tlsCipherPolicy'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      vpcUuid: map['vpcUuid'] == null ? null : (map['vpcUuid'] as String).input(),
    );
  }
}

