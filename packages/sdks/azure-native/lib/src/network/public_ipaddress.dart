// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ddos_settings.dart';
import 'extended_location.dart';
import 'ip_tag.dart';
import 'nat_gateway.dart';
import 'public_ipaddress_dns_settings.dart';
import 'public_ipaddress_sku.dart';
import 'sub_resource.dart';

/// Public IP address resource.
class PublicIPAddress {
  /// The DDoS protection custom policy associated with the public IP address.
  final DdosSettings? ddosSettings;
  /// Specify what happens to the public IP address when the VM using it is deleted
  final String? deleteOption;
  /// The FQDN of the DNS record associated with the public IP address.
  final PublicIPAddressDnsSettings? dnsSettings;
  /// The extended location of the public ip address.
  final ExtendedLocation? extendedLocation;
  /// Resource ID.
  final String? id;
  /// The idle timeout of the public IP address.
  final int? idleTimeoutInMinutes;
  /// The IP address associated with the public IP address resource.
  final String? ipAddress;
  /// The list of tags associated with the public IP address.
  final List<IpTag>? ipTags;
  /// The linked public IP address of the public IP address resource.
  final PublicIPAddress? linkedPublicIPAddress;
  /// Resource location.
  final String? location;
  /// Migration phase of Public IP Address.
  final String? migrationPhase;
  /// The NatGateway for the Public IP address.
  final NatGateway? natGateway;
  /// The public IP address version.
  final String? publicIPAddressVersion;
  /// The public IP address allocation method.
  final String? publicIPAllocationMethod;
  /// The Public IP Prefix this Public IP Address should be allocated from.
  final SubResource? publicIPPrefix;
  /// The service public IP address of the public IP address resource.
  final PublicIPAddress? servicePublicIPAddress;
  /// The public IP address SKU.
  final PublicIPAddressSku? sku;
  /// Resource tags.
  final Map<String, String>? tags;
  /// A list of availability zones denoting the IP allocated for the resource needs to come from.
  final List<String>? zones;

  /// Creates a new [PublicIPAddress].
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
  /// [servicePublicIPAddress] The service public IP address of the public IP address resource.
  /// [sku] The public IP address SKU.
  /// [tags] Resource tags.
  /// [zones] A list of availability zones denoting the IP allocated for the resource needs to come from.
  PublicIPAddress({
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
    this.servicePublicIPAddress,
    this.sku,
    this.tags,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ddosSettings': ?ddosSettings == null ? null : ddosSettings!.toMap(),
      'deleteOption': ?deleteOption,
      'dnsSettings': ?dnsSettings == null ? null : dnsSettings!.toMap(),
      'extendedLocation': ?extendedLocation == null ? null : extendedLocation!.toMap(),
      'id': ?id,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'ipAddress': ?ipAddress,
      'ipTags': ?ipTags == null ? null : pulumi.Input.encodeList<IpTag, Map<String, dynamic>>(ipTags!, (value) => value.toMap()),
      'linkedPublicIPAddress': ?linkedPublicIPAddress == null ? null : linkedPublicIPAddress!.toMap(),
      'location': ?location,
      'migrationPhase': ?migrationPhase,
      'natGateway': ?natGateway == null ? null : natGateway!.toMap(),
      'publicIPAddressVersion': ?publicIPAddressVersion,
      'publicIPAllocationMethod': ?publicIPAllocationMethod,
      'publicIPPrefix': ?publicIPPrefix == null ? null : publicIPPrefix!.toMap(),
      'servicePublicIPAddress': ?servicePublicIPAddress == null ? null : servicePublicIPAddress!.toMap(),
      'sku': ?sku == null ? null : sku!.toMap(),
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory PublicIPAddress.fromMap(Map<String, dynamic> map) {
    return PublicIPAddress(
      ddosSettings: map['ddosSettings'] == null ? null : DdosSettings.fromMap((map['ddosSettings'] as Map).cast<String, dynamic>()),
      deleteOption: map['deleteOption'] == null ? null : map['deleteOption'] as String,
      dnsSettings: map['dnsSettings'] == null ? null : PublicIPAddressDnsSettings.fromMap((map['dnsSettings'] as Map).cast<String, dynamic>()),
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : map['idleTimeoutInMinutes'] as int,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      ipTags: map['ipTags'] == null ? null : pulumi.Input.decodeList<IpTag>(map['ipTags'], (value) => IpTag.fromMap((value as Map).cast<String, dynamic>())),
      linkedPublicIPAddress: map['linkedPublicIPAddress'] == null ? null : PublicIPAddress.fromMap((map['linkedPublicIPAddress'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      migrationPhase: map['migrationPhase'] == null ? null : map['migrationPhase'] as String,
      natGateway: map['natGateway'] == null ? null : NatGateway.fromMap((map['natGateway'] as Map).cast<String, dynamic>()),
      publicIPAddressVersion: map['publicIPAddressVersion'] == null ? null : map['publicIPAddressVersion'] as String,
      publicIPAllocationMethod: map['publicIPAllocationMethod'] == null ? null : map['publicIPAllocationMethod'] as String,
      publicIPPrefix: map['publicIPPrefix'] == null ? null : SubResource.fromMap((map['publicIPPrefix'] as Map).cast<String, dynamic>()),
      servicePublicIPAddress: map['servicePublicIPAddress'] == null ? null : PublicIPAddress.fromMap((map['servicePublicIPAddress'] as Map).cast<String, dynamic>()),
      sku: map['sku'] == null ? null : PublicIPAddressSku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      zones: map['zones'] == null ? null : (map['zones'] as List).cast<String>(),
    );
  }
}

