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
  final String addressPrefix;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// BootStrapConfigurationBlobs storage URLs.
  final List<String>? bootStrapConfigurationBlobs;
  /// CloudInitConfiguration string in plain text.
  final String? cloudInitConfiguration;
  /// CloudInitConfigurationBlob storage URLs.
  final List<String>? cloudInitConfigurationBlobs;
  /// The delegation for the Virtual Appliance
  final DelegationPropertiesResponse? delegation;
  /// The deployment type. PartnerManaged for the SaaS NVA
  final String deploymentType;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// The service principal that has read access to cloud-init and config blob.
  final ManagedServiceIdentityResponse? identity;
  /// List of references to InboundSecurityRules.
  final List<SubResourceResponse> inboundSecurityRules;
  /// List of Resource Uri of Public IPs for Internet Ingress Scenario.
  final List<InternetIngressPublicIpsPropertiesResponse>? internetIngressPublicIps;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String name;
  /// Network Profile containing configurations for Public and Private NIC.
  final NetworkVirtualAppliancePropertiesFormatResponseNetworkProfile? networkProfile;
  /// Network Virtual Appliance SKU.
  final VirtualApplianceSkuPropertiesResponse? nvaSku;
  /// The delegation for the Virtual Appliance
  final PartnerManagedResourcePropertiesResponse? partnerManagedResource;
  /// The provisioning state of the resource.
  final String provisioningState;
  /// Public key for SSH login.
  final String? sshPublicKey;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;
  /// VirtualAppliance ASN. Microsoft private, public and IANA reserved ASN are not supported.
  final double? virtualApplianceAsn;
  /// List of references to VirtualApplianceConnections.
  final List<SubResourceResponse> virtualApplianceConnections;
  /// List of Virtual Appliance Network Interfaces.
  final List<VirtualApplianceNicPropertiesResponse> virtualApplianceNics;
  /// List of references to VirtualApplianceSite.
  final List<SubResourceResponse> virtualApplianceSites;
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
  GetNetworkVirtualApplianceResult({
    this.additionalNics,
    required this.addressPrefix,
    required this.azureApiVersion,
    this.bootStrapConfigurationBlobs,
    this.cloudInitConfiguration,
    this.cloudInitConfigurationBlobs,
    this.delegation,
    required this.deploymentType,
    required this.etag,
    this.id,
    this.identity,
    required this.inboundSecurityRules,
    this.internetIngressPublicIps,
    this.location,
    required this.name,
    this.networkProfile,
    this.nvaSku,
    this.partnerManagedResource,
    required this.provisioningState,
    this.sshPublicKey,
    this.tags,
    required this.type,
    this.virtualApplianceAsn,
    required this.virtualApplianceConnections,
    required this.virtualApplianceNics,
    required this.virtualApplianceSites,
    this.virtualHub,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalNics': ?additionalNics == null ? null : pulumi.Input.encodeList<VirtualApplianceAdditionalNicPropertiesResponse, Map<String, dynamic>>(additionalNics!, (value) => value.toMap()),
      'addressPrefix': addressPrefix,
      'azureApiVersion': azureApiVersion,
      'bootStrapConfigurationBlobs': ?bootStrapConfigurationBlobs,
      'cloudInitConfiguration': ?cloudInitConfiguration,
      'cloudInitConfigurationBlobs': ?cloudInitConfigurationBlobs,
      'delegation': ?delegation == null ? null : delegation!.toMap(),
      'deploymentType': deploymentType,
      'etag': etag,
      'id': ?id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'inboundSecurityRules': pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(inboundSecurityRules, (value) => value.toMap()),
      'internetIngressPublicIps': ?internetIngressPublicIps == null ? null : pulumi.Input.encodeList<InternetIngressPublicIpsPropertiesResponse, Map<String, dynamic>>(internetIngressPublicIps!, (value) => value.toMap()),
      'location': ?location,
      'name': name,
      'networkProfile': ?networkProfile == null ? null : networkProfile!.toMap(),
      'nvaSku': ?nvaSku == null ? null : nvaSku!.toMap(),
      'partnerManagedResource': ?partnerManagedResource == null ? null : partnerManagedResource!.toMap(),
      'provisioningState': provisioningState,
      'sshPublicKey': ?sshPublicKey,
      'tags': ?tags,
      'type': type,
      'virtualApplianceAsn': ?virtualApplianceAsn,
      'virtualApplianceConnections': pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(virtualApplianceConnections, (value) => value.toMap()),
      'virtualApplianceNics': pulumi.Input.encodeList<VirtualApplianceNicPropertiesResponse, Map<String, dynamic>>(virtualApplianceNics, (value) => value.toMap()),
      'virtualApplianceSites': pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(virtualApplianceSites, (value) => value.toMap()),
      'virtualHub': ?virtualHub == null ? null : virtualHub!.toMap(),
    };
  }

  factory GetNetworkVirtualApplianceResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkVirtualApplianceResult(
      additionalNics: map['additionalNics'] == null ? null : pulumi.Input.decodeList<VirtualApplianceAdditionalNicPropertiesResponse>(map['additionalNics']!, (value) => VirtualApplianceAdditionalNicPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      addressPrefix: map['addressPrefix'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      bootStrapConfigurationBlobs: map['bootStrapConfigurationBlobs'] == null ? null : (map['bootStrapConfigurationBlobs']! as List).cast<String>(),
      cloudInitConfiguration: map['cloudInitConfiguration'] == null ? null : map['cloudInitConfiguration']! as String,
      cloudInitConfigurationBlobs: map['cloudInitConfigurationBlobs'] == null ? null : (map['cloudInitConfigurationBlobs']! as List).cast<String>(),
      delegation: map['delegation'] == null ? null : DelegationPropertiesResponse.fromMap((map['delegation']! as Map).cast<String, dynamic>()),
      deploymentType: map['deploymentType'] as String,
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id']! as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      inboundSecurityRules: pulumi.Input.decodeList<SubResourceResponse>(map['inboundSecurityRules'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      internetIngressPublicIps: map['internetIngressPublicIps'] == null ? null : pulumi.Input.decodeList<InternetIngressPublicIpsPropertiesResponse>(map['internetIngressPublicIps']!, (value) => InternetIngressPublicIpsPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      networkProfile: map['networkProfile'] == null ? null : NetworkVirtualAppliancePropertiesFormatResponseNetworkProfile.fromMap((map['networkProfile']! as Map).cast<String, dynamic>()),
      nvaSku: map['nvaSku'] == null ? null : VirtualApplianceSkuPropertiesResponse.fromMap((map['nvaSku']! as Map).cast<String, dynamic>()),
      partnerManagedResource: map['partnerManagedResource'] == null ? null : PartnerManagedResourcePropertiesResponse.fromMap((map['partnerManagedResource']! as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      sshPublicKey: map['sshPublicKey'] == null ? null : map['sshPublicKey']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      virtualApplianceAsn: map['virtualApplianceAsn'] == null ? null : map['virtualApplianceAsn']! as double,
      virtualApplianceConnections: pulumi.Input.decodeList<SubResourceResponse>(map['virtualApplianceConnections'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      virtualApplianceNics: pulumi.Input.decodeList<VirtualApplianceNicPropertiesResponse>(map['virtualApplianceNics'], (value) => VirtualApplianceNicPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      virtualApplianceSites: pulumi.Input.decodeList<SubResourceResponse>(map['virtualApplianceSites'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      virtualHub: map['virtualHub'] == null ? null : SubResourceResponse.fromMap((map['virtualHub']! as Map).cast<String, dynamic>()),
    );
  }
}

