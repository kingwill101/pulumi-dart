// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bastion_host_ipconfiguration_response.dart';
import 'bastion_host_properties_format_response_network_acls.dart';
import 'sku_response.dart';
import 'sub_resource_response.dart';

/// Result data returned by getBastionHost.
class GetBastionHostResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Enable/Disable Copy/Paste feature of the Bastion Host resource.
  final bool? disableCopyPaste;
  /// FQDN for the endpoint on which bastion host is accessible.
  final String? dnsName;
  /// Enable/Disable File Copy feature of the Bastion Host resource.
  final bool? enableFileCopy;
  /// Enable/Disable IP Connect feature of the Bastion Host resource.
  final bool? enableIpConnect;
  /// Enable/Disable Kerberos feature of the Bastion Host resource.
  final bool? enableKerberos;
  /// Enable/Disable Private Only feature of the Bastion Host resource.
  final bool? enablePrivateOnlyBastion;
  /// Enable/Disable Session Recording feature of the Bastion Host resource.
  final bool? enableSessionRecording;
  /// Enable/Disable Shareable Link of the Bastion Host resource.
  final bool? enableShareableLink;
  /// Enable/Disable Tunneling feature of the Bastion Host resource.
  final bool? enableTunneling;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// IP configuration of the Bastion Host resource.
  final List<BastionHostIPConfigurationResponse>? ipConfigurations;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String name;
  final BastionHostPropertiesFormatResponseNetworkAcls? networkAcls;
  /// The provisioning state of the bastion host resource.
  final String provisioningState;
  /// The scale units for the Bastion Host resource.
  final int? scaleUnits;
  /// The sku of this Bastion Host.
  final SkuResponse? sku;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;
  /// Reference to an existing virtual network required for Developer Bastion Host only.
  final SubResourceResponse? virtualNetwork;
  /// A list of availability zones denoting where the resource needs to come from.
  final List<String>? zones;

  /// Creates a new [GetBastionHostResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [disableCopyPaste] Enable/Disable Copy/Paste feature of the Bastion Host resource.
  /// [dnsName] FQDN for the endpoint on which bastion host is accessible.
  /// [enableFileCopy] Enable/Disable File Copy feature of the Bastion Host resource.
  /// [enableIpConnect] Enable/Disable IP Connect feature of the Bastion Host resource.
  /// [enableKerberos] Enable/Disable Kerberos feature of the Bastion Host resource.
  /// [enablePrivateOnlyBastion] Enable/Disable Private Only feature of the Bastion Host resource.
  /// [enableSessionRecording] Enable/Disable Session Recording feature of the Bastion Host resource.
  /// [enableShareableLink] Enable/Disable Shareable Link of the Bastion Host resource.
  /// [enableTunneling] Enable/Disable Tunneling feature of the Bastion Host resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [ipConfigurations] IP configuration of the Bastion Host resource.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [networkAcls] Optional.
  /// [provisioningState] The provisioning state of the bastion host resource.
  /// [scaleUnits] The scale units for the Bastion Host resource.
  /// [sku] The sku of this Bastion Host.
  /// [tags] Resource tags.
  /// [type] Resource type.
  /// [virtualNetwork] Reference to an existing virtual network required for Developer Bastion Host only.
  /// [zones] A list of availability zones denoting where the resource needs to come from.
  GetBastionHostResult({
    required this.azureApiVersion,
    this.disableCopyPaste,
    this.dnsName,
    this.enableFileCopy,
    this.enableIpConnect,
    this.enableKerberos,
    this.enablePrivateOnlyBastion,
    this.enableSessionRecording,
    this.enableShareableLink,
    this.enableTunneling,
    required this.etag,
    this.id,
    this.ipConfigurations,
    this.location,
    required this.name,
    this.networkAcls,
    required this.provisioningState,
    this.scaleUnits,
    this.sku,
    this.tags,
    required this.type,
    this.virtualNetwork,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'disableCopyPaste': ?disableCopyPaste,
      'dnsName': ?dnsName,
      'enableFileCopy': ?enableFileCopy,
      'enableIpConnect': ?enableIpConnect,
      'enableKerberos': ?enableKerberos,
      'enablePrivateOnlyBastion': ?enablePrivateOnlyBastion,
      'enableSessionRecording': ?enableSessionRecording,
      'enableShareableLink': ?enableShareableLink,
      'enableTunneling': ?enableTunneling,
      'etag': etag,
      'id': ?id,
      'ipConfigurations': ?(() { final guardedValue = ipConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<BastionHostIPConfigurationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': name,
      'networkAcls': ?networkAcls?.toMap(),
      'provisioningState': provisioningState,
      'scaleUnits': ?scaleUnits,
      'sku': ?sku?.toMap(),
      'tags': ?tags,
      'type': type,
      'virtualNetwork': ?virtualNetwork?.toMap(),
      'zones': ?zones,
    };
  }

  factory GetBastionHostResult.fromMap(Map<String, dynamic> map) {
    return GetBastionHostResult(
      azureApiVersion: map['azureApiVersion'] as String,
      disableCopyPaste: (() { final guardedValue = map['disableCopyPaste']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableFileCopy: (() { final guardedValue = map['enableFileCopy']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableIpConnect: (() { final guardedValue = map['enableIpConnect']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableKerberos: (() { final guardedValue = map['enableKerberos']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enablePrivateOnlyBastion: (() { final guardedValue = map['enablePrivateOnlyBastion']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableSessionRecording: (() { final guardedValue = map['enableSessionRecording']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableShareableLink: (() { final guardedValue = map['enableShareableLink']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableTunneling: (() { final guardedValue = map['enableTunneling']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      etag: map['etag'] as String,
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipConfigurations: (() { final guardedValue = map['ipConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<BastionHostIPConfigurationResponse>(guardedValue, (value) => BastionHostIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      networkAcls: (() { final guardedValue = map['networkAcls']; if (guardedValue == null) return null; return BastionHostPropertiesFormatResponseNetworkAcls.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: map['provisioningState'] as String,
      scaleUnits: (() { final guardedValue = map['scaleUnits']; if (guardedValue == null) return null; return guardedValue as int; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      virtualNetwork: (() { final guardedValue = map['virtualNetwork']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}

