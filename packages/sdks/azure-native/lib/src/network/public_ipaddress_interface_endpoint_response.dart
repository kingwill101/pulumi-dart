// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ddos_settings_interface_endpoint_response.dart';
import 'ip_tag_response.dart';
import 'ipconfiguration_response.dart';
import 'public_ipaddress_dns_settings_interface_endpoint_response.dart';
import 'public_ipaddress_sku_interface_endpoint_response.dart';
import 'sub_resource_response.dart';

/// Public IP address resource.
class PublicIPAddressInterfaceEndpointResponse {
  /// The DDoS protection custom policy associated with the public IP address.
  final pulumi.Input<DdosSettingsInterfaceEndpointResponse>? ddosSettings;
  /// The FQDN of the DNS record associated with the public IP address.
  final pulumi.Input<PublicIPAddressDnsSettingsInterfaceEndpointResponse>? dnsSettings;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String>? etag;
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
  /// Resource location.
  final pulumi.Input<String>? location;
  /// Resource name.
  final pulumi.Input<String> name;
  /// The provisioning state of the PublicIP resource. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  final pulumi.Input<String>? provisioningState;
  /// The public IP address version.
  final pulumi.Input<String>? publicIPAddressVersion;
  /// The public IP address allocation method.
  final pulumi.Input<String>? publicIPAllocationMethod;
  /// The Public IP Prefix this Public IP Address should be allocated from.
  final pulumi.Input<SubResourceResponse>? publicIPPrefix;
  /// The resource GUID property of the public IP resource.
  final pulumi.Input<String>? resourceGuid;
  /// The public IP address SKU.
  final pulumi.Input<PublicIPAddressSkuInterfaceEndpointResponse>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Resource type.
  final pulumi.Input<String> type;
  /// A list of availability zones denoting the IP allocated for the resource needs to come from.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [PublicIPAddressInterfaceEndpointResponse].
  /// [ddosSettings] The DDoS protection custom policy associated with the public IP address.
  /// [dnsSettings] The FQDN of the DNS record associated with the public IP address.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [idleTimeoutInMinutes] The idle timeout of the public IP address.
  /// [ipAddress] The IP address associated with the public IP address resource.
  /// [ipConfiguration] The IP configuration associated with the public IP address.
  /// [ipTags] The list of tags associated with the public IP address.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [provisioningState] The provisioning state of the PublicIP resource. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  /// [publicIPAddressVersion] The public IP address version.
  /// [publicIPAllocationMethod] The public IP address allocation method.
  /// [publicIPPrefix] The Public IP Prefix this Public IP Address should be allocated from.
  /// [resourceGuid] The resource GUID property of the public IP resource.
  /// [sku] The public IP address SKU.
  /// [tags] Resource tags.
  /// [type] Resource type.
  /// [zones] A list of availability zones denoting the IP allocated for the resource needs to come from.
  const PublicIPAddressInterfaceEndpointResponse({
    this.ddosSettings,
    this.dnsSettings,
    this.etag,
    this.id,
    this.idleTimeoutInMinutes,
    this.ipAddress,
    required this.ipConfiguration,
    this.ipTags,
    this.location,
    required this.name,
    this.provisioningState,
    this.publicIPAddressVersion,
    this.publicIPAllocationMethod,
    this.publicIPPrefix,
    this.resourceGuid,
    this.sku,
    this.tags,
    required this.type,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ddosSettings': ?pulumi.Input.mapOptionalInputValue<DdosSettingsInterfaceEndpointResponse, Map<String, dynamic>>(ddosSettings, (value) => value.toMap()),
      'dnsSettings': ?pulumi.Input.mapOptionalInputValue<PublicIPAddressDnsSettingsInterfaceEndpointResponse, Map<String, dynamic>>(dnsSettings, (value) => value.toMap()),
      'etag': ?etag,
      'id': ?id,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'ipAddress': ?ipAddress,
      'ipConfiguration': pulumi.Input.mapInputValue<IPConfigurationResponse, Map<String, dynamic>>(ipConfiguration, (value) => value.toMap()),
      'ipTags': ?pulumi.Input.mapOptionalInputValue<List<IpTagResponse>, List<Map<String, dynamic>>>(ipTags, (value) => pulumi.Input.encodeList<IpTagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': name,
      'provisioningState': ?provisioningState,
      'publicIPAddressVersion': ?publicIPAddressVersion,
      'publicIPAllocationMethod': ?publicIPAllocationMethod,
      'publicIPPrefix': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(publicIPPrefix, (value) => value.toMap()),
      'resourceGuid': ?resourceGuid,
      'sku': ?pulumi.Input.mapOptionalInputValue<PublicIPAddressSkuInterfaceEndpointResponse, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'type': type,
      'zones': ?zones,
    };
  }

  factory PublicIPAddressInterfaceEndpointResponse.fromMap(Map<String, dynamic> map) {
    return PublicIPAddressInterfaceEndpointResponse(
      ddosSettings: (() { final guardedValue = map['ddosSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DdosSettingsInterfaceEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dnsSettings: (() { final guardedValue = map['dnsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PublicIPAddressDnsSettingsInterfaceEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idleTimeoutInMinutes: (() { final guardedValue = map['idleTimeoutInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipConfiguration: pulumi.Input.fromValue(IPConfigurationResponse.fromMap((map['ipConfiguration']! as Map).cast<String, dynamic>())),
      ipTags: (() { final guardedValue = map['ipTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IpTagResponse>(guardedValue, (value) => IpTagResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIPAddressVersion: (() { final guardedValue = map['publicIPAddressVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIPAllocationMethod: (() { final guardedValue = map['publicIPAllocationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIPPrefix: (() { final guardedValue = map['publicIPPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGuid: (() { final guardedValue = map['resourceGuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PublicIPAddressSkuInterfaceEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
