// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delegation_properties.dart';
import 'internet_ingress_public_ips_properties.dart';
import 'managed_service_identity.dart';
import 'network_virtual_appliance_properties_format_network_profile.dart';
import 'sub_resource.dart';
import 'virtual_appliance_additional_nic_properties.dart';
import 'virtual_appliance_sku_properties.dart';

/// {@template pulumi_network_network_virtual_appliance_args_doc}
/// The set of arguments for NetworkVirtualAppliance.
/// {@endtemplate}
/// {@macro pulumi_network_network_virtual_appliance_args_doc}
class NetworkVirtualApplianceArgs {
  /// Details required for Additional Network Interface.
  final pulumi.Input<List<VirtualApplianceAdditionalNicProperties>>? additionalNics;
  /// BootStrapConfigurationBlobs storage URLs.
  final pulumi.Input<List<String>>? bootStrapConfigurationBlobs;
  /// CloudInitConfiguration string in plain text.
  final pulumi.Input<String>? cloudInitConfiguration;
  /// CloudInitConfigurationBlob storage URLs.
  final pulumi.Input<List<String>>? cloudInitConfigurationBlobs;
  /// The delegation for the Virtual Appliance
  final pulumi.Input<DelegationProperties>? delegation;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The service principal that has read access to cloud-init and config blob.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// List of Resource Uri of Public IPs for Internet Ingress Scenario.
  final pulumi.Input<List<InternetIngressPublicIpsProperties>>? internetIngressPublicIps;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// Network Profile containing configurations for Public and Private NIC.
  final pulumi.Input<NetworkVirtualAppliancePropertiesFormatNetworkProfile>? networkProfile;
  /// The name of Network Virtual Appliance.
  final pulumi.Input<String>? networkVirtualApplianceName;
  /// Network Virtual Appliance SKU.
  final pulumi.Input<VirtualApplianceSkuProperties>? nvaSku;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Public key for SSH login.
  final pulumi.Input<String>? sshPublicKey;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// VirtualAppliance ASN. Microsoft private, public and IANA reserved ASN are not supported.
  final pulumi.Input<double>? virtualApplianceAsn;
  /// The Virtual Hub where Network Virtual Appliance is being deployed.
  final pulumi.Input<SubResource>? virtualHub;

  /// Creates a new [NetworkVirtualApplianceArgs].
  /// [additionalNics] Details required for Additional Network Interface.
  /// [bootStrapConfigurationBlobs] BootStrapConfigurationBlobs storage URLs.
  /// [cloudInitConfiguration] CloudInitConfiguration string in plain text.
  /// [cloudInitConfigurationBlobs] CloudInitConfigurationBlob storage URLs.
  /// [delegation] The delegation for the Virtual Appliance
  /// [id] Resource ID.
  /// [identity] The service principal that has read access to cloud-init and config blob.
  /// [internetIngressPublicIps] List of Resource Uri of Public IPs for Internet Ingress Scenario.
  /// [location] Resource location.
  /// [networkProfile] Network Profile containing configurations for Public and Private NIC.
  /// [networkVirtualApplianceName] The name of Network Virtual Appliance.
  /// [nvaSku] Network Virtual Appliance SKU.
  /// [resourceGroupName] The name of the resource group.
  /// [sshPublicKey] Public key for SSH login.
  /// [tags] Resource tags.
  /// [virtualApplianceAsn] VirtualAppliance ASN. Microsoft private, public and IANA reserved ASN are not supported.
  /// [virtualHub] The Virtual Hub where Network Virtual Appliance is being deployed.
  const NetworkVirtualApplianceArgs({
    this.additionalNics,
    this.bootStrapConfigurationBlobs,
    this.cloudInitConfiguration,
    this.cloudInitConfigurationBlobs,
    this.delegation,
    this.id,
    this.identity,
    this.internetIngressPublicIps,
    this.location,
    this.networkProfile,
    this.networkVirtualApplianceName,
    this.nvaSku,
    required this.resourceGroupName,
    this.sshPublicKey,
    this.tags,
    this.virtualApplianceAsn,
    this.virtualHub,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalNics': ?pulumi.Input.mapOptionalInputValue<List<VirtualApplianceAdditionalNicProperties>, List<Map<String, dynamic>>>(additionalNics, (value) => pulumi.Input.encodeList<VirtualApplianceAdditionalNicProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bootStrapConfigurationBlobs': ?bootStrapConfigurationBlobs,
      'cloudInitConfiguration': ?cloudInitConfiguration,
      'cloudInitConfigurationBlobs': ?cloudInitConfigurationBlobs,
      'delegation': ?pulumi.Input.mapOptionalInputValue<DelegationProperties, Map<String, dynamic>>(delegation, (value) => value.toMap()),
      'id': ?id,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'internetIngressPublicIps': ?pulumi.Input.mapOptionalInputValue<List<InternetIngressPublicIpsProperties>, List<Map<String, dynamic>>>(internetIngressPublicIps, (value) => pulumi.Input.encodeList<InternetIngressPublicIpsProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'networkProfile': ?pulumi.Input.mapOptionalInputValue<NetworkVirtualAppliancePropertiesFormatNetworkProfile, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'networkVirtualApplianceName': ?networkVirtualApplianceName,
      'nvaSku': ?pulumi.Input.mapOptionalInputValue<VirtualApplianceSkuProperties, Map<String, dynamic>>(nvaSku, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sshPublicKey': ?sshPublicKey,
      'tags': ?tags,
      'virtualApplianceAsn': ?virtualApplianceAsn,
      'virtualHub': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(virtualHub, (value) => value.toMap()),
    };
  }

  factory NetworkVirtualApplianceArgs.fromMap(Map<String, dynamic> map) {
    return NetworkVirtualApplianceArgs(
      additionalNics: (() { final guardedValue = map['additionalNics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualApplianceAdditionalNicProperties>(guardedValue, (value) => VirtualApplianceAdditionalNicProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
      bootStrapConfigurationBlobs: (() { final guardedValue = map['bootStrapConfigurationBlobs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      cloudInitConfiguration: (() { final guardedValue = map['cloudInitConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cloudInitConfigurationBlobs: (() { final guardedValue = map['cloudInitConfigurationBlobs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      delegation: (() { final guardedValue = map['delegation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DelegationProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      internetIngressPublicIps: (() { final guardedValue = map['internetIngressPublicIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InternetIngressPublicIpsProperties>(guardedValue, (value) => InternetIngressPublicIpsProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkVirtualAppliancePropertiesFormatNetworkProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkVirtualApplianceName: (() { final guardedValue = map['networkVirtualApplianceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nvaSku: (() { final guardedValue = map['nvaSku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualApplianceSkuProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sshPublicKey: (() { final guardedValue = map['sshPublicKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualApplianceAsn: (() { final guardedValue = map['virtualApplianceAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      virtualHub: (() { final guardedValue = map['virtualHub']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
