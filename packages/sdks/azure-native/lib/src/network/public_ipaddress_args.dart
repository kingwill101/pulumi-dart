// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ddos_settings.dart';
import 'extended_location.dart';
import 'ip_tag.dart';
import 'nat_gateway_network.dart';
import 'public_ipaddress_dns_settings.dart';
import 'public_ipaddress_network.dart';
import 'public_ipaddress_sku.dart';
import 'sub_resource.dart';

/// {@template pulumi_network_public_ipaddress_args_doc}
/// The set of arguments for PublicIPAddress.
/// {@endtemplate}
/// {@macro pulumi_network_public_ipaddress_args_doc}
class PublicIPAddressArgs {
  /// The DDoS protection custom policy associated with the public IP address.
  final pulumi.Input<DdosSettings>? ddosSettings;
  /// Specify what happens to the public IP address when the VM using it is deleted
  final pulumi.Input<String>? deleteOption;
  /// The FQDN of the DNS record associated with the public IP address.
  final pulumi.Input<PublicIPAddressDnsSettings>? dnsSettings;
  /// The extended location of the public ip address.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The idle timeout of the public IP address.
  final pulumi.Input<int>? idleTimeoutInMinutes;
  /// The IP address associated with the public IP address resource.
  final pulumi.Input<String>? ipAddress;
  /// The list of tags associated with the public IP address.
  final pulumi.Input<List<IpTag>>? ipTags;
  /// The linked public IP address of the public IP address resource.
  final pulumi.Input<PublicIPAddressNetwork>? linkedPublicIPAddress;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// Migration phase of Public IP Address.
  final pulumi.Input<String>? migrationPhase;
  /// The NatGateway for the Public IP address.
  final pulumi.Input<NatGatewayNetwork>? natGateway;
  /// The public IP address version.
  final pulumi.Input<String>? publicIPAddressVersion;
  /// The public IP address allocation method.
  final pulumi.Input<String>? publicIPAllocationMethod;
  /// The Public IP Prefix this Public IP Address should be allocated from.
  final pulumi.Input<SubResource>? publicIPPrefix;
  /// The name of the public IP address.
  final pulumi.Input<String>? publicIpAddressName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The service public IP address of the public IP address resource.
  final pulumi.Input<PublicIPAddressNetwork>? servicePublicIPAddress;
  /// The public IP address SKU.
  final pulumi.Input<PublicIPAddressSku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// A list of availability zones denoting the IP allocated for the resource needs to come from.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [PublicIPAddressArgs].
  /// [ddosSettings] The DDoS protection custom policy associated with the public IP address.
  /// [deleteOption] Specify what happens to the public IP address when the VM using it is deleted
  /// [dnsSettings] The FQDN of the DNS record associated with the public IP address.
  /// [extendedLocation] The extended location of the public ip address.
  /// [id] Resource ID.
  /// [idleTimeoutInMinutes] The idle timeout of the public IP address.
  /// [ipAddress] The IP address associated with the public IP address resource.
  /// [ipTags] The list of tags associated with the public IP address.
  /// [linkedPublicIPAddress] The linked public IP address of the public IP address resource.
  /// [location] Resource location.
  /// [migrationPhase] Migration phase of Public IP Address.
  /// [natGateway] The NatGateway for the Public IP address.
  /// [publicIPAddressVersion] The public IP address version.
  /// [publicIPAllocationMethod] The public IP address allocation method.
  /// [publicIPPrefix] The Public IP Prefix this Public IP Address should be allocated from.
  /// [publicIpAddressName] The name of the public IP address.
  /// [resourceGroupName] The name of the resource group.
  /// [servicePublicIPAddress] The service public IP address of the public IP address resource.
  /// [sku] The public IP address SKU.
  /// [tags] Resource tags.
  /// [zones] A list of availability zones denoting the IP allocated for the resource needs to come from.
  PublicIPAddressArgs({
    this.ddosSettings,
    this.deleteOption,
    this.dnsSettings,
    this.extendedLocation,
    this.id,
    this.idleTimeoutInMinutes,
    this.ipAddress,
    this.ipTags,
    this.linkedPublicIPAddress,
    this.location,
    this.migrationPhase,
    this.natGateway,
    this.publicIPAddressVersion,
    this.publicIPAllocationMethod,
    this.publicIPPrefix,
    this.publicIpAddressName,
    required this.resourceGroupName,
    this.servicePublicIPAddress,
    this.sku,
    this.tags,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ddosSettings': ?pulumi.Input.mapOptionalInputValue<DdosSettings, Map<String, dynamic>>(ddosSettings, (value) => value.toMap()),
      'deleteOption': ?deleteOption,
      'dnsSettings': ?pulumi.Input.mapOptionalInputValue<PublicIPAddressDnsSettings, Map<String, dynamic>>(dnsSettings, (value) => value.toMap()),
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'id': ?id,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'ipAddress': ?ipAddress,
      'ipTags': ?pulumi.Input.mapOptionalInputValue<List<IpTag>, List<Map<String, dynamic>>>(ipTags, (value) => pulumi.Input.encodeList<IpTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'linkedPublicIPAddress': ?linkedPublicIPAddress,
      'location': ?location,
      'migrationPhase': ?migrationPhase,
      'natGateway': ?natGateway,
      'publicIPAddressVersion': ?publicIPAddressVersion,
      'publicIPAllocationMethod': ?publicIPAllocationMethod,
      'publicIPPrefix': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(publicIPPrefix, (value) => value.toMap()),
      'publicIpAddressName': ?publicIpAddressName,
      'resourceGroupName': resourceGroupName,
      'servicePublicIPAddress': ?servicePublicIPAddress,
      'sku': ?pulumi.Input.mapOptionalInputValue<PublicIPAddressSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory PublicIPAddressArgs.fromMap(Map<String, dynamic> map) {
    return PublicIPAddressArgs(
      ddosSettings: map['ddosSettings'] == null ? null : (DdosSettings.fromMap((map['ddosSettings'] as Map).cast<String, dynamic>())).input(),
      deleteOption: map['deleteOption'] == null ? null : (map['deleteOption'] as String).input(),
      dnsSettings: map['dnsSettings'] == null ? null : (PublicIPAddressDnsSettings.fromMap((map['dnsSettings'] as Map).cast<String, dynamic>())).input(),
      extendedLocation: map['extendedLocation'] == null ? null : (ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : (map['idleTimeoutInMinutes'] as int).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress'] as String).input(),
      ipTags: map['ipTags'] == null ? null : (pulumi.Input.decodeList<IpTag>(map['ipTags'], (value) => IpTag.fromMap((value as Map).cast<String, dynamic>()))).input(),
      linkedPublicIPAddress: map['linkedPublicIPAddress'] == null ? null : (map['linkedPublicIPAddress'] as PublicIPAddressNetwork).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      migrationPhase: map['migrationPhase'] == null ? null : (map['migrationPhase'] as String).input(),
      natGateway: map['natGateway'] == null ? null : (map['natGateway'] as NatGatewayNetwork).input(),
      publicIPAddressVersion: map['publicIPAddressVersion'] == null ? null : (map['publicIPAddressVersion'] as String).input(),
      publicIPAllocationMethod: map['publicIPAllocationMethod'] == null ? null : (map['publicIPAllocationMethod'] as String).input(),
      publicIPPrefix: map['publicIPPrefix'] == null ? null : (SubResource.fromMap((map['publicIPPrefix'] as Map).cast<String, dynamic>())).input(),
      publicIpAddressName: map['publicIpAddressName'] == null ? null : (map['publicIpAddressName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      servicePublicIPAddress: map['servicePublicIPAddress'] == null ? null : (map['servicePublicIPAddress'] as PublicIPAddressNetwork).input(),
      sku: map['sku'] == null ? null : (PublicIPAddressSku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      zones: map['zones'] == null ? null : ((map['zones'] as List).cast<String>()).input(),
    );
  }
}

