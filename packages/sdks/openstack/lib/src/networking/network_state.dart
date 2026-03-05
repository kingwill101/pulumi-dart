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
    this.adminStateUp,
    this.allTags,
    this.availabilityZoneHints,
    this.description,
    this.dnsDomain,
    this.external,
    this.mtu,
    this.name,
    this.portSecurityEnabled,
    this.qosPolicyId,
    this.region,
    this.segments,
    this.shared,
    this.tags,
    this.tenantId,
    this.transparentVlan,
    this.valueSpecs,
  });

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
      adminStateUp: (() { final guardedValue = map['adminStateUp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allTags: (() { final guardedValue = map['allTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      availabilityZoneHints: (() { final guardedValue = map['availabilityZoneHints']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsDomain: (() { final guardedValue = map['dnsDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      external: (() { final guardedValue = map['external']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mtu: (() { final guardedValue = map['mtu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      portSecurityEnabled: (() { final guardedValue = map['portSecurityEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      qosPolicyId: (() { final guardedValue = map['qosPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      segments: (() { final guardedValue = map['segments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkSegment>(guardedValue, (value) => NetworkSegment.fromMap((value as Map).cast<String, dynamic>()))); })(),
      shared: (() { final guardedValue = map['shared']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transparentVlan: (() { final guardedValue = map['transparentVlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      valueSpecs: (() { final guardedValue = map['valueSpecs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

