// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PublicIp resources.
class PublicIpState {
  /// Defines the allocation method for this IP address. Possible values are `Static` or `Dynamic`.
  ///
  /// > **Note** `Dynamic` Public IP Addresses aren't allocated until they're assigned to a resource (such as a Virtual Machine or a Load Balancer) by design within Azure. See `ip_address` argument.
  final pulumi.Input<String>? allocationMethod;
  /// The DDoS protection mode of the public IP. Possible values are `Disabled`, `Enabled`, and `VirtualNetworkInherited`. Defaults to `VirtualNetworkInherited`.
  final pulumi.Input<String>? ddosProtectionMode;
  /// The ID of DDoS protection plan associated with the public IP.
  ///
  /// > **Note:** `ddos_protection_plan_id` can only be set when `ddos_protection_mode` is `Enabled`.
  final pulumi.Input<String>? ddosProtectionPlanId;
  /// Label for the Domain Name. Will be used to make up the FQDN. If a domain name label is specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system.
  final pulumi.Input<String>? domainNameLabel;
  /// Scope for the domain name label. If a domain name label scope is specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system with a hashed value includes in FQDN. Possible values are `NoReuse`, `ResourceGroupReuse`, `SubscriptionReuse` and `TenantReuse`.
  final pulumi.Input<String>? domainNameLabelScope;
  /// Specifies the Edge Zone within the Azure Region where this Public IP should exist. Changing this forces a new Public IP to be created.
  final pulumi.Input<String>? edgeZone;
  /// Fully qualified domain name of the A DNS record associated with the public IP. `domain_name_label` must be specified to get the `fqdn`. This is the concatenation of the `domain_name_label` and the regionalized DNS zone
  final pulumi.Input<String>? fqdn;
  /// Specifies the timeout for the TCP idle connection. The value can be set between 4 and 30 minutes.
  final pulumi.Input<int>? idleTimeoutInMinutes;
  /// The IP address value that was allocated.
  final pulumi.Input<String>? ipAddress;
  /// A mapping of IP tags to assign to the public IP. Changing this forces a new resource to be created.
  ///
  /// > **Note** IP Tag `RoutingPreference` requires multiple `zones` and `Standard` SKU to be set.
  final pulumi.Input<Map<String, String>>? ipTags;
  /// The IP Version to use, IPv6 or IPv4. Changing this forces a new resource to be created. Defaults to `IPv4`.
  ///
  /// > **Note** Only `static` IP address allocation is supported for IPv6.
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
  /// The SKU of the Public IP. Accepted values are `Basic` and `Standard`. Defaults to `Standard`. Changing this forces a new resource to be created.
  ///
  /// > **Note** Public IP Standard SKUs require `allocation_method` to be set to `Static`.
  final pulumi.Input<String>? sku;
  /// The SKU Tier that should be used for the Public IP. Possible values are `Regional` and `Global`. Defaults to `Regional`. Changing this forces a new resource to be created.
  ///
  /// > **Note** When `sku_tier` is set to `Global`, `sku` must be set to `Standard`.
  final pulumi.Input<String>? skuTier;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// A collection containing the availability zone to allocate the Public IP in. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Availability Zones are only supported with a [Standard SKU](https://docs.microsoft.com/azure/virtual-network/virtual-network-ip-addresses-overview-arm#standard) and [in select regions](https://docs.microsoft.com/azure/availability-zones/az-overview) at this time. Standard SKU Public IP Addresses that do not specify a zone are **not** zone-redundant by default.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [PublicIpState].
  /// [allocationMethod] Defines the allocation method for this IP address. Possible values are `Static` or `Dynamic`.
  /// [ddosProtectionMode] The DDoS protection mode of the public IP. Possible values are `Disabled`, `Enabled`, and `VirtualNetworkInherited`. Defaults to `VirtualNetworkInherited`.
  /// [ddosProtectionPlanId] The ID of DDoS protection plan associated with the public IP.
  /// [domainNameLabel] Label for the Domain Name. Will be used to make up the FQDN. If a domain name label is specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system.
  /// [domainNameLabelScope] Scope for the domain name label. If a domain name label scope is specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system with a hashed value includes in FQDN. Possible values are `NoReuse`, `ResourceGroupReuse`, `SubscriptionReuse` and `TenantReuse`.
  /// [edgeZone] Specifies the Edge Zone within the Azure Region where this Public IP should exist. Changing this forces a new Public IP to be created.
  /// [fqdn] Fully qualified domain name of the A DNS record associated with the public IP. `domain_name_label` must be specified to get the `fqdn`. This is the concatenation of the `domain_name_label` and the regionalized DNS zone
  /// [idleTimeoutInMinutes] Specifies the timeout for the TCP idle connection. The value can be set between 4 and 30 minutes.
  /// [ipAddress] The IP address value that was allocated.
  /// [ipTags] A mapping of IP tags to assign to the public IP. Changing this forces a new resource to be created.
  /// [ipVersion] The IP Version to use, IPv6 or IPv4. Changing this forces a new resource to be created. Defaults to `IPv4`.
  /// [location] Specifies the supported Azure location where the Public IP should exist. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Public IP. Changing this forces a new Public IP to be created.
  /// [publicIpPrefixId] If specified then public IP address allocated will be provided from the public IP prefix resource. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where this Public IP should exist. Changing this forces a new Public IP to be created.
  /// [reverseFqdn] A fully qualified domain name that resolves to this public IP address. If the reverseFqdn is specified, then a PTR DNS record is created pointing from the IP address in the in-addr.arpa domain to the reverse FQDN.
  /// [sku] The SKU of the Public IP. Accepted values are `Basic` and `Standard`. Defaults to `Standard`. Changing this forces a new resource to be created.
  /// [skuTier] The SKU Tier that should be used for the Public IP. Possible values are `Regional` and `Global`. Defaults to `Regional`. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zones] A collection containing the availability zone to allocate the Public IP in. Changing this forces a new resource to be created.
  PublicIpState({
    pulumi.Output<String>? allocationMethod,
    pulumi.Output<String>? ddosProtectionMode,
    pulumi.Output<String>? ddosProtectionPlanId,
    pulumi.Output<String>? domainNameLabel,
    pulumi.Output<String>? domainNameLabelScope,
    pulumi.Output<String>? edgeZone,
    pulumi.Output<String>? fqdn,
    pulumi.Output<int>? idleTimeoutInMinutes,
    pulumi.Output<String>? ipAddress,
    pulumi.Output<Map<String, String>>? ipTags,
    pulumi.Output<String>? ipVersion,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? publicIpPrefixId,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? reverseFqdn,
    pulumi.Output<String>? sku,
    pulumi.Output<String>? skuTier,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<String>>? zones,
  }) :
      allocationMethod = pulumi.Input.asOptionalInput<String>(allocationMethod),
      ddosProtectionMode = pulumi.Input.asOptionalInput<String>(ddosProtectionMode),
      ddosProtectionPlanId = pulumi.Input.asOptionalInput<String>(ddosProtectionPlanId),
      domainNameLabel = pulumi.Input.asOptionalInput<String>(domainNameLabel),
      domainNameLabelScope = pulumi.Input.asOptionalInput<String>(domainNameLabelScope),
      edgeZone = pulumi.Input.asOptionalInput<String>(edgeZone),
      fqdn = pulumi.Input.asOptionalInput<String>(fqdn),
      idleTimeoutInMinutes = pulumi.Input.asOptionalInput<int>(idleTimeoutInMinutes),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      ipTags = pulumi.Input.asOptionalInput<Map<String, String>>(ipTags),
      ipVersion = pulumi.Input.asOptionalInput<String>(ipVersion),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicIpPrefixId = pulumi.Input.asOptionalInput<String>(publicIpPrefixId),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      reverseFqdn = pulumi.Input.asOptionalInput<String>(reverseFqdn),
      sku = pulumi.Input.asOptionalInput<String>(sku),
      skuTier = pulumi.Input.asOptionalInput<String>(skuTier),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

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
      allocationMethod: map['allocationMethod'] == null ? null : pulumi.Output.create<String>(map['allocationMethod'] as String),
      ddosProtectionMode: map['ddosProtectionMode'] == null ? null : pulumi.Output.create<String>(map['ddosProtectionMode'] as String),
      ddosProtectionPlanId: map['ddosProtectionPlanId'] == null ? null : pulumi.Output.create<String>(map['ddosProtectionPlanId'] as String),
      domainNameLabel: map['domainNameLabel'] == null ? null : pulumi.Output.create<String>(map['domainNameLabel'] as String),
      domainNameLabelScope: map['domainNameLabelScope'] == null ? null : pulumi.Output.create<String>(map['domainNameLabelScope'] as String),
      edgeZone: map['edgeZone'] == null ? null : pulumi.Output.create<String>(map['edgeZone'] as String),
      fqdn: map['fqdn'] == null ? null : pulumi.Output.create<String>(map['fqdn'] as String),
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : pulumi.Output.create<int>(map['idleTimeoutInMinutes'] as int),
      ipAddress: map['ipAddress'] == null ? null : pulumi.Output.create<String>(map['ipAddress'] as String),
      ipTags: map['ipTags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['ipTags'] as Map).cast<String, String>()),
      ipVersion: map['ipVersion'] == null ? null : pulumi.Output.create<String>(map['ipVersion'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publicIpPrefixId: map['publicIpPrefixId'] == null ? null : pulumi.Output.create<String>(map['publicIpPrefixId'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      reverseFqdn: map['reverseFqdn'] == null ? null : pulumi.Output.create<String>(map['reverseFqdn'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<String>(map['sku'] as String),
      skuTier: map['skuTier'] == null ? null : pulumi.Output.create<String>(map['skuTier'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      zones: map['zones'] == null ? null : pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

