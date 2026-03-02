// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ddos_settings_response.dart';
import 'extended_location_response.dart';
import 'ip_tag_response.dart';
import 'ipconfiguration_response.dart';
import 'nat_gateway_response.dart';
import 'public_ipaddress_dns_settings_response.dart';
import 'public_ipaddress_sku_response.dart';
import 'sub_resource_response.dart';

/// Public IP address resource.
class PublicIPAddressResponse {
  /// The DDoS protection custom policy associated with the public IP address.
  final pulumi.Input<DdosSettingsResponse>? ddosSettings;
  /// Specify what happens to the public IP address when the VM using it is deleted
  final pulumi.Input<String>? deleteOption;
  /// The FQDN of the DNS record associated with the public IP address.
  final pulumi.Input<PublicIPAddressDnsSettingsResponse>? dnsSettings;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// The extended location of the public ip address.
  final pulumi.Input<ExtendedLocationResponse>? extendedLocation;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The idle timeout of the public IP address.
  final pulumi.Input<int>? idleTimeoutInMinutes;
  /// The IP address associated with the public IP address resource.
  final pulumi.Input<String>? ipAddress;
  /// The IP configuration associated with the public IP address.
  final pulumi.Input<IPConfigurationResponse> ipConfiguration;
  /// The list of tags associated with the public IP address.
  final pulumi.Input<List<IpTagResponse>>? ipTags;
  /// The linked public IP address of the public IP address resource.
  final pulumi.Input<PublicIPAddressResponse>? linkedPublicIPAddress;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// Migration phase of Public IP Address.
  final pulumi.Input<String>? migrationPhase;
  /// Resource name.
  final pulumi.Input<String> name;
  /// The NatGateway for the Public IP address.
  final pulumi.Input<NatGatewayResponse>? natGateway;
  /// The provisioning state of the public IP address resource.
  final pulumi.Input<String> provisioningState;
  /// The public IP address version.
  final pulumi.Input<String>? publicIPAddressVersion;
  /// The public IP address allocation method.
  final pulumi.Input<String>? publicIPAllocationMethod;
  /// The Public IP Prefix this Public IP Address should be allocated from.
  final pulumi.Input<SubResourceResponse>? publicIPPrefix;
  /// The resource GUID property of the public IP address resource.
  final pulumi.Input<String> resourceGuid;
  /// The service public IP address of the public IP address resource.
  final pulumi.Input<PublicIPAddressResponse>? servicePublicIPAddress;
  /// The public IP address SKU.
  final pulumi.Input<PublicIPAddressSkuResponse>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Resource type.
  final pulumi.Input<String> type;
  /// A list of availability zones denoting the IP allocated for the resource needs to come from.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [PublicIPAddressResponse].
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
  PublicIPAddressResponse({
    this.ddosSettings,
    this.deleteOption,
    this.dnsSettings,
    required this.etag,
    this.extendedLocation,
    this.id,
    this.idleTimeoutInMinutes,
    this.ipAddress,
    required this.ipConfiguration,
    this.ipTags,
    this.linkedPublicIPAddress,
    this.location,
    this.migrationPhase,
    required this.name,
    this.natGateway,
    required this.provisioningState,
    this.publicIPAddressVersion,
    this.publicIPAllocationMethod,
    this.publicIPPrefix,
    required this.resourceGuid,
    this.servicePublicIPAddress,
    this.sku,
    this.tags,
    required this.type,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ddosSettings': ?pulumi.Input.mapOptionalInputValue<DdosSettingsResponse, Map<String, dynamic>>(ddosSettings, (value) => value.toMap()),
      'deleteOption': ?deleteOption,
      'dnsSettings': ?pulumi.Input.mapOptionalInputValue<PublicIPAddressDnsSettingsResponse, Map<String, dynamic>>(dnsSettings, (value) => value.toMap()),
      'etag': etag,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocationResponse, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'id': ?id,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'ipAddress': ?ipAddress,
      'ipConfiguration': pulumi.Input.mapInputValue<IPConfigurationResponse, Map<String, dynamic>>(ipConfiguration, (value) => value.toMap()),
      'ipTags': ?pulumi.Input.mapOptionalInputValue<List<IpTagResponse>, List<Map<String, dynamic>>>(ipTags, (value) => pulumi.Input.encodeList<IpTagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'linkedPublicIPAddress': ?pulumi.Input.mapOptionalInputValue<PublicIPAddressResponse, Map<String, dynamic>>(linkedPublicIPAddress, (value) => value.toMap()),
      'location': ?location,
      'migrationPhase': ?migrationPhase,
      'name': name,
      'natGateway': ?pulumi.Input.mapOptionalInputValue<NatGatewayResponse, Map<String, dynamic>>(natGateway, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'publicIPAddressVersion': ?publicIPAddressVersion,
      'publicIPAllocationMethod': ?publicIPAllocationMethod,
      'publicIPPrefix': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(publicIPPrefix, (value) => value.toMap()),
      'resourceGuid': resourceGuid,
      'servicePublicIPAddress': ?pulumi.Input.mapOptionalInputValue<PublicIPAddressResponse, Map<String, dynamic>>(servicePublicIPAddress, (value) => value.toMap()),
      'sku': ?pulumi.Input.mapOptionalInputValue<PublicIPAddressSkuResponse, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'type': type,
      'zones': ?zones,
    };
  }

  factory PublicIPAddressResponse.fromMap(Map<String, dynamic> map) {
    return PublicIPAddressResponse(
      ddosSettings: map['ddosSettings'] == null ? null : (DdosSettingsResponse.fromMap((map['ddosSettings']! as Map).cast<String, dynamic>())).input(),
      deleteOption: map['deleteOption'] == null ? null : (map['deleteOption']! as String).input(),
      dnsSettings: map['dnsSettings'] == null ? null : (PublicIPAddressDnsSettingsResponse.fromMap((map['dnsSettings']! as Map).cast<String, dynamic>())).input(),
      etag: (map['etag'] as String).input(),
      extendedLocation: map['extendedLocation'] == null ? null : (ExtendedLocationResponse.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>())).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : (map['idleTimeoutInMinutes']! as int).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress']! as String).input(),
      ipConfiguration: (IPConfigurationResponse.fromMap((map['ipConfiguration'] as Map).cast<String, dynamic>())).input(),
      ipTags: map['ipTags'] == null ? null : (pulumi.Input.decodeList<IpTagResponse>(map['ipTags']!, (value) => IpTagResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      linkedPublicIPAddress: map['linkedPublicIPAddress'] == null ? null : (PublicIPAddressResponse.fromMap((map['linkedPublicIPAddress']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      migrationPhase: map['migrationPhase'] == null ? null : (map['migrationPhase']! as String).input(),
      name: (map['name'] as String).input(),
      natGateway: map['natGateway'] == null ? null : (NatGatewayResponse.fromMap((map['natGateway']! as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      publicIPAddressVersion: map['publicIPAddressVersion'] == null ? null : (map['publicIPAddressVersion']! as String).input(),
      publicIPAllocationMethod: map['publicIPAllocationMethod'] == null ? null : (map['publicIPAllocationMethod']! as String).input(),
      publicIPPrefix: map['publicIPPrefix'] == null ? null : (SubResourceResponse.fromMap((map['publicIPPrefix']! as Map).cast<String, dynamic>())).input(),
      resourceGuid: (map['resourceGuid'] as String).input(),
      servicePublicIPAddress: map['servicePublicIPAddress'] == null ? null : (PublicIPAddressResponse.fromMap((map['servicePublicIPAddress']! as Map).cast<String, dynamic>())).input(),
      sku: map['sku'] == null ? null : (PublicIPAddressSkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      type: (map['type'] as String).input(),
      zones: map['zones'] == null ? null : ((map['zones']! as List).cast<String>()).input(),
    );
  }
}

