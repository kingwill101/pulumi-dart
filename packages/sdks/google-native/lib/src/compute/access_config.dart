// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_config_network_tier.dart';
import 'access_config_type.dart';

/// An access configuration attached to an instance's network interface. Only one access config per instance is supported.
class AccessConfig {
  /// Applies to ipv6AccessConfigs only. The first IPv6 address of the external IPv6 range associated with this instance, prefix length is stored in externalIpv6PrefixLength in ipv6AccessConfig. To use a static external IP address, it must be unused and in the same region as the instance's zone. If not specified, Google Cloud will automatically assign an external IPv6 address from the instance's subnetwork.
  final pulumi.Input<String>? externalIpv6;

  /// Applies to ipv6AccessConfigs only. The prefix length of the external IPv6 range.
  final pulumi.Input<int>? externalIpv6PrefixLength;

  /// The name of this access configuration. In accessConfigs (IPv4), the default and recommended name is External NAT, but you can use any arbitrary string, such as My external IP or Network Access. In ipv6AccessConfigs, the recommend name is External IPv6.
  final pulumi.Input<String>? name;

  /// Applies to accessConfigs (IPv4) only. An external IP address associated with this instance. Specify an unused static external IP address available to the project or leave this field undefined to use an IP from a shared ephemeral IP address pool. If you specify a static external IP address, it must live in the same region as the zone of the instance.
  final pulumi.Input<String>? natIP;

  /// This signifies the networking tier used for configuring this access configuration and can only take the following values: PREMIUM, STANDARD. If an AccessConfig is specified without a valid external IP address, an ephemeral IP will be created with this networkTier. If an AccessConfig with a valid external IP address is specified, it must match that of the networkTier associated with the Address resource owning that IP.
  final pulumi.Input<AccessConfigNetworkTier>? networkTier;

  /// The DNS domain name for the public PTR record. You can set this field only if the `setPublicPtr` field is enabled in accessConfig. If this field is unspecified in ipv6AccessConfig, a default PTR record will be createc for first IP in associated external IPv6 range.
  final pulumi.Input<String>? publicPtrDomainName;

  /// Specifies whether a public DNS 'A' record should be created for the external IP address of this access configuration.
  final pulumi.Input<bool>? setPublicDns;

  /// Specifies whether a public DNS 'PTR' record should be created to map the external IP address of the instance to a DNS domain name. This field is not used in ipv6AccessConfig. A default PTR record will be created if the VM has external IPv6 range associated.
  final pulumi.Input<bool>? setPublicPtr;

  /// The type of configuration. In accessConfigs (IPv4), the default and only option is ONE_TO_ONE_NAT. In ipv6AccessConfigs, the default and only option is DIRECT_IPV6.
  final pulumi.Input<AccessConfigType>? type;

  /// Creates a new [AccessConfig].
  /// [externalIpv6] Applies to ipv6AccessConfigs only. The first IPv6 address of the external IPv6 range associated with this instance, prefix length is stored in externalIpv6PrefixLength in ipv6AccessConfig. To use a static external IP address, it must be unused and in the same region as the instance's zone. If not specified, Google Cloud will automatically assign an external IPv6 address from the instance's subnetwork.
  /// [externalIpv6PrefixLength] Applies to ipv6AccessConfigs only. The prefix length of the external IPv6 range.
  /// [name] The name of this access configuration. In accessConfigs (IPv4), the default and recommended name is External NAT, but you can use any arbitrary string, such as My external IP or Network Access. In ipv6AccessConfigs, the recommend name is External IPv6.
  /// [natIP] Applies to accessConfigs (IPv4) only. An external IP address associated with this instance. Specify an unused static external IP address available to the project or leave this field undefined to use an IP from a shared ephemeral IP address pool. If you specify a static external IP address, it must live in the same region as the zone of the instance.
  /// [networkTier] This signifies the networking tier used for configuring this access configuration and can only take the following values: PREMIUM, STANDARD. If an AccessConfig is specified without a valid external IP address, an ephemeral IP will be created with this networkTier. If an AccessConfig with a valid external IP address is specified, it must match that of the networkTier associated with the Address resource owning that IP.
  /// [publicPtrDomainName] The DNS domain name for the public PTR record. You can set this field only if the `setPublicPtr` field is enabled in accessConfig. If this field is unspecified in ipv6AccessConfig, a default PTR record will be createc for first IP in associated external IPv6 range.
  /// [setPublicDns] Specifies whether a public DNS 'A' record should be created for the external IP address of this access configuration.
  /// [setPublicPtr] Specifies whether a public DNS 'PTR' record should be created to map the external IP address of the instance to a DNS domain name. This field is not used in ipv6AccessConfig. A default PTR record will be created if the VM has external IPv6 range associated.
  /// [type] The type of configuration. In accessConfigs (IPv4), the default and only option is ONE_TO_ONE_NAT. In ipv6AccessConfigs, the default and only option is DIRECT_IPV6.
  AccessConfig({
    this.externalIpv6,
    this.externalIpv6PrefixLength,
    this.name,
    this.natIP,
    this.networkTier,
    this.publicPtrDomainName,
    this.setPublicDns,
    this.setPublicPtr,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalIpv6': ?externalIpv6,
      'externalIpv6PrefixLength': ?externalIpv6PrefixLength,
      'name': ?name,
      'natIP': ?natIP,
      'networkTier':
          ?pulumi.Input.mapOptionalInputValue<AccessConfigNetworkTier, String>(
            networkTier,
            (value) => value.wireValue,
          ),
      'publicPtrDomainName': ?publicPtrDomainName,
      'setPublicDns': ?setPublicDns,
      'setPublicPtr': ?setPublicPtr,
      'type': ?pulumi.Input.mapOptionalInputValue<AccessConfigType, String>(
        type,
        (value) => value.wireValue,
      ),
    };
  }

  factory AccessConfig.fromMap(Map<String, dynamic> map) {
    return AccessConfig(
      externalIpv6: (() {
        final guardedValue = map['externalIpv6'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      externalIpv6PrefixLength: (() {
        final guardedValue = map['externalIpv6PrefixLength'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      natIP: (() {
        final guardedValue = map['natIP'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkTier: (() {
        final guardedValue = map['networkTier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AccessConfigNetworkTier.fromValue(guardedValue as String),
        );
      })(),
      publicPtrDomainName: (() {
        final guardedValue = map['publicPtrDomainName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      setPublicDns: (() {
        final guardedValue = map['setPublicDns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      setPublicPtr: (() {
        final guardedValue = map['setPublicPtr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AccessConfigType.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
