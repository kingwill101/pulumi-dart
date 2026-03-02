// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_network_interface_configuration_response.dart';
import 'endpoint_range_description_response.dart';
import 'frontend_configuration_response.dart';
import 'network_security_rule_response.dart';
import 'node_type_nat_config_response.dart';
import 'node_type_sku_response.dart';
import 'system_data_response.dart';
import 'vault_secret_group_response.dart';
import 'vm_image_plan_response.dart';
import 'vm_managed_identity_response.dart';
import 'vmss_data_disk_response.dart';
import 'vmssextension_response.dart';

/// Result data returned by getNodeType.
class GetNodeTypeResult {
  /// Additional managed data disks.
  final List<VmssDataDiskResponse>? additionalDataDisks;
  /// Specifies the settings for any additional secondary network interfaces to attach to the node type.
  final List<AdditionalNetworkInterfaceConfigurationResponse>? additionalNetworkInterfaceConfigurations;
  /// The range of ports from which cluster assigned port to Service Fabric applications.
  final EndpointRangeDescriptionResponse? applicationPorts;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The capacity tags applied to the nodes in the node type, the cluster resource manager uses these tags to understand how much resource a node has.
  final Map<String, String>? capacities;
  /// Specifies the computer name prefix. Limited to 9 characters. If specified, allows for a longer name to be specified for the node type name.
  final String? computerNamePrefix;
  /// Managed data disk letter. It can not use the reserved letter C or D and it can not change after created.
  final String? dataDiskLetter;
  /// Disk size for the managed disk attached to the vms on the node type in GBs.
  final int? dataDiskSizeGB;
  /// Managed data disk type. Specifies the storage account type for the managed disk
  final String? dataDiskType;
  /// Specifies the resource id of the DSCP configuration to apply to the node type network interface.
  final String? dscpConfigurationId;
  /// Specifies whether the network interface is accelerated networking-enabled.
  final bool? enableAcceleratedNetworking;
  /// Enable or disable the Host Encryption for the virtual machines on the node type. This will enable the encryption for all the disks including Resource/Temp disk at host itself. Default: The Encryption at host will be disabled unless this property is set to true for the resource.
  final bool? enableEncryptionAtHost;
  /// Specifies whether each node is allocated its own public IPv4 address. This is only supported on secondary node types with custom Load Balancers.
  final bool? enableNodePublicIP;
  /// Specifies whether each node is allocated its own public IPv6 address. This is only supported on secondary node types with custom Load Balancers.
  final bool? enableNodePublicIPv6;
  /// Specifies whether the node type should be overprovisioned. It is only allowed for stateless node types.
  final bool? enableOverProvisioning;
  /// The range of ephemeral ports that nodes in this node type should be configured with.
  final EndpointRangeDescriptionResponse? ephemeralPorts;
  /// Specifies the eviction policy for virtual machines in a SPOT node type. Default is Delete.
  final String? evictionPolicy;
  /// Indicates the node type uses its own frontend configurations instead of the default one for the cluster. This setting can only be specified for non-primary node types and can not be added or removed after the node type is created.
  final List<FrontendConfigurationResponse>? frontendConfigurations;
  /// Specifies the full host group resource Id. This property is used for deploying on azure dedicated hosts.
  final String? hostGroupId;
  /// Azure resource identifier.
  final String id;
  /// Indicates the Service Fabric system services for the cluster will run on this node type. This setting cannot be changed once the node type is created.
  final bool isPrimary;
  /// Indicates whether the node type will be Spot Virtual Machines. Azure will allocate the VMs if there is capacity available and the VMs can be evicted at any time.
  final bool? isSpotVM;
  /// Indicates if the node type can only host Stateless workloads.
  final bool? isStateless;
  /// Indicates if scale set associated with the node type can be composed of multiple placement groups.
  final bool? multiplePlacementGroups;
  /// Azure resource name.
  final String name;
  /// Specifies the NAT configuration on default public Load Balancer for the node type. This is only supported for node types use the default public Load Balancer.
  final List<NodeTypeNatConfigResponse>? natConfigurations;
  /// Specifies the resource id of a NAT Gateway to attach to the subnet of this node type. Node type must use custom load balancer.
  final String? natGatewayId;
  /// The Network Security Rules for this node type. This setting can only be specified for node types that are configured with frontend configurations.
  final List<NetworkSecurityRuleResponse>? networkSecurityRules;
  /// The placement tags applied to nodes in the node type, which can be used to indicate where certain services (workload) should run.
  final Map<String, String>? placementProperties;
  /// The provisioning state of the node type resource.
  final String provisioningState;
  /// Specifies whether secure boot should be enabled on the nodeType. Can only be used with TrustedLaunch SecurityType
  final bool? secureBootEnabled;
  /// Specifies the security type of the nodeType. Only Standard and TrustedLaunch are currently supported
  final String? securityType;
  /// Specifies the service artifact reference id used to set same image version for all virtual machines in the scale set when using 'latest' image version.
  final String? serviceArtifactReferenceId;
  /// The node type sku.
  final NodeTypeSkuResponse? sku;
  /// Indicates the time duration after which the platform will not try to restore the VMSS SPOT instances specified as ISO 8601.
  final String? spotRestoreTimeout;
  /// Indicates the resource id of the subnet for the node type.
  final String? subnetId;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// Azure resource tags.
  final Map<String, String>? tags;
  /// Azure resource type.
  final String type;
  /// Specifies whether the use public load balancer. If not specified and the node type doesn't have its own frontend configuration, it will be attached to the default load balancer. If the node type uses its own Load balancer and useDefaultPublicLoadBalancer is true, then the frontend has to be an Internal Load Balancer. If the node type uses its own Load balancer and useDefaultPublicLoadBalancer is false or not set, then the custom load balancer must include a public load balancer to provide outbound connectivity.
  final bool? useDefaultPublicLoadBalancer;
  /// Indicates whether to use ephemeral os disk. The sku selected on the vmSize property needs to support this feature.
  final bool? useEphemeralOSDisk;
  /// Specifies whether to use the temporary disk for the service fabric data root, in which case no managed data disk will be attached and the temporary disk will be used. It is only allowed for stateless node types.
  final bool? useTempDataDisk;
  /// Set of extensions that should be installed onto the virtual machines.
  final List<VMSSExtensionResponse>? vmExtensions;
  /// The offer type of the Azure Virtual Machines Marketplace image. For example, UbuntuServer or WindowsServer.
  final String? vmImageOffer;
  /// Specifies information about the marketplace image used to create the virtual machine. This element is only used for marketplace images. Before you can use a marketplace image from an API, you must enable the image for programmatic use. In the Azure portal, find the marketplace image that you want to use and then click Want to deploy programmatically, Get Started ->. Enter any required information and then click Save.
  final VmImagePlanResponse? vmImagePlan;
  /// The publisher of the Azure Virtual Machines Marketplace image. For example, Canonical or MicrosoftWindowsServer.
  final String? vmImagePublisher;
  /// Indicates the resource id of the vm image. This parameter is used for custom vm image.
  final String? vmImageResourceId;
  /// The SKU of the Azure Virtual Machines Marketplace image. For example, 14.04.0-LTS or 2012-R2-Datacenter.
  final String? vmImageSku;
  /// The version of the Azure Virtual Machines Marketplace image. A value of 'latest' can be specified to select the latest version of an image. If omitted, the default is 'latest'.
  final String? vmImageVersion;
  /// The number of nodes in the node type. <br /><br />**Values:** <br />-1 - Use when auto scale rules are configured or sku.capacity is defined <br /> 0 - Not supported <br /> >0 - Use for manual scale.
  final int vmInstanceCount;
  /// Identities to assign to the virtual machine scale set under the node type.
  final VmManagedIdentityResponse? vmManagedIdentity;
  /// The secrets to install in the virtual machines.
  final List<VaultSecretGroupResponse>? vmSecrets;
  /// Specifies the actions to be performed on the vms before bootstrapping the service fabric runtime.
  final List<String>? vmSetupActions;
  /// Indicates the resource id of the vm shared galleries image. This parameter is used for custom vm image.
  final String? vmSharedGalleryImageId;
  /// The size of virtual machines in the pool. All virtual machines in a pool are the same size. For example, Standard_D3.
  final String? vmSize;
  /// Specifies the availability zones where the node type would span across. If the cluster is not spanning across availability zones, initiates az migration for the cluster.
  final List<String>? zones;

  /// Creates a new [GetNodeTypeResult].
  /// [additionalDataDisks] Additional managed data disks.
  /// [additionalNetworkInterfaceConfigurations] Specifies the settings for any additional secondary network interfaces to attach to the node type.
  /// [applicationPorts] The range of ports from which cluster assigned port to Service Fabric applications.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [capacities] The capacity tags applied to the nodes in the node type, the cluster resource manager uses these tags to understand how much resource a node has.
  /// [computerNamePrefix] Specifies the computer name prefix. Limited to 9 characters. If specified, allows for a longer name to be specified for the node type name.
  /// [dataDiskLetter] Managed data disk letter. It can not use the reserved letter C or D and it can not change after created.
  /// [dataDiskSizeGB] Disk size for the managed disk attached to the vms on the node type in GBs.
  /// [dataDiskType] Managed data disk type. Specifies the storage account type for the managed disk
  /// [dscpConfigurationId] Specifies the resource id of the DSCP configuration to apply to the node type network interface.
  /// [enableAcceleratedNetworking] Specifies whether the network interface is accelerated networking-enabled.
  /// [enableEncryptionAtHost] Enable or disable the Host Encryption for the virtual machines on the node type. This will enable the encryption for all the disks including Resource/Temp disk at host itself. Default: The Encryption at host will be disabled unless this property is set to true for the resource.
  /// [enableNodePublicIP] Specifies whether each node is allocated its own public IPv4 address. This is only supported on secondary node types with custom Load Balancers.
  /// [enableNodePublicIPv6] Specifies whether each node is allocated its own public IPv6 address. This is only supported on secondary node types with custom Load Balancers.
  /// [enableOverProvisioning] Specifies whether the node type should be overprovisioned. It is only allowed for stateless node types.
  /// [ephemeralPorts] The range of ephemeral ports that nodes in this node type should be configured with.
  /// [evictionPolicy] Specifies the eviction policy for virtual machines in a SPOT node type. Default is Delete.
  /// [frontendConfigurations] Indicates the node type uses its own frontend configurations instead of the default one for the cluster. This setting can only be specified for non-primary node types and can not be added or removed after the node type is created.
  /// [hostGroupId] Specifies the full host group resource Id. This property is used for deploying on azure dedicated hosts.
  /// [id] Azure resource identifier.
  /// [isPrimary] Indicates the Service Fabric system services for the cluster will run on this node type. This setting cannot be changed once the node type is created.
  /// [isSpotVM] Indicates whether the node type will be Spot Virtual Machines. Azure will allocate the VMs if there is capacity available and the VMs can be evicted at any time.
  /// [isStateless] Indicates if the node type can only host Stateless workloads.
  /// [multiplePlacementGroups] Indicates if scale set associated with the node type can be composed of multiple placement groups.
  /// [name] Azure resource name.
  /// [natConfigurations] Specifies the NAT configuration on default public Load Balancer for the node type. This is only supported for node types use the default public Load Balancer.
  /// [natGatewayId] Specifies the resource id of a NAT Gateway to attach to the subnet of this node type. Node type must use custom load balancer.
  /// [networkSecurityRules] The Network Security Rules for this node type. This setting can only be specified for node types that are configured with frontend configurations.
  /// [placementProperties] The placement tags applied to nodes in the node type, which can be used to indicate where certain services (workload) should run.
  /// [provisioningState] The provisioning state of the node type resource.
  /// [secureBootEnabled] Specifies whether secure boot should be enabled on the nodeType. Can only be used with TrustedLaunch SecurityType
  /// [securityType] Specifies the security type of the nodeType. Only Standard and TrustedLaunch are currently supported
  /// [serviceArtifactReferenceId] Specifies the service artifact reference id used to set same image version for all virtual machines in the scale set when using 'latest' image version.
  /// [sku] The node type sku.
  /// [spotRestoreTimeout] Indicates the time duration after which the platform will not try to restore the VMSS SPOT instances specified as ISO 8601.
  /// [subnetId] Indicates the resource id of the subnet for the node type.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Azure resource tags.
  /// [type] Azure resource type.
  /// [useDefaultPublicLoadBalancer] Specifies whether the use public load balancer. If not specified and the node type doesn't have its own frontend configuration, it will be attached to the default load balancer. If the node type uses its own Load balancer and useDefaultPublicLoadBalancer is true, then the frontend has to be an Internal Load Balancer. If the node type uses its own Load balancer and useDefaultPublicLoadBalancer is false or not set, then the custom load balancer must include a public load balancer to provide outbound connectivity.
  /// [useEphemeralOSDisk] Indicates whether to use ephemeral os disk. The sku selected on the vmSize property needs to support this feature.
  /// [useTempDataDisk] Specifies whether to use the temporary disk for the service fabric data root, in which case no managed data disk will be attached and the temporary disk will be used. It is only allowed for stateless node types.
  /// [vmExtensions] Set of extensions that should be installed onto the virtual machines.
  /// [vmImageOffer] The offer type of the Azure Virtual Machines Marketplace image. For example, UbuntuServer or WindowsServer.
  /// [vmImagePlan] Specifies information about the marketplace image used to create the virtual machine. This element is only used for marketplace images. Before you can use a marketplace image from an API, you must enable the image for programmatic use. In the Azure portal, find the marketplace image that you want to use and then click Want to deploy programmatically, Get Started ->. Enter any required information and then click Save.
  /// [vmImagePublisher] The publisher of the Azure Virtual Machines Marketplace image. For example, Canonical or MicrosoftWindowsServer.
  /// [vmImageResourceId] Indicates the resource id of the vm image. This parameter is used for custom vm image.
  /// [vmImageSku] The SKU of the Azure Virtual Machines Marketplace image. For example, 14.04.0-LTS or 2012-R2-Datacenter.
  /// [vmImageVersion] The version of the Azure Virtual Machines Marketplace image. A value of 'latest' can be specified to select the latest version of an image. If omitted, the default is 'latest'.
  /// [vmInstanceCount] The number of nodes in the node type. <br /><br />**Values:** <br />-1 - Use when auto scale rules are configured or sku.capacity is defined <br /> 0 - Not supported <br /> >0 - Use for manual scale.
  /// [vmManagedIdentity] Identities to assign to the virtual machine scale set under the node type.
  /// [vmSecrets] The secrets to install in the virtual machines.
  /// [vmSetupActions] Specifies the actions to be performed on the vms before bootstrapping the service fabric runtime.
  /// [vmSharedGalleryImageId] Indicates the resource id of the vm shared galleries image. This parameter is used for custom vm image.
  /// [vmSize] The size of virtual machines in the pool. All virtual machines in a pool are the same size. For example, Standard_D3.
  /// [zones] Specifies the availability zones where the node type would span across. If the cluster is not spanning across availability zones, initiates az migration for the cluster.
  GetNodeTypeResult({
    this.additionalDataDisks,
    this.additionalNetworkInterfaceConfigurations,
    this.applicationPorts,
    required this.azureApiVersion,
    this.capacities,
    this.computerNamePrefix,
    this.dataDiskLetter,
    this.dataDiskSizeGB,
    this.dataDiskType,
    this.dscpConfigurationId,
    this.enableAcceleratedNetworking,
    this.enableEncryptionAtHost,
    this.enableNodePublicIP,
    this.enableNodePublicIPv6,
    this.enableOverProvisioning,
    this.ephemeralPorts,
    this.evictionPolicy,
    this.frontendConfigurations,
    this.hostGroupId,
    required this.id,
    required this.isPrimary,
    this.isSpotVM,
    this.isStateless,
    this.multiplePlacementGroups,
    required this.name,
    this.natConfigurations,
    this.natGatewayId,
    this.networkSecurityRules,
    this.placementProperties,
    required this.provisioningState,
    this.secureBootEnabled,
    this.securityType,
    this.serviceArtifactReferenceId,
    this.sku,
    this.spotRestoreTimeout,
    this.subnetId,
    required this.systemData,
    this.tags,
    required this.type,
    this.useDefaultPublicLoadBalancer,
    this.useEphemeralOSDisk,
    this.useTempDataDisk,
    this.vmExtensions,
    this.vmImageOffer,
    this.vmImagePlan,
    this.vmImagePublisher,
    this.vmImageResourceId,
    this.vmImageSku,
    this.vmImageVersion,
    required this.vmInstanceCount,
    this.vmManagedIdentity,
    this.vmSecrets,
    this.vmSetupActions,
    this.vmSharedGalleryImageId,
    this.vmSize,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalDataDisks': ?additionalDataDisks == null ? null : pulumi.Input.encodeList<VmssDataDiskResponse, Map<String, dynamic>>(additionalDataDisks!, (value) => value.toMap()),
      'additionalNetworkInterfaceConfigurations': ?additionalNetworkInterfaceConfigurations == null ? null : pulumi.Input.encodeList<AdditionalNetworkInterfaceConfigurationResponse, Map<String, dynamic>>(additionalNetworkInterfaceConfigurations!, (value) => value.toMap()),
      'applicationPorts': ?applicationPorts == null ? null : applicationPorts!.toMap(),
      'azureApiVersion': azureApiVersion,
      'capacities': ?capacities,
      'computerNamePrefix': ?computerNamePrefix,
      'dataDiskLetter': ?dataDiskLetter,
      'dataDiskSizeGB': ?dataDiskSizeGB,
      'dataDiskType': ?dataDiskType,
      'dscpConfigurationId': ?dscpConfigurationId,
      'enableAcceleratedNetworking': ?enableAcceleratedNetworking,
      'enableEncryptionAtHost': ?enableEncryptionAtHost,
      'enableNodePublicIP': ?enableNodePublicIP,
      'enableNodePublicIPv6': ?enableNodePublicIPv6,
      'enableOverProvisioning': ?enableOverProvisioning,
      'ephemeralPorts': ?ephemeralPorts == null ? null : ephemeralPorts!.toMap(),
      'evictionPolicy': ?evictionPolicy,
      'frontendConfigurations': ?frontendConfigurations == null ? null : pulumi.Input.encodeList<FrontendConfigurationResponse, Map<String, dynamic>>(frontendConfigurations!, (value) => value.toMap()),
      'hostGroupId': ?hostGroupId,
      'id': id,
      'isPrimary': isPrimary,
      'isSpotVM': ?isSpotVM,
      'isStateless': ?isStateless,
      'multiplePlacementGroups': ?multiplePlacementGroups,
      'name': name,
      'natConfigurations': ?natConfigurations == null ? null : pulumi.Input.encodeList<NodeTypeNatConfigResponse, Map<String, dynamic>>(natConfigurations!, (value) => value.toMap()),
      'natGatewayId': ?natGatewayId,
      'networkSecurityRules': ?networkSecurityRules == null ? null : pulumi.Input.encodeList<NetworkSecurityRuleResponse, Map<String, dynamic>>(networkSecurityRules!, (value) => value.toMap()),
      'placementProperties': ?placementProperties,
      'provisioningState': provisioningState,
      'secureBootEnabled': ?secureBootEnabled,
      'securityType': ?securityType,
      'serviceArtifactReferenceId': ?serviceArtifactReferenceId,
      'sku': ?sku == null ? null : sku!.toMap(),
      'spotRestoreTimeout': ?spotRestoreTimeout,
      'subnetId': ?subnetId,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'useDefaultPublicLoadBalancer': ?useDefaultPublicLoadBalancer,
      'useEphemeralOSDisk': ?useEphemeralOSDisk,
      'useTempDataDisk': ?useTempDataDisk,
      'vmExtensions': ?vmExtensions == null ? null : pulumi.Input.encodeList<VMSSExtensionResponse, Map<String, dynamic>>(vmExtensions!, (value) => value.toMap()),
      'vmImageOffer': ?vmImageOffer,
      'vmImagePlan': ?vmImagePlan == null ? null : vmImagePlan!.toMap(),
      'vmImagePublisher': ?vmImagePublisher,
      'vmImageResourceId': ?vmImageResourceId,
      'vmImageSku': ?vmImageSku,
      'vmImageVersion': ?vmImageVersion,
      'vmInstanceCount': vmInstanceCount,
      'vmManagedIdentity': ?vmManagedIdentity == null ? null : vmManagedIdentity!.toMap(),
      'vmSecrets': ?vmSecrets == null ? null : pulumi.Input.encodeList<VaultSecretGroupResponse, Map<String, dynamic>>(vmSecrets!, (value) => value.toMap()),
      'vmSetupActions': ?vmSetupActions,
      'vmSharedGalleryImageId': ?vmSharedGalleryImageId,
      'vmSize': ?vmSize,
      'zones': ?zones,
    };
  }

  factory GetNodeTypeResult.fromMap(Map<String, dynamic> map) {
    return GetNodeTypeResult(
      additionalDataDisks: map['additionalDataDisks'] == null ? null : pulumi.Input.decodeList<VmssDataDiskResponse>(map['additionalDataDisks']!, (value) => VmssDataDiskResponse.fromMap((value as Map).cast<String, dynamic>())),
      additionalNetworkInterfaceConfigurations: map['additionalNetworkInterfaceConfigurations'] == null ? null : pulumi.Input.decodeList<AdditionalNetworkInterfaceConfigurationResponse>(map['additionalNetworkInterfaceConfigurations']!, (value) => AdditionalNetworkInterfaceConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      applicationPorts: map['applicationPorts'] == null ? null : EndpointRangeDescriptionResponse.fromMap((map['applicationPorts']! as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      capacities: map['capacities'] == null ? null : (map['capacities']! as Map).cast<String, String>(),
      computerNamePrefix: map['computerNamePrefix'] == null ? null : map['computerNamePrefix']! as String,
      dataDiskLetter: map['dataDiskLetter'] == null ? null : map['dataDiskLetter']! as String,
      dataDiskSizeGB: map['dataDiskSizeGB'] == null ? null : map['dataDiskSizeGB']! as int,
      dataDiskType: map['dataDiskType'] == null ? null : map['dataDiskType']! as String,
      dscpConfigurationId: map['dscpConfigurationId'] == null ? null : map['dscpConfigurationId']! as String,
      enableAcceleratedNetworking: map['enableAcceleratedNetworking'] == null ? null : map['enableAcceleratedNetworking']! as bool,
      enableEncryptionAtHost: map['enableEncryptionAtHost'] == null ? null : map['enableEncryptionAtHost']! as bool,
      enableNodePublicIP: map['enableNodePublicIP'] == null ? null : map['enableNodePublicIP']! as bool,
      enableNodePublicIPv6: map['enableNodePublicIPv6'] == null ? null : map['enableNodePublicIPv6']! as bool,
      enableOverProvisioning: map['enableOverProvisioning'] == null ? null : map['enableOverProvisioning']! as bool,
      ephemeralPorts: map['ephemeralPorts'] == null ? null : EndpointRangeDescriptionResponse.fromMap((map['ephemeralPorts']! as Map).cast<String, dynamic>()),
      evictionPolicy: map['evictionPolicy'] == null ? null : map['evictionPolicy']! as String,
      frontendConfigurations: map['frontendConfigurations'] == null ? null : pulumi.Input.decodeList<FrontendConfigurationResponse>(map['frontendConfigurations']!, (value) => FrontendConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      hostGroupId: map['hostGroupId'] == null ? null : map['hostGroupId']! as String,
      id: map['id'] as String,
      isPrimary: map['isPrimary'] as bool,
      isSpotVM: map['isSpotVM'] == null ? null : map['isSpotVM']! as bool,
      isStateless: map['isStateless'] == null ? null : map['isStateless']! as bool,
      multiplePlacementGroups: map['multiplePlacementGroups'] == null ? null : map['multiplePlacementGroups']! as bool,
      name: map['name'] as String,
      natConfigurations: map['natConfigurations'] == null ? null : pulumi.Input.decodeList<NodeTypeNatConfigResponse>(map['natConfigurations']!, (value) => NodeTypeNatConfigResponse.fromMap((value as Map).cast<String, dynamic>())),
      natGatewayId: map['natGatewayId'] == null ? null : map['natGatewayId']! as String,
      networkSecurityRules: map['networkSecurityRules'] == null ? null : pulumi.Input.decodeList<NetworkSecurityRuleResponse>(map['networkSecurityRules']!, (value) => NetworkSecurityRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      placementProperties: map['placementProperties'] == null ? null : (map['placementProperties']! as Map).cast<String, String>(),
      provisioningState: map['provisioningState'] as String,
      secureBootEnabled: map['secureBootEnabled'] == null ? null : map['secureBootEnabled']! as bool,
      securityType: map['securityType'] == null ? null : map['securityType']! as String,
      serviceArtifactReferenceId: map['serviceArtifactReferenceId'] == null ? null : map['serviceArtifactReferenceId']! as String,
      sku: map['sku'] == null ? null : NodeTypeSkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      spotRestoreTimeout: map['spotRestoreTimeout'] == null ? null : map['spotRestoreTimeout']! as String,
      subnetId: map['subnetId'] == null ? null : map['subnetId']! as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      useDefaultPublicLoadBalancer: map['useDefaultPublicLoadBalancer'] == null ? null : map['useDefaultPublicLoadBalancer']! as bool,
      useEphemeralOSDisk: map['useEphemeralOSDisk'] == null ? null : map['useEphemeralOSDisk']! as bool,
      useTempDataDisk: map['useTempDataDisk'] == null ? null : map['useTempDataDisk']! as bool,
      vmExtensions: map['vmExtensions'] == null ? null : pulumi.Input.decodeList<VMSSExtensionResponse>(map['vmExtensions']!, (value) => VMSSExtensionResponse.fromMap((value as Map).cast<String, dynamic>())),
      vmImageOffer: map['vmImageOffer'] == null ? null : map['vmImageOffer']! as String,
      vmImagePlan: map['vmImagePlan'] == null ? null : VmImagePlanResponse.fromMap((map['vmImagePlan']! as Map).cast<String, dynamic>()),
      vmImagePublisher: map['vmImagePublisher'] == null ? null : map['vmImagePublisher']! as String,
      vmImageResourceId: map['vmImageResourceId'] == null ? null : map['vmImageResourceId']! as String,
      vmImageSku: map['vmImageSku'] == null ? null : map['vmImageSku']! as String,
      vmImageVersion: map['vmImageVersion'] == null ? null : map['vmImageVersion']! as String,
      vmInstanceCount: map['vmInstanceCount'] as int,
      vmManagedIdentity: map['vmManagedIdentity'] == null ? null : VmManagedIdentityResponse.fromMap((map['vmManagedIdentity']! as Map).cast<String, dynamic>()),
      vmSecrets: map['vmSecrets'] == null ? null : pulumi.Input.decodeList<VaultSecretGroupResponse>(map['vmSecrets']!, (value) => VaultSecretGroupResponse.fromMap((value as Map).cast<String, dynamic>())),
      vmSetupActions: map['vmSetupActions'] == null ? null : (map['vmSetupActions']! as List).cast<String>(),
      vmSharedGalleryImageId: map['vmSharedGalleryImageId'] == null ? null : map['vmSharedGalleryImageId']! as String,
      vmSize: map['vmSize'] == null ? null : map['vmSize']! as String,
      zones: map['zones'] == null ? null : (map['zones']! as List).cast<String>(),
    );
  }
}

