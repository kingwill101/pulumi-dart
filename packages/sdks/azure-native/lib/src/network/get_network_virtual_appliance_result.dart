// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delegation_properties_response.dart';
import 'internet_ingress_public_ips_properties_response.dart';
import 'managed_service_identity_response.dart';
import 'network_virtual_appliance_properties_format_response_network_profile.dart';
import 'partner_managed_resource_properties_response.dart';
import 'sub_resource_response.dart';
import 'virtual_appliance_additional_nic_properties_response.dart';
import 'virtual_appliance_nic_properties_response.dart';
import 'virtual_appliance_sku_properties_response.dart';

/// Result data returned by getNetworkVirtualAppliance.
class GetNetworkVirtualApplianceResult {
  /// Details required for Additional Network Interface.
  final List<VirtualApplianceAdditionalNicPropertiesResponse>? additionalNics;
  /// Address Prefix.
  final String? addressPrefix;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// BootStrapConfigurationBlobs storage URLs.
  final List<String>? bootStrapConfigurationBlobs;
  /// CloudInitConfiguration string in plain text.
  final String? cloudInitConfiguration;
  /// CloudInitConfigurationBlob storage URLs.
  final List<String>? cloudInitConfigurationBlobs;
  /// The delegation for the Virtual Appliance
  final DelegationPropertiesResponse? delegation;
  /// The deployment type. PartnerManaged for the SaaS NVA
  final String? deploymentType;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Resource ID.
  final String? id;
  /// The service principal that has read access to cloud-init and config blob.
  final ManagedServiceIdentityResponse? identity;
  /// List of references to InboundSecurityRules.
  final List<SubResourceResponse>? inboundSecurityRules;
  /// List of Resource Uri of Public IPs for Internet Ingress Scenario.
  final List<InternetIngressPublicIpsPropertiesResponse>? internetIngressPublicIps;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String? name;
  /// Network Profile containing configurations for Public and Private NIC.
  final NetworkVirtualAppliancePropertiesFormatResponseNetworkProfile? networkProfile;
  /// Network Virtual Appliance SKU.
  final VirtualApplianceSkuPropertiesResponse? nvaSku;
  /// The delegation for the Virtual Appliance
  final PartnerManagedResourcePropertiesResponse? partnerManagedResource;
  /// The provisioning state of the resource.
  final String? provisioningState;
  /// Public key for SSH login.
  final String? sshPublicKey;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String? type;
  /// VirtualAppliance ASN. Microsoft private, public and IANA reserved ASN are not supported.
  final double? virtualApplianceAsn;
  /// List of references to VirtualApplianceConnections.
  final List<SubResourceResponse>? virtualApplianceConnections;
  /// List of Virtual Appliance Network Interfaces.
  final List<VirtualApplianceNicPropertiesResponse>? virtualApplianceNics;
  /// List of references to VirtualApplianceSite.
  final List<SubResourceResponse>? virtualApplianceSites;
  /// The Virtual Hub where Network Virtual Appliance is being deployed.
  final SubResourceResponse? virtualHub;

  /// Creates a new [GetNetworkVirtualApplianceResult].
  /// [additionalNics] Details required for Additional Network Interface.
  /// [addressPrefix] Address Prefix.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [bootStrapConfigurationBlobs] BootStrapConfigurationBlobs storage URLs.
  /// [cloudInitConfiguration] CloudInitConfiguration string in plain text.
  /// [cloudInitConfigurationBlobs] CloudInitConfigurationBlob storage URLs.
  /// [delegation] The delegation for the Virtual Appliance
  /// [deploymentType] The deployment type. PartnerManaged for the SaaS NVA
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [identity] The service principal that has read access to cloud-init and config blob.
  /// [inboundSecurityRules] List of references to InboundSecurityRules.
  /// [internetIngressPublicIps] List of Resource Uri of Public IPs for Internet Ingress Scenario.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [networkProfile] Network Profile containing configurations for Public and Private NIC.
  /// [nvaSku] Network Virtual Appliance SKU.
  /// [partnerManagedResource] The delegation for the Virtual Appliance
  /// [provisioningState] The provisioning state of the resource.
  /// [sshPublicKey] Public key for SSH login.
  /// [tags] Resource tags.
  /// [type] Resource type.
  /// [virtualApplianceAsn] VirtualAppliance ASN. Microsoft private, public and IANA reserved ASN are not supported.
  /// [virtualApplianceConnections] List of references to VirtualApplianceConnections.
  /// [virtualApplianceNics] List of Virtual Appliance Network Interfaces.
  /// [virtualApplianceSites] List of references to VirtualApplianceSite.
  /// [virtualHub] The Virtual Hub where Network Virtual Appliance is being deployed.
  const GetNetworkVirtualApplianceResult({
    this.additionalNics,
    this.addressPrefix,
    this.azureApiVersion,
    this.bootStrapConfigurationBlobs,
    this.cloudInitConfiguration,
    this.cloudInitConfigurationBlobs,
    this.delegation,
    this.deploymentType,
    this.etag,
    this.id,
    this.identity,
    this.inboundSecurityRules,
    this.internetIngressPublicIps,
    this.location,
    this.name,
    this.networkProfile,
    this.nvaSku,
    this.partnerManagedResource,
    this.provisioningState,
    this.sshPublicKey,
    this.tags,
    this.type,
    this.virtualApplianceAsn,
    this.virtualApplianceConnections,
    this.virtualApplianceNics,
    this.virtualApplianceSites,
    this.virtualHub,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalNics': ?(() { final guardedValue = additionalNics; if (guardedValue == null) return null; return pulumi.Input.encodeList<VirtualApplianceAdditionalNicPropertiesResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'addressPrefix': ?addressPrefix,
      'azureApiVersion': ?azureApiVersion,
      'bootStrapConfigurationBlobs': ?bootStrapConfigurationBlobs,
      'cloudInitConfiguration': ?cloudInitConfiguration,
      'cloudInitConfigurationBlobs': ?cloudInitConfigurationBlobs,
      'delegation': ?delegation?.toMap(),
      'deploymentType': ?deploymentType,
      'etag': ?etag,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'inboundSecurityRules': ?(() { final guardedValue = inboundSecurityRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'internetIngressPublicIps': ?(() { final guardedValue = internetIngressPublicIps; if (guardedValue == null) return null; return pulumi.Input.encodeList<InternetIngressPublicIpsPropertiesResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'networkProfile': ?networkProfile?.toMap(),
      'nvaSku': ?nvaSku?.toMap(),
      'partnerManagedResource': ?partnerManagedResource?.toMap(),
      'provisioningState': ?provisioningState,
      'sshPublicKey': ?sshPublicKey,
      'tags': ?tags,
      'type': ?type,
      'virtualApplianceAsn': ?virtualApplianceAsn,
      'virtualApplianceConnections': ?(() { final guardedValue = virtualApplianceConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'virtualApplianceNics': ?(() { final guardedValue = virtualApplianceNics; if (guardedValue == null) return null; return pulumi.Input.encodeList<VirtualApplianceNicPropertiesResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'virtualApplianceSites': ?(() { final guardedValue = virtualApplianceSites; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'virtualHub': ?virtualHub?.toMap(),
    };
  }

  factory GetNetworkVirtualApplianceResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkVirtualApplianceResult(
      additionalNics: (() { final guardedValue = map['additionalNics']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VirtualApplianceAdditionalNicPropertiesResponse>(guardedValue, (value) => VirtualApplianceAdditionalNicPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      addressPrefix: (() { final guardedValue = map['addressPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bootStrapConfigurationBlobs: (() { final guardedValue = map['bootStrapConfigurationBlobs']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      cloudInitConfiguration: (() { final guardedValue = map['cloudInitConfiguration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cloudInitConfigurationBlobs: (() { final guardedValue = map['cloudInitConfigurationBlobs']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      delegation: (() { final guardedValue = map['delegation']; if (guardedValue == null) return null; return DelegationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      deploymentType: (() { final guardedValue = map['deploymentType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      inboundSecurityRules: (() { final guardedValue = map['inboundSecurityRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      internetIngressPublicIps: (() { final guardedValue = map['internetIngressPublicIps']; if (guardedValue == null) return null; return pulumi.Input.decodeList<InternetIngressPublicIpsPropertiesResponse>(guardedValue, (value) => InternetIngressPublicIpsPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return NetworkVirtualAppliancePropertiesFormatResponseNetworkProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      nvaSku: (() { final guardedValue = map['nvaSku']; if (guardedValue == null) return null; return VirtualApplianceSkuPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      partnerManagedResource: (() { final guardedValue = map['partnerManagedResource']; if (guardedValue == null) return null; return PartnerManagedResourcePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sshPublicKey: (() { final guardedValue = map['sshPublicKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualApplianceAsn: (() { final guardedValue = map['virtualApplianceAsn']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      virtualApplianceConnections: (() { final guardedValue = map['virtualApplianceConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      virtualApplianceNics: (() { final guardedValue = map['virtualApplianceNics']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VirtualApplianceNicPropertiesResponse>(guardedValue, (value) => VirtualApplianceNicPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      virtualApplianceSites: (() { final guardedValue = map['virtualApplianceSites']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      virtualHub: (() { final guardedValue = map['virtualHub']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
