// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_segment.dart';

/// Input properties used for looking up and filtering Network resources.
class NetworkState {
  /// The administrative state of the network.
  /// Acceptable values are "true" and "false". Changing this value updates the
  /// state of the existing network.
  final pulumi.Input<bool>? adminStateUp;
  /// The collection of tags assigned on the network, which have been
  /// explicitly and implicitly added.
  final pulumi.Input<List<String>>? allTags;
  /// An availability zone is used to make
  /// network resources highly available. Used for resources with high availability
  /// so that they are scheduled on different availability zones. Changing this
  /// creates a new network.
  final pulumi.Input<List<String>>? availabilityZoneHints;
  /// Human-readable description of the network. Changing this
  /// updates the name of the existing network.
  final pulumi.Input<String>? description;
  /// The network DNS domain. Available, when Neutron DNS
  /// extension is enabled. The `dns_domain` of a network in conjunction with the
  /// `dns_name` attribute of its ports will be published in an external DNS
  /// service when Neutron is configured to integrate with such a service.
  final pulumi.Input<String>? dnsDomain;
  /// Specifies whether the network resource has the
  /// external routing facility. Valid values are true and false. Defaults to
  /// false. Changing this updates the external attribute of the existing network.
  final pulumi.Input<bool>? external;
  /// The network MTU. Available for read-only, when Neutron
  /// `net-mtu` extension is enabled. Available for the modification, when
  /// Neutron `net-mtu-writable` extension is enabled.
  final pulumi.Input<int>? mtu;
  /// The name of the network. Changing this updates the name of
  /// the existing network.
  final pulumi.Input<String>? name;
  /// Whether to explicitly enable or disable
  /// port security on the network. Port Security is usually enabled by default, so
  /// omitting this argument will usually result in a value of "true". Setting this
  /// explicitly to `false` will disable port security. Valid values are `true` and
  /// `false`.
  final pulumi.Input<bool>? portSecurityEnabled;
  /// Reference to the associated QoS policy.
  final pulumi.Input<String>? qosPolicyId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a Neutron network. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// network.
  final pulumi.Input<String>? region;
  /// An array of one or more provider segment objects.
  /// Note: most Networking plug-ins (e.g. ML2 Plugin) and drivers do not support
  /// updating any provider related segments attributes. Check your plug-in whether
  /// it supports updating.
  final pulumi.Input<List<NetworkSegment>>? segments;
  /// Specifies whether the network resource can be accessed
  /// by any tenant or not. Changing this updates the sharing capabilities of the
  /// existing network.
  final pulumi.Input<bool>? shared;
  /// A set of string tags for the network.
  final pulumi.Input<List<String>>? tags;
  /// The owner of the network. Required if admin wants to
  /// create a network for another tenant. Changing this creates a new network.
  final pulumi.Input<String>? tenantId;
  /// Specifies whether the network resource has the
  /// VLAN transparent attribute set. Valid values are true and false. Defaults to
  /// false. Changing this updates the `transparent_vlan` attribute of the existing
  /// network.
  final pulumi.Input<bool>? transparentVlan;
  /// Map of additional options.
  final pulumi.Input<Map<String, String>>? valueSpecs;

  /// Creates a new [NetworkState].
  /// [adminStateUp] The administrative state of the network.
  /// [allTags] The collection of tags assigned on the network, which have been
  /// [availabilityZoneHints] An availability zone is used to make
  /// [description] Human-readable description of the network. Changing this
  /// [dnsDomain] The network DNS domain. Available, when Neutron DNS
  /// [external] Specifies whether the network resource has the
  /// [mtu] The network MTU. Available for read-only, when Neutron
  /// [name] The name of the network. Changing this updates the name of
  /// [portSecurityEnabled] Whether to explicitly enable or disable
  /// [qosPolicyId] Reference to the associated QoS policy.
  /// [region] The region in which to obtain the V2 Networking client.
  /// [segments] An array of one or more provider segment objects.
  /// [shared] Specifies whether the network resource can be accessed
  /// [tags] A set of string tags for the network.
  /// [tenantId] The owner of the network. Required if admin wants to
  /// [transparentVlan] Specifies whether the network resource has the
  /// [valueSpecs] Map of additional options.
  NetworkState({
    pulumi.Output<bool>? adminStateUp,
    pulumi.Output<List<String>>? allTags,
    pulumi.Output<List<String>>? availabilityZoneHints,
    pulumi.Output<String>? description,
    pulumi.Output<String>? dnsDomain,
    pulumi.Output<bool>? external,
    pulumi.Output<int>? mtu,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? portSecurityEnabled,
    pulumi.Output<String>? qosPolicyId,
    pulumi.Output<String>? region,
    pulumi.Output<List<NetworkSegment>>? segments,
    pulumi.Output<bool>? shared,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<String>? tenantId,
    pulumi.Output<bool>? transparentVlan,
    pulumi.Output<Map<String, String>>? valueSpecs,
  }) :
      adminStateUp = pulumi.Input.asOptionalInput<bool>(adminStateUp),
      allTags = pulumi.Input.asOptionalInput<List<String>>(allTags),
      availabilityZoneHints = pulumi.Input.asOptionalInput<List<String>>(availabilityZoneHints),
      description = pulumi.Input.asOptionalInput<String>(description),
      dnsDomain = pulumi.Input.asOptionalInput<String>(dnsDomain),
      external = pulumi.Input.asOptionalInput<bool>(external),
      mtu = pulumi.Input.asOptionalInput<int>(mtu),
      name = pulumi.Input.asOptionalInput<String>(name),
      portSecurityEnabled = pulumi.Input.asOptionalInput<bool>(portSecurityEnabled),
      qosPolicyId = pulumi.Input.asOptionalInput<String>(qosPolicyId),
      region = pulumi.Input.asOptionalInput<String>(region),
      segments = pulumi.Input.asOptionalInput<List<NetworkSegment>>(segments),
      shared = pulumi.Input.asOptionalInput<bool>(shared),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId),
      transparentVlan = pulumi.Input.asOptionalInput<bool>(transparentVlan),
      valueSpecs = pulumi.Input.asOptionalInput<Map<String, String>>(valueSpecs);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStateUp': ?adminStateUp,
      'allTags': ?allTags,
      'availabilityZoneHints': ?availabilityZoneHints,
      'description': ?description,
      'dnsDomain': ?dnsDomain,
      'external': ?external,
      'mtu': ?mtu,
      'name': ?name,
      'portSecurityEnabled': ?portSecurityEnabled,
      'qosPolicyId': ?qosPolicyId,
      'region': ?region,
      'segments': ?pulumi.Input.mapOptionalInputValue<List<NetworkSegment>, List<Map<String, dynamic>>>(segments, (value) => pulumi.Input.encodeList<NetworkSegment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'shared': ?shared,
      'tags': ?tags,
      'tenantId': ?tenantId,
      'transparentVlan': ?transparentVlan,
      'valueSpecs': ?valueSpecs,
    };
  }

  factory NetworkState.fromMap(Map<String, dynamic> map) {
    return NetworkState(
      adminStateUp: map['adminStateUp'] == null ? null : pulumi.Output.create<bool>(map['adminStateUp'] as bool),
      allTags: map['allTags'] == null ? null : pulumi.Output.create<List<String>>((map['allTags'] as List).cast<String>()),
      availabilityZoneHints: map['availabilityZoneHints'] == null ? null : pulumi.Output.create<List<String>>((map['availabilityZoneHints'] as List).cast<String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dnsDomain: map['dnsDomain'] == null ? null : pulumi.Output.create<String>(map['dnsDomain'] as String),
      external: map['external'] == null ? null : pulumi.Output.create<bool>(map['external'] as bool),
      mtu: map['mtu'] == null ? null : pulumi.Output.create<int>(map['mtu'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      portSecurityEnabled: map['portSecurityEnabled'] == null ? null : pulumi.Output.create<bool>(map['portSecurityEnabled'] as bool),
      qosPolicyId: map['qosPolicyId'] == null ? null : pulumi.Output.create<String>(map['qosPolicyId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      segments: map['segments'] == null ? null : pulumi.Output.create<List<NetworkSegment>>(pulumi.Input.decodeList<NetworkSegment>(map['segments'], (value) => NetworkSegment.fromMap((value as Map).cast<String, dynamic>()))),
      shared: map['shared'] == null ? null : pulumi.Output.create<bool>(map['shared'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
      transparentVlan: map['transparentVlan'] == null ? null : pulumi.Output.create<bool>(map['transparentVlan'] as bool),
      valueSpecs: map['valueSpecs'] == null ? null : pulumi.Output.create<Map<String, String>>((map['valueSpecs'] as Map).cast<String, String>()),
    );
  }
}

