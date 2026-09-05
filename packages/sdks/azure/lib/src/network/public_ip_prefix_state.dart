// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PublicIpPrefix resources.
class PublicIpPrefixState {
  /// The Custom IP Prefix ID associated with the Public IP Prefix. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** When `ipVersion` is set to `IPv6`, `customIpPrefixId` must reference a regional (child) range rather than a global (parent) range. For more details on creating a Public IP Prefix from a custom IP prefix, see [here](https://learn.microsoft.com/en-us/azure/virtual-network/ip-services/manage-custom-ip-address-prefix#create-a-public-ip-prefix-from-a-custom-ip-prefix).
  final pulumi.Input<String?>? customIpPrefixId;
  /// The IP address prefix value that was allocated.
  final pulumi.Input<String?>? ipPrefix;
  /// The IP Version to use, `IPv6` or `IPv4`. Changing this forces a new resource to be created. Default is `IPv4`.
  final pulumi.Input<String?>? ipVersion;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// Specifies the name of the Public IP Prefix resource . Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// Specifies the number of bits of the prefix. The value can be set between 0 (4,294,967,296 addresses) and 31 (2 addresses). Defaults to `28`(16 addresses). Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** There may be Public IP address limits on the subscription . [More information available here](https://docs.microsoft.com/azure/azure-subscription-service-limits?toc=%2fazure%2fvirtual-network%2ftoc.json#publicip-address)
  final pulumi.Input<int?>? prefixLength;
  /// The name of the resource group in which to create the Public IP Prefix. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// The SKU of the Public IP Prefix. Possible values are `Standard` and `StandardV2`. Defaults to `Standard`. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? sku;
  /// The SKU Tier that should be used for the Public IP Prefix. Possible values are `Regional` and `Global`. Defaults to `Regional`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** When `skuTier` is set to `Global`, `sku` must be set to `Standard`.
  final pulumi.Input<String?>? skuTier;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Specifies a list of Availability Zones in which this Public IP Prefix should be located. Changing this forces a new Public IP Prefix to be created.
  ///
  /// &gt; **Note:** Availability Zones are [only supported in several regions at this time](https://docs.microsoft.com/azure/availability-zones/az-overview).
  final pulumi.Input<List<String>?>? zones;

  /// Creates a new [PublicIpPrefixState].
  /// [customIpPrefixId] The Custom IP Prefix ID associated with the Public IP Prefix. Changing this forces a new resource to be created.
  /// [ipPrefix] The IP address prefix value that was allocated.
  /// [ipVersion] The IP Version to use, `IPv6` or `IPv4`. Changing this forces a new resource to be created. Default is `IPv4`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Public IP Prefix resource . Changing this forces a new resource to be created.
  /// [prefixLength] Specifies the number of bits of the prefix. The value can be set between 0 (4,294,967,296 addresses) and 31 (2 addresses). Defaults to `28`(16 addresses). Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the Public IP Prefix. Changing this forces a new resource to be created.
  /// [sku] The SKU of the Public IP Prefix. Possible values are `Standard` and `StandardV2`. Defaults to `Standard`. Changing this forces a new resource to be created.
  /// [skuTier] The SKU Tier that should be used for the Public IP Prefix. Possible values are `Regional` and `Global`. Defaults to `Regional`. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zones] Specifies a list of Availability Zones in which this Public IP Prefix should be located. Changing this forces a new Public IP Prefix to be created.
  const PublicIpPrefixState({
    this.customIpPrefixId,
    this.ipPrefix,
    this.ipVersion,
    this.location,
    this.name,
    this.prefixLength,
    this.resourceGroupName,
    this.sku,
    this.skuTier,
    this.tags,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customIpPrefixId': ?customIpPrefixId,
      'ipPrefix': ?ipPrefix,
      'ipVersion': ?ipVersion,
      'location': ?location,
      'name': ?name,
      'prefixLength': ?prefixLength,
      'resourceGroupName': ?resourceGroupName,
      'sku': ?sku,
      'skuTier': ?skuTier,
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory PublicIpPrefixState.fromMap(Map<String, dynamic> map) {
    return PublicIpPrefixState(
      customIpPrefixId: (() { final guardedValue = map['customIpPrefixId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipPrefix: (() { final guardedValue = map['ipPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipVersion: (() { final guardedValue = map['ipVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefixLength: (() { final guardedValue = map['prefixLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skuTier: (() { final guardedValue = map['skuTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
