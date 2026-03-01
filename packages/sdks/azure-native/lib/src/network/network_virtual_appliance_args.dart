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
  NetworkVirtualApplianceArgs({
    pulumi.Output<List<VirtualApplianceAdditionalNicProperties>>? additionalNics,
    pulumi.Output<List<String>>? bootStrapConfigurationBlobs,
    pulumi.Output<String>? cloudInitConfiguration,
    pulumi.Output<List<String>>? cloudInitConfigurationBlobs,
    pulumi.Output<DelegationProperties>? delegation,
    pulumi.Output<String>? id,
    pulumi.Output<ManagedServiceIdentity>? identity,
    pulumi.Output<List<InternetIngressPublicIpsProperties>>? internetIngressPublicIps,
    pulumi.Output<String>? location,
    pulumi.Output<NetworkVirtualAppliancePropertiesFormatNetworkProfile>? networkProfile,
    pulumi.Output<String>? networkVirtualApplianceName,
    pulumi.Output<VirtualApplianceSkuProperties>? nvaSku,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? sshPublicKey,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<double>? virtualApplianceAsn,
    pulumi.Output<SubResource>? virtualHub,
  }) :
      additionalNics = pulumi.Input.asOptionalInput<List<VirtualApplianceAdditionalNicProperties>>(additionalNics),
      bootStrapConfigurationBlobs = pulumi.Input.asOptionalInput<List<String>>(bootStrapConfigurationBlobs),
      cloudInitConfiguration = pulumi.Input.asOptionalInput<String>(cloudInitConfiguration),
      cloudInitConfigurationBlobs = pulumi.Input.asOptionalInput<List<String>>(cloudInitConfigurationBlobs),
      delegation = pulumi.Input.asOptionalInput<DelegationProperties>(delegation),
      id = pulumi.Input.asOptionalInput<String>(id),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      internetIngressPublicIps = pulumi.Input.asOptionalInput<List<InternetIngressPublicIpsProperties>>(internetIngressPublicIps),
      location = pulumi.Input.asOptionalInput<String>(location),
      networkProfile = pulumi.Input.asOptionalInput<NetworkVirtualAppliancePropertiesFormatNetworkProfile>(networkProfile),
      networkVirtualApplianceName = pulumi.Input.asOptionalInput<String>(networkVirtualApplianceName),
      nvaSku = pulumi.Input.asOptionalInput<VirtualApplianceSkuProperties>(nvaSku),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sshPublicKey = pulumi.Input.asOptionalInput<String>(sshPublicKey),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualApplianceAsn = pulumi.Input.asOptionalInput<double>(virtualApplianceAsn),
      virtualHub = pulumi.Input.asOptionalInput<SubResource>(virtualHub);

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
      additionalNics: map['additionalNics'] == null ? null : pulumi.Output.create<List<VirtualApplianceAdditionalNicProperties>>(pulumi.Input.decodeList<VirtualApplianceAdditionalNicProperties>(map['additionalNics'], (value) => VirtualApplianceAdditionalNicProperties.fromMap((value as Map).cast<String, dynamic>()))),
      bootStrapConfigurationBlobs: map['bootStrapConfigurationBlobs'] == null ? null : pulumi.Output.create<List<String>>((map['bootStrapConfigurationBlobs'] as List).cast<String>()),
      cloudInitConfiguration: map['cloudInitConfiguration'] == null ? null : pulumi.Output.create<String>(map['cloudInitConfiguration'] as String),
      cloudInitConfigurationBlobs: map['cloudInitConfigurationBlobs'] == null ? null : pulumi.Output.create<List<String>>((map['cloudInitConfigurationBlobs'] as List).cast<String>()),
      delegation: map['delegation'] == null ? null : pulumi.Output.create<DelegationProperties>(DelegationProperties.fromMap((map['delegation'] as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      internetIngressPublicIps: map['internetIngressPublicIps'] == null ? null : pulumi.Output.create<List<InternetIngressPublicIpsProperties>>(pulumi.Input.decodeList<InternetIngressPublicIpsProperties>(map['internetIngressPublicIps'], (value) => InternetIngressPublicIpsProperties.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      networkProfile: map['networkProfile'] == null ? null : pulumi.Output.create<NetworkVirtualAppliancePropertiesFormatNetworkProfile>(NetworkVirtualAppliancePropertiesFormatNetworkProfile.fromMap((map['networkProfile'] as Map).cast<String, dynamic>())),
      networkVirtualApplianceName: map['networkVirtualApplianceName'] == null ? null : pulumi.Output.create<String>(map['networkVirtualApplianceName'] as String),
      nvaSku: map['nvaSku'] == null ? null : pulumi.Output.create<VirtualApplianceSkuProperties>(VirtualApplianceSkuProperties.fromMap((map['nvaSku'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sshPublicKey: map['sshPublicKey'] == null ? null : pulumi.Output.create<String>(map['sshPublicKey'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualApplianceAsn: map['virtualApplianceAsn'] == null ? null : pulumi.Output.create<double>(map['virtualApplianceAsn'] as double),
      virtualHub: map['virtualHub'] == null ? null : pulumi.Output.create<SubResource>(SubResource.fromMap((map['virtualHub'] as Map).cast<String, dynamic>())),
    );
  }
}

