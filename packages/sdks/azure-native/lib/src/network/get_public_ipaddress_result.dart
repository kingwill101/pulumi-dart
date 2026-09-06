// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ddos_settings_response.dart';
import 'extended_location_response.dart';
import 'ip_tag_response.dart';
import 'ipconfiguration_response.dart';
import 'nat_gateway_response.dart';
import 'public_ipaddress_dns_settings_response.dart';
import 'public_ipaddress_response.dart';
import 'public_ipaddress_sku_response.dart';
import 'sub_resource_response.dart';

/// Result data returned by getPublicIPAddress.
class GetPublicIPAddressResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The DDoS protection custom policy associated with the public IP address.
  final DdosSettingsResponse? ddosSettings;
  /// Specify what happens to the public IP address when the VM using it is deleted
  final String? deleteOption;
  /// The FQDN of the DNS record associated with the public IP address.
  final PublicIPAddressDnsSettingsResponse? dnsSettings;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// The extended location of the public ip address.
  final ExtendedLocationResponse? extendedLocation;
  /// Resource ID.
  final String? id;
  /// The idle timeout of the public IP address.
  final int? idleTimeoutInMinutes;
  /// The IP address associated with the public IP address resource.
  final String? ipAddress;
  /// The IP configuration associated with the public IP address.
  final IPConfigurationResponse? ipConfiguration;
  /// The list of tags associated with the public IP address.
  final List<IpTagResponse>? ipTags;
  /// The linked public IP address of the public IP address resource.
  final PublicIPAddressResponse? linkedPublicIPAddress;
  /// Resource location.
  final String? location;
  /// Migration phase of Public IP Address.
  final String? migrationPhase;
  /// Resource name.
  final String? name;
  /// The NatGateway for the Public IP address.
  final NatGatewayResponse? natGateway;
  /// The provisioning state of the public IP address resource.
  final String? provisioningState;
  /// The public IP address version.
  final String? publicIPAddressVersion;
  /// The public IP address allocation method.
  final String? publicIPAllocationMethod;
  /// The Public IP Prefix this Public IP Address should be allocated from.
  final SubResourceResponse? publicIPPrefix;
  /// The resource GUID property of the public IP address resource.
  final String? resourceGuid;
  /// The service public IP address of the public IP address resource.
  final PublicIPAddressResponse? servicePublicIPAddress;
  /// The public IP address SKU.
  final PublicIPAddressSkuResponse? sku;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String? type;
  /// A list of availability zones denoting the IP allocated for the resource needs to come from.
  final List<String>? zones;

  /// Creates a new [GetPublicIPAddressResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [ddosSettings] The DDoS protection custom policy associated with the public IP address.
  /// [deleteOption] Specify what happens to the public IP address when the VM using it is deleted
  /// [dnsSettings] The FQDN of the DNS record associated with the public IP address.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [extendedLocation] The extended location of the public ip address.
  /// [id] Resource ID.
  /// [idleTimeoutInMinutes] The idle timeout of the public IP address.
  /// [ipAddress] The IP address associated with the public IP address resource.
  /// [ipConfiguration] The IP configuration associated with the public IP address.
  /// [ipTags] The list of tags associated with the public IP address.
  /// [linkedPublicIPAddress] The linked public IP address of the public IP address resource.
  /// [location] Resource location.
  /// [migrationPhase] Migration phase of Public IP Address.
  /// [name] Resource name.
  /// [natGateway] The NatGateway for the Public IP address.
  /// [provisioningState] The provisioning state of the public IP address resource.
  /// [publicIPAddressVersion] The public IP address version.
  /// [publicIPAllocationMethod] The public IP address allocation method.
  /// [publicIPPrefix] The Public IP Prefix this Public IP Address should be allocated from.
  /// [resourceGuid] The resource GUID property of the public IP address resource.
  /// [servicePublicIPAddress] The service public IP address of the public IP address resource.
  /// [sku] The public IP address SKU.
  /// [tags] Resource tags.
  /// [type] Resource type.
  /// [zones] A list of availability zones denoting the IP allocated for the resource needs to come from.
  const GetPublicIPAddressResult({
    this.azureApiVersion,
    this.ddosSettings,
    this.deleteOption,
    this.dnsSettings,
    this.etag,
    this.extendedLocation,
    this.id,
    this.idleTimeoutInMinutes,
    this.ipAddress,
    this.ipConfiguration,
    this.ipTags,
    this.linkedPublicIPAddress,
    this.location,
    this.migrationPhase,
    this.name,
    this.natGateway,
    this.provisioningState,
    this.publicIPAddressVersion,
    this.publicIPAllocationMethod,
    this.publicIPPrefix,
    this.resourceGuid,
    this.servicePublicIPAddress,
    this.sku,
    this.tags,
    this.type,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'ddosSettings': ?ddosSettings?.toMap(),
      'deleteOption': ?deleteOption,
      'dnsSettings': ?dnsSettings?.toMap(),
      'etag': ?etag,
      'extendedLocation': ?extendedLocation?.toMap(),
      'id': ?id,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'ipAddress': ?ipAddress,
      'ipConfiguration': ?ipConfiguration?.toMap(),
      'ipTags': ?(() { final guardedValue = ipTags; if (guardedValue == null) return null; return pulumi.Input.encodeList<IpTagResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'linkedPublicIPAddress': ?linkedPublicIPAddress?.toMap(),
      'location': ?location,
      'migrationPhase': ?migrationPhase,
      'name': ?name,
      'natGateway': ?natGateway?.toMap(),
      'provisioningState': ?provisioningState,
      'publicIPAddressVersion': ?publicIPAddressVersion,
      'publicIPAllocationMethod': ?publicIPAllocationMethod,
      'publicIPPrefix': ?publicIPPrefix?.toMap(),
      'resourceGuid': ?resourceGuid,
      'servicePublicIPAddress': ?servicePublicIPAddress?.toMap(),
      'sku': ?sku?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'zones': ?zones,
    };
  }

  factory GetPublicIPAddressResult.fromMap(Map<String, dynamic> map) {
    return GetPublicIPAddressResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ddosSettings: (() { final guardedValue = map['ddosSettings']; if (guardedValue == null) return null; return DdosSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      deleteOption: (() { final guardedValue = map['deleteOption']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsSettings: (() { final guardedValue = map['dnsSettings']; if (guardedValue == null) return null; return PublicIPAddressDnsSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      idleTimeoutInMinutes: (() { final guardedValue = map['idleTimeoutInMinutes']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipConfiguration: (() { final guardedValue = map['ipConfiguration']; if (guardedValue == null) return null; return IPConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      ipTags: (() { final guardedValue = map['ipTags']; if (guardedValue == null) return null; return pulumi.Input.decodeList<IpTagResponse>(guardedValue, (value) => IpTagResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      linkedPublicIPAddress: (() { final guardedValue = map['linkedPublicIPAddress']; if (guardedValue == null) return null; return PublicIPAddressResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      migrationPhase: (() { final guardedValue = map['migrationPhase']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      natGateway: (() { final guardedValue = map['natGateway']; if (guardedValue == null) return null; return NatGatewayResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicIPAddressVersion: (() { final guardedValue = map['publicIPAddressVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicIPAllocationMethod: (() { final guardedValue = map['publicIPAllocationMethod']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicIPPrefix: (() { final guardedValue = map['publicIPPrefix']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      resourceGuid: (() { final guardedValue = map['resourceGuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      servicePublicIPAddress: (() { final guardedValue = map['servicePublicIPAddress']; if (guardedValue == null) return null; return PublicIPAddressResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return PublicIPAddressSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
