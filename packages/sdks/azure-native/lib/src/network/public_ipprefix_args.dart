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
  PublicIPPrefixArgs({
    pulumi.Output<SubResource>? customIPPrefix,
    pulumi.Output<ExtendedLocation>? extendedLocation,
    pulumi.Output<String>? id,
    pulumi.Output<List<IpTag>>? ipTags,
    pulumi.Output<String>? location,
    pulumi.Output<NatGatewayNetwork>? natGateway,
    pulumi.Output<int>? prefixLength,
    pulumi.Output<String>? publicIPAddressVersion,
    pulumi.Output<String>? publicIpPrefixName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<PublicIPPrefixSku>? sku,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<String>>? zones,
  }) :
      customIPPrefix = pulumi.Input.asOptionalInput<SubResource>(customIPPrefix),
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation),
      id = pulumi.Input.asOptionalInput<String>(id),
      ipTags = pulumi.Input.asOptionalInput<List<IpTag>>(ipTags),
      location = pulumi.Input.asOptionalInput<String>(location),
      natGateway = pulumi.Input.asOptionalInput<NatGatewayNetwork>(natGateway),
      prefixLength = pulumi.Input.asOptionalInput<int>(prefixLength),
      publicIPAddressVersion = pulumi.Input.asOptionalInput<String>(publicIPAddressVersion),
      publicIpPrefixName = pulumi.Input.asOptionalInput<String>(publicIpPrefixName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<PublicIPPrefixSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

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
      customIPPrefix: map['customIPPrefix'] == null ? null : pulumi.Output.create<SubResource>(SubResource.fromMap((map['customIPPrefix'] as Map).cast<String, dynamic>())),
      extendedLocation: map['extendedLocation'] == null ? null : pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      ipTags: map['ipTags'] == null ? null : pulumi.Output.create<List<IpTag>>(pulumi.Input.decodeList<IpTag>(map['ipTags'], (value) => IpTag.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      natGateway: map['natGateway'] == null ? null : pulumi.Output.create<NatGatewayNetwork>(map['natGateway'] as NatGatewayNetwork),
      prefixLength: map['prefixLength'] == null ? null : pulumi.Output.create<int>(map['prefixLength'] as int),
      publicIPAddressVersion: map['publicIPAddressVersion'] == null ? null : pulumi.Output.create<String>(map['publicIPAddressVersion'] as String),
      publicIpPrefixName: map['publicIpPrefixName'] == null ? null : pulumi.Output.create<String>(map['publicIpPrefixName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<PublicIPPrefixSku>(PublicIPPrefixSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      zones: map['zones'] == null ? null : pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

