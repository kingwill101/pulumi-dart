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

  /// Creates a new [LoadBalancerArgs].
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
  /// [name] The Load Balancer name
  /// [network] The type of network the Load Balancer is accessible from. It must be either of `INTERNAL` or `EXTERNAL`. Defaults to `EXTERNAL`.
  /// [networkStack] The network stack determines the allocation of ipv4/ipv6 addresses to the load balancer. It must be either of `IPV4` or `DUALSTACK`. Defaults to `IPV4`.
  /// [projectId] The ID of the project that the load balancer is associated with. If no ID is provided at creation, the load balancer associates with the user's default project.
  /// [redirectHttpToHttps] A boolean value indicating whether
  /// [region] The region to start in
  /// [size] The size of the Load Balancer. It must be either `lb-small`, `lb-medium`, or `lb-large`. Defaults to `lb-small`. Only one of `size` or `size_unit` may be provided.
  /// [sizeUnit] The size of the Load Balancer. It must be in the range (1, 200). Defaults to `1`. Only one of `size` or `size_unit` may be provided.
  /// [stickySessions] A `sticky_sessions` block to be assigned to the
  /// [targetLoadBalancerIds] A list of Load Balancer IDs to be attached behind a Global Load Balancer.
  /// [tlsCipherPolicy] The tls cipher policy controls the cipher suites to be used by the load balancer. It must be either of `DEFAULT` or `STRONG`. Defaults to `DEFAULT`.
  /// [type] The type of the Load Balancer. It must be either of `REGIONAL`, `REGIONAL_NETWORK`, or `GLOBAL`. Defaults to `REGIONAL`.
  /// [vpcUuid] The ID of the VPC where the load balancer will be located.
  LoadBalancerArgs({
    pulumi.Output<String>? algorithm,
    pulumi.Output<bool>? disableLetsEncryptDnsRecords,
    pulumi.Output<List<LoadBalancerDomain>>? domains,
    pulumi.Output<List<int>>? dropletIds,
    pulumi.Output<String>? dropletTag,
    pulumi.Output<bool>? enableBackendKeepalive,
    pulumi.Output<bool>? enableProxyProtocol,
    pulumi.Output<LoadBalancerFirewall>? firewall,
    pulumi.Output<List<LoadBalancerForwardingRule>>? forwardingRules,
    pulumi.Output<LoadBalancerGlbSettings>? glbSettings,
    pulumi.Output<LoadBalancerHealthcheck>? healthcheck,
    pulumi.Output<int>? httpIdleTimeoutSeconds,
    pulumi.Output<String>? name,
    pulumi.Output<String>? network,
    pulumi.Output<String>? networkStack,
    pulumi.Output<String>? projectId,
    pulumi.Output<bool>? redirectHttpToHttps,
    pulumi.Output<String>? region,
    pulumi.Output<String>? size,
    pulumi.Output<int>? sizeUnit,
    pulumi.Output<LoadBalancerStickySessions>? stickySessions,
    pulumi.Output<List<String>>? targetLoadBalancerIds,
    pulumi.Output<String>? tlsCipherPolicy,
    pulumi.Output<String>? type,
    pulumi.Output<String>? vpcUuid,
  }) :
      algorithm = pulumi.Input.asOptionalInput<String>(algorithm),
      disableLetsEncryptDnsRecords = pulumi.Input.asOptionalInput<bool>(disableLetsEncryptDnsRecords),
      domains = pulumi.Input.asOptionalInput<List<LoadBalancerDomain>>(domains),
      dropletIds = pulumi.Input.asOptionalInput<List<int>>(dropletIds),
      dropletTag = pulumi.Input.asOptionalInput<String>(dropletTag),
      enableBackendKeepalive = pulumi.Input.asOptionalInput<bool>(enableBackendKeepalive),
      enableProxyProtocol = pulumi.Input.asOptionalInput<bool>(enableProxyProtocol),
      firewall = pulumi.Input.asOptionalInput<LoadBalancerFirewall>(firewall),
      forwardingRules = pulumi.Input.asOptionalInput<List<LoadBalancerForwardingRule>>(forwardingRules),
      glbSettings = pulumi.Input.asOptionalInput<LoadBalancerGlbSettings>(glbSettings),
      healthcheck = pulumi.Input.asOptionalInput<LoadBalancerHealthcheck>(healthcheck),
      httpIdleTimeoutSeconds = pulumi.Input.asOptionalInput<int>(httpIdleTimeoutSeconds),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<String>(network),
      networkStack = pulumi.Input.asOptionalInput<String>(networkStack),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      redirectHttpToHttps = pulumi.Input.asOptionalInput<bool>(redirectHttpToHttps),
      region = pulumi.Input.asOptionalInput<String>(region),
      size = pulumi.Input.asOptionalInput<String>(size),
      sizeUnit = pulumi.Input.asOptionalInput<int>(sizeUnit),
      stickySessions = pulumi.Input.asOptionalInput<LoadBalancerStickySessions>(stickySessions),
      targetLoadBalancerIds = pulumi.Input.asOptionalInput<List<String>>(targetLoadBalancerIds),
      tlsCipherPolicy = pulumi.Input.asOptionalInput<String>(tlsCipherPolicy),
      type = pulumi.Input.asOptionalInput<String>(type),
      vpcUuid = pulumi.Input.asOptionalInput<String>(vpcUuid);

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
      'name': ?name,
      'network': ?network,
      'networkStack': ?networkStack,
      'projectId': ?projectId,
      'redirectHttpToHttps': ?redirectHttpToHttps,
      'region': ?region,
      'size': ?size,
      'sizeUnit': ?sizeUnit,
      'stickySessions': ?pulumi.Input.mapOptionalInputValue<LoadBalancerStickySessions, Map<String, dynamic>>(stickySessions, (value) => value.toMap()),
      'targetLoadBalancerIds': ?targetLoadBalancerIds,
      'tlsCipherPolicy': ?tlsCipherPolicy,
      'type': ?type,
      'vpcUuid': ?vpcUuid,
    };
  }

  factory LoadBalancerArgs.fromMap(Map<String, dynamic> map) {
    return LoadBalancerArgs(
      algorithm: map['algorithm'] == null ? null : pulumi.Output.create<String>(map['algorithm'] as String),
      disableLetsEncryptDnsRecords: map['disableLetsEncryptDnsRecords'] == null ? null : pulumi.Output.create<bool>(map['disableLetsEncryptDnsRecords'] as bool),
      domains: map['domains'] == null ? null : pulumi.Output.create<List<LoadBalancerDomain>>(pulumi.Input.decodeList<LoadBalancerDomain>(map['domains'], (value) => LoadBalancerDomain.fromMap((value as Map).cast<String, dynamic>()))),
      dropletIds: map['dropletIds'] == null ? null : pulumi.Output.create<List<int>>((map['dropletIds'] as List).cast<int>()),
      dropletTag: map['dropletTag'] == null ? null : pulumi.Output.create<String>(map['dropletTag'] as String),
      enableBackendKeepalive: map['enableBackendKeepalive'] == null ? null : pulumi.Output.create<bool>(map['enableBackendKeepalive'] as bool),
      enableProxyProtocol: map['enableProxyProtocol'] == null ? null : pulumi.Output.create<bool>(map['enableProxyProtocol'] as bool),
      firewall: map['firewall'] == null ? null : pulumi.Output.create<LoadBalancerFirewall>(LoadBalancerFirewall.fromMap((map['firewall'] as Map).cast<String, dynamic>())),
      forwardingRules: map['forwardingRules'] == null ? null : pulumi.Output.create<List<LoadBalancerForwardingRule>>(pulumi.Input.decodeList<LoadBalancerForwardingRule>(map['forwardingRules'], (value) => LoadBalancerForwardingRule.fromMap((value as Map).cast<String, dynamic>()))),
      glbSettings: map['glbSettings'] == null ? null : pulumi.Output.create<LoadBalancerGlbSettings>(LoadBalancerGlbSettings.fromMap((map['glbSettings'] as Map).cast<String, dynamic>())),
      healthcheck: map['healthcheck'] == null ? null : pulumi.Output.create<LoadBalancerHealthcheck>(LoadBalancerHealthcheck.fromMap((map['healthcheck'] as Map).cast<String, dynamic>())),
      httpIdleTimeoutSeconds: map['httpIdleTimeoutSeconds'] == null ? null : pulumi.Output.create<int>(map['httpIdleTimeoutSeconds'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<String>(map['network'] as String),
      networkStack: map['networkStack'] == null ? null : pulumi.Output.create<String>(map['networkStack'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      redirectHttpToHttps: map['redirectHttpToHttps'] == null ? null : pulumi.Output.create<bool>(map['redirectHttpToHttps'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      size: map['size'] == null ? null : pulumi.Output.create<String>(map['size'] as String),
      sizeUnit: map['sizeUnit'] == null ? null : pulumi.Output.create<int>(map['sizeUnit'] as int),
      stickySessions: map['stickySessions'] == null ? null : pulumi.Output.create<LoadBalancerStickySessions>(LoadBalancerStickySessions.fromMap((map['stickySessions'] as Map).cast<String, dynamic>())),
      targetLoadBalancerIds: map['targetLoadBalancerIds'] == null ? null : pulumi.Output.create<List<String>>((map['targetLoadBalancerIds'] as List).cast<String>()),
      tlsCipherPolicy: map['tlsCipherPolicy'] == null ? null : pulumi.Output.create<String>(map['tlsCipherPolicy'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      vpcUuid: map['vpcUuid'] == null ? null : pulumi.Output.create<String>(map['vpcUuid'] as String),
    );
  }
}

