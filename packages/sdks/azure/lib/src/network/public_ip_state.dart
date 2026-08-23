// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PublicIp resources.
class PublicIpState {
  /// Defines the allocation method for this IP address. Possible values are `Static` or `Dynamic`.
  ///
  /// &gt; **Note** `Dynamic` Public IP Addresses aren't allocated until they're assigned to a resource (such as a Virtual Machine or a Load Balancer) by design within Azure. See `ipAddress` argument.
  ///
  /// &gt; **Note:** `Dynamic` allocation is only available with `Basic` SKU public IP addresses. Since `Basic` SKU public IP addresses have been deprecated (see `sku` below), `Dynamic` allocation is no longer available for new public IP addresses.
  final pulumi.Input<String>? allocationMethod;
  /// The DDoS protection mode of the public IP. Possible values are `Disabled`, `Enabled`, and `VirtualNetworkInherited`. Defaults to `VirtualNetworkInherited`.
  final pulumi.Input<String>? ddosProtectionMode;
  /// The ID of DDoS protection plan associated with the public IP.
  ///
  /// &gt; **Note:** `ddosProtectionPlanId` can only be set when `ddosProtectionMode` is `Enabled`.
  final pulumi.Input<String>? ddosProtectionPlanId;
  /// Label for the Domain Name. Will be used to make up the FQDN. If a domain name label is specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system.
  final pulumi.Input<String>? domainNameLabel;
  /// Scope for the domain name label. If a domain name label scope is specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system with a hashed value includes in FQDN. Possible values are `NoReuse`, `ResourceGroupReuse`, `SubscriptionReuse` and `TenantReuse`.
  final pulumi.Input<String>? domainNameLabelScope;
  /// Specifies the Edge Zone within the Azure Region where this Public IP should exist. Changing this forces a new Public IP to be created.
  final pulumi.Input<String>? edgeZone;
  /// Fully qualified domain name of the A DNS record associated with the public IP. `domainNameLabel` must be specified to get the `fqdn`. This is the concatenation of the `domainNameLabel` and the regionalized DNS zone
  final pulumi.Input<String>? fqdn;
  /// Specifies the timeout for the TCP idle connection. The value can be set between 4 and 30 minutes.
  final pulumi.Input<int>? idleTimeoutInMinutes;
  /// The IP address value that was allocated.
  final pulumi.Input<String>? ipAddress;
  /// A mapping of IP tags to assign to the public IP. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note** IP Tag `RoutingPreference` requires multiple `zones` and `Standard` SKU to be set.
  final pulumi.Input<Map<String, String>>? ipTags;
  /// The IP Version to use, IPv6 or IPv4. Changing this forces a new resource to be created. Defaults to `IPv4`.
  ///
  /// &gt; **Note** Only `Static` IP address allocation is supported for IPv6.
  final pulumi.Input<String>? ipVersion;
  /// Specifies the supported Azure location where the Public IP should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Public IP. Changing this forces a new Public IP to be created.
  final pulumi.Input<String>? name;
  /// If specified then public IP address allocated will be provided from the public IP prefix resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? publicIpPrefixId;
  /// The name of the Resource Group where this Public IP should exist. Changing this forces a new Public IP to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A fully qualified domain name that resolves to this public IP address. If the reverseFqdn is specified, then a PTR DNS record is created pointing from the IP address in the in-addr.arpa domain to the reverse FQDN.
  final pulumi.Input<String>? reverseFqdn;
  /// The SKU of the Public IP. Possible values are `Basic`, `Standard`, and `StandardV2`. Defaults to `Standard`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note** Public IP `Standard` and `StandardV2` SKUs require `allocationMethod` to be set to `Static`.
  ///
  /// &gt; **Note:** `sku` can no longer be set to `Basic` as of 31 March 2025 for new resources. This also affects `allocationMethod` set to `Dynamic`, as it is only available with the `Basic` SKU. Please see the Azure Update [retirement notification](https://azure.microsoft.com/updates/upgrade-to-standard-sku-public-ip-addresses-in-azure-by-30-september-2025-basic-sku-will-be-retired/) for more information.
  final pulumi.Input<String>? sku;
  /// The SKU Tier that should be used for the Public IP. Possible values are `Regional` and `Global`. Defaults to `Regional`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note** When `skuTier` is set to `Global`, `sku` must be set to `Standard`.
  final pulumi.Input<String>? skuTier;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// A collection containing the availability zone to allocate the Public IP in. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Availability Zones are only supported with a [Standard SKU](https://docs.microsoft.com/azure/virtual-network/virtual-network-ip-addresses-overview-arm#standard) and [in select regions](https://docs.microsoft.com/azure/availability-zones/az-overview) at this time. Standard SKU Public IP Addresses that do not specify a zone are **not** zone-redundant by default.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [PublicIpState].
  /// [allocationMethod] Defines the allocation method for this IP address. Possible values are `Static` or `Dynamic`.
  /// [ddosProtectionMode] The DDoS protection mode of the public IP. Possible values are `Disabled`, `Enabled`, and `VirtualNetworkInherited`. Defaults to `VirtualNetworkInherited`.
  /// [ddosProtectionPlanId] The ID of DDoS protection plan associated with the public IP.
  /// [domainNameLabel] Label for the Domain Name. Will be used to make up the FQDN. If a domain name label is specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system.
  /// [domainNameLabelScope] Scope for the domain name label. If a domain name label scope is specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system with a hashed value includes in FQDN. Possible values are `NoReuse`, `ResourceGroupReuse`, `SubscriptionReuse` and `TenantReuse`.
  /// [edgeZone] Specifies the Edge Zone within the Azure Region where this Public IP should exist. Changing this forces a new Public IP to be created.
  /// [fqdn] Fully qualified domain name of the A DNS record associated with the public IP. `domainNameLabel` must be specified to get the `fqdn`. This is the concatenation of the `domainNameLabel` and the regionalized DNS zone
  /// [idleTimeoutInMinutes] Specifies the timeout for the TCP idle connection. The value can be set between 4 and 30 minutes.
  /// [ipAddress] The IP address value that was allocated.
  /// [ipTags] A mapping of IP tags to assign to the public IP. Changing this forces a new resource to be created.
  /// [ipVersion] The IP Version to use, IPv6 or IPv4. Changing this forces a new resource to be created. Defaults to `IPv4`.
  /// [location] Specifies the supported Azure location where the Public IP should exist. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Public IP. Changing this forces a new Public IP to be created.
  /// [publicIpPrefixId] If specified then public IP address allocated will be provided from the public IP prefix resource. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where this Public IP should exist. Changing this forces a new Public IP to be created.
  /// [reverseFqdn] A fully qualified domain name that resolves to this public IP address. If the reverseFqdn is specified, then a PTR DNS record is created pointing from the IP address in the in-addr.arpa domain to the reverse FQDN.
  /// [sku] The SKU of the Public IP. Possible values are `Basic`, `Standard`, and `StandardV2`. Defaults to `Standard`. Changing this forces a new resource to be created.
  /// [skuTier] The SKU Tier that should be used for the Public IP. Possible values are `Regional` and `Global`. Defaults to `Regional`. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zones] A collection containing the availability zone to allocate the Public IP in. Changing this forces a new resource to be created.
  const PublicIpState({
    this.allocationMethod,
    this.ddosProtectionMode,
    this.ddosProtectionPlanId,
    this.domainNameLabel,
    this.domainNameLabelScope,
    this.edgeZone,
    this.fqdn,
    this.idleTimeoutInMinutes,
    this.ipAddress,
    this.ipTags,
    this.ipVersion,
    this.location,
    this.name,
    this.publicIpPrefixId,
    this.resourceGroupName,
    this.reverseFqdn,
    this.sku,
    this.skuTier,
    this.tags,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationMethod': ?allocationMethod,
      'ddosProtectionMode': ?ddosProtectionMode,
      'ddosProtectionPlanId': ?ddosProtectionPlanId,
      'domainNameLabel': ?domainNameLabel,
      'domainNameLabelScope': ?domainNameLabelScope,
      'edgeZone': ?edgeZone,
      'fqdn': ?fqdn,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'ipAddress': ?ipAddress,
      'ipTags': ?ipTags,
      'ipVersion': ?ipVersion,
      'location': ?location,
      'name': ?name,
      'publicIpPrefixId': ?publicIpPrefixId,
      'resourceGroupName': ?resourceGroupName,
      'reverseFqdn': ?reverseFqdn,
      'sku': ?sku,
      'skuTier': ?skuTier,
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory PublicIpState.fromMap(Map<String, dynamic> map) {
    return PublicIpState(
      allocationMethod: (() { final guardedValue = map['allocationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ddosProtectionMode: (() { final guardedValue = map['ddosProtectionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ddosProtectionPlanId: (() { final guardedValue = map['ddosProtectionPlanId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainNameLabel: (() { final guardedValue = map['domainNameLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainNameLabelScope: (() { final guardedValue = map['domainNameLabelScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      edgeZone: (() { final guardedValue = map['edgeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idleTimeoutInMinutes: (() { final guardedValue = map['idleTimeoutInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipTags: (() { final guardedValue = map['ipTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      ipVersion: (() { final guardedValue = map['ipVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIpPrefixId: (() { final guardedValue = map['publicIpPrefixId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reverseFqdn: (() { final guardedValue = map['reverseFqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skuTier: (() { final guardedValue = map['skuTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
