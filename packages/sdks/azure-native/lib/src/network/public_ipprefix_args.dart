// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';
import 'ip_tag.dart';
import 'nat_gateway_network.dart';
import 'public_ipprefix_sku.dart';
import 'sub_resource.dart';

/// {@template pulumi_network_public_ipprefix_args_doc}
/// The set of arguments for PublicIPPrefix.
/// {@endtemplate}
/// {@macro pulumi_network_public_ipprefix_args_doc}
class PublicIPPrefixArgs {
  /// The customIpPrefix that this prefix is associated with.
  final pulumi.Input<SubResource>? customIPPrefix;
  /// The extended location of the public ip address.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The list of tags associated with the public IP prefix.
  final pulumi.Input<List<IpTag>>? ipTags;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// NatGateway of Public IP Prefix.
  final pulumi.Input<NatGatewayNetwork>? natGateway;
  /// The Length of the Public IP Prefix.
  final pulumi.Input<int>? prefixLength;
  /// The public IP address version.
  final pulumi.Input<String>? publicIPAddressVersion;
  /// The name of the public IP prefix.
  final pulumi.Input<String>? publicIpPrefixName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The public IP prefix SKU.
  final pulumi.Input<PublicIPPrefixSku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// A list of availability zones denoting the IP allocated for the resource needs to come from.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [PublicIPPrefixArgs].
  /// [customIPPrefix] The customIpPrefix that this prefix is associated with.
  /// [extendedLocation] The extended location of the public ip address.
  /// [id] Resource ID.
  /// [ipTags] The list of tags associated with the public IP prefix.
  /// [location] Resource location.
  /// [natGateway] NatGateway of Public IP Prefix.
  /// [prefixLength] The Length of the Public IP Prefix.
  /// [publicIPAddressVersion] The public IP address version.
  /// [publicIpPrefixName] The name of the public IP prefix.
  /// [resourceGroupName] The name of the resource group.
  /// [sku] The public IP prefix SKU.
  /// [tags] Resource tags.
  /// [zones] A list of availability zones denoting the IP allocated for the resource needs to come from.
  const PublicIPPrefixArgs({
    this.customIPPrefix,
    this.extendedLocation,
    this.id,
    this.ipTags,
    this.location,
    this.natGateway,
    this.prefixLength,
    this.publicIPAddressVersion,
    this.publicIpPrefixName,
    required this.resourceGroupName,
    this.sku,
    this.tags,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customIPPrefix': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(customIPPrefix, (value) => value.toMap()),
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'id': ?id,
      'ipTags': ?pulumi.Input.mapOptionalInputValue<List<IpTag>, List<Map<String, dynamic>>>(ipTags, (value) => pulumi.Input.encodeList<IpTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'natGateway': ?natGateway,
      'prefixLength': ?prefixLength,
      'publicIPAddressVersion': ?publicIPAddressVersion,
      'publicIpPrefixName': ?publicIpPrefixName,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<PublicIPPrefixSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory PublicIPPrefixArgs.fromMap(Map<String, dynamic> map) {
    return PublicIPPrefixArgs(
      customIPPrefix: (() { final guardedValue = map['customIPPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipTags: (() { final guardedValue = map['ipTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IpTag>(guardedValue, (value) => IpTag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      natGateway: (() { final guardedValue = map['natGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as NatGatewayNetwork); })(),
      prefixLength: (() { final guardedValue = map['prefixLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      publicIPAddressVersion: (() { final guardedValue = map['publicIPAddressVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIpPrefixName: (() { final guardedValue = map['publicIpPrefixName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PublicIPPrefixSku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
