// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_network_interface_configuration.dart';
import 'endpoint_range_description.dart';
import 'frontend_configuration.dart';
import 'network_security_rule.dart';
import 'node_type_nat_config.dart';
import 'node_type_sku.dart';
import 'vault_secret_group.dart';
import 'vm_image_plan.dart';
import 'vm_managed_identity.dart';
import 'vmss_data_disk.dart';
import 'vmssextension.dart';

/// {@template pulumi_servicefabric_node_type_args_doc}
/// The set of arguments for NodeType.
/// {@endtemplate}
/// {@macro pulumi_servicefabric_node_type_args_doc}
class NodeTypeArgs {
  /// Additional managed data disks.
  final pulumi.Input<List<VmssDataDisk>>? additionalDataDisks;
  /// Specifies the settings for any additional secondary network interfaces to attach to the node type.
  final pulumi.Input<List<AdditionalNetworkInterfaceConfiguration>>? additionalNetworkInterfaceConfigurations;
  /// The range of ports from which cluster assigned port to Service Fabric applications.
  final pulumi.Input<EndpointRangeDescription>? applicationPorts;
  /// The capacity tags applied to the nodes in the node type, the cluster resource manager uses these tags to understand how much resource a node has.
  final pulumi.Input<Map<String, String>>? capacities;
  /// The name of the cluster resource.
  final pulumi.Input<String> clusterName;
  /// Specifies the computer name prefix. Limited to 9 characters. If specified, allows for a longer name to be specified for the node type name.
  final pulumi.Input<String>? computerNamePrefix;
  /// Managed data disk letter. It can not use the reserved letter C or D and it can not change after created.
  final pulumi.Input<String>? dataDiskLetter;
  /// Disk size for the managed disk attached to the vms on the node type in GBs.
  final pulumi.Input<int>? dataDiskSizeGB;
  /// Managed data disk type. Specifies the storage account type for the managed disk
  final pulumi.Input<String>? dataDiskType;
  /// Specifies the resource id of the DSCP configuration to apply to the node type network interface.
  final pulumi.Input<String>? dscpConfigurationId;
  /// Specifies whether the network interface is accelerated networking-enabled.
  final pulumi.Input<bool>? enableAcceleratedNetworking;
  /// Enable or disable the Host Encryption for the virtual machines on the node type. This will enable the encryption for all the disks including Resource/Temp disk at host itself. Default: The Encryption at host will be disabled unless this property is set to true for the resource.
  final pulumi.Input<bool>? enableEncryptionAtHost;
  /// Specifies whether each node is allocated its own public IPv4 address. This is only supported on secondary node types with custom Load Balancers.
  final pulumi.Input<bool>? enableNodePublicIP;
  /// Specifies whether each node is allocated its own public IPv6 address. This is only supported on secondary node types with custom Load Balancers.
  final pulumi.Input<bool>? enableNodePublicIPv6;
  /// Specifies whether the node type should be overprovisioned. It is only allowed for stateless node types.
  final pulumi.Input<bool>? enableOverProvisioning;
  /// The range of ephemeral ports that nodes in this node type should be configured with.
  final pulumi.Input<EndpointRangeDescription>? ephemeralPorts;
  /// Specifies the eviction policy for virtual machines in a SPOT node type. Default is Delete.
  final pulumi.Input<String>? evictionPolicy;
  /// Indicates the node type uses its own frontend configurations instead of the default one for the cluster. This setting can only be specified for non-primary node types and can not be added or removed after the node type is created.
  final pulumi.Input<List<FrontendConfiguration>>? frontendConfigurations;
  /// Specifies the full host group resource Id. This property is used for deploying on azure dedicated hosts.
  final pulumi.Input<String>? hostGroupId;
  /// Indicates the Service Fabric system services for the cluster will run on this node type. This setting cannot be changed once the node type is created.
  final pulumi.Input<bool> isPrimary;
  /// Indicates whether the node type will be Spot Virtual Machines. Azure will allocate the VMs if there is capacity available and the VMs can be evicted at any time.
  final pulumi.Input<bool>? isSpotVM;
  /// Indicates if the node type can only host Stateless workloads.
  final pulumi.Input<bool>? isStateless;
  /// Indicates if scale set associated with the node type can be composed of multiple placement groups.
  final pulumi.Input<bool>? multiplePlacementGroups;
  /// Specifies the NAT configuration on default public Load Balancer for the node type. This is only supported for node types use the default public Load Balancer.
  final pulumi.Input<List<NodeTypeNatConfig>>? natConfigurations;
  /// Specifies the resource id of a NAT Gateway to attach to the subnet of this node type. Node type must use custom load balancer.
  final pulumi.Input<String>? natGatewayId;
  /// The Network Security Rules for this node type. This setting can only be specified for node types that are configured with frontend configurations.
  final pulumi.Input<List<NetworkSecurityRule>>? networkSecurityRules;
  /// The name of the node type.
  final pulumi.Input<String>? nodeTypeName;
  /// The placement tags applied to nodes in the node type, which can be used to indicate where certain services (workload) should run.
  final pulumi.Input<Map<String, String>>? placementProperties;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies whether secure boot should be enabled on the nodeType. Can only be used with TrustedLaunch SecurityType
  final pulumi.Input<bool>? secureBootEnabled;
  /// Specifies the security type of the nodeType. Only Standard and TrustedLaunch are currently supported
  final pulumi.Input<String>? securityType;
  /// Specifies the service artifact reference id used to set same image version for all virtual machines in the scale set when using 'latest' image version.
  final pulumi.Input<String>? serviceArtifactReferenceId;
  /// The node type sku.
  final pulumi.Input<NodeTypeSku>? sku;
  /// Indicates the time duration after which the platform will not try to restore the VMSS SPOT instances specified as ISO 8601.
  final pulumi.Input<String>? spotRestoreTimeout;
  /// Indicates the resource id of the subnet for the node type.
  final pulumi.Input<String>? subnetId;
  /// Azure resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies whether the use public load balancer. If not specified and the node type doesn't have its own frontend configuration, it will be attached to the default load balancer. If the node type uses its own Load balancer and useDefaultPublicLoadBalancer is true, then the frontend has to be an Internal Load Balancer. If the node type uses its own Load balancer and useDefaultPublicLoadBalancer is false or not set, then the custom load balancer must include a public load balancer to provide outbound connectivity.
  final pulumi.Input<bool>? useDefaultPublicLoadBalancer;
  /// Indicates whether to use ephemeral os disk. The sku selected on the vmSize property needs to support this feature.
  final pulumi.Input<bool>? useEphemeralOSDisk;
  /// Specifies whether to use the temporary disk for the service fabric data root, in which case no managed data disk will be attached and the temporary disk will be used. It is only allowed for stateless node types.
  final pulumi.Input<bool>? useTempDataDisk;
  /// Set of extensions that should be installed onto the virtual machines.
  final pulumi.Input<List<VMSSExtension>>? vmExtensions;
  /// The offer type of the Azure Virtual Machines Marketplace image. For example, UbuntuServer or WindowsServer.
  final pulumi.Input<String>? vmImageOffer;
  /// Specifies information about the marketplace image used to create the virtual machine. This element is only used for marketplace images. Before you can use a marketplace image from an API, you must enable the image for programmatic use. In the Azure portal, find the marketplace image that you want to use and then click Want to deploy programmatically, Get Started ->. Enter any required information and then click Save.
  final pulumi.Input<VmImagePlan>? vmImagePlan;
  /// The publisher of the Azure Virtual Machines Marketplace image. For example, Canonical or MicrosoftWindowsServer.
  final pulumi.Input<String>? vmImagePublisher;
  /// Indicates the resource id of the vm image. This parameter is used for custom vm image.
  final pulumi.Input<String>? vmImageResourceId;
  /// The SKU of the Azure Virtual Machines Marketplace image. For example, 14.04.0-LTS or 2012-R2-Datacenter.
  final pulumi.Input<String>? vmImageSku;
  /// The version of the Azure Virtual Machines Marketplace image. A value of 'latest' can be specified to select the latest version of an image. If omitted, the default is 'latest'.
  final pulumi.Input<String>? vmImageVersion;
  /// The number of nodes in the node type. <br /><br />**Values:** <br />-1 - Use when auto scale rules are configured or sku.capacity is defined <br /> 0 - Not supported <br /> >0 - Use for manual scale.
  final pulumi.Input<int> vmInstanceCount;
  /// Identities to assign to the virtual machine scale set under the node type.
  final pulumi.Input<VmManagedIdentity>? vmManagedIdentity;
  /// The secrets to install in the virtual machines.
  final pulumi.Input<List<VaultSecretGroup>>? vmSecrets;
  /// Specifies the actions to be performed on the vms before bootstrapping the service fabric runtime.
  final pulumi.Input<List<String>>? vmSetupActions;
  /// Indicates the resource id of the vm shared galleries image. This parameter is used for custom vm image.
  final pulumi.Input<String>? vmSharedGalleryImageId;
  /// The size of virtual machines in the pool. All virtual machines in a pool are the same size. For example, Standard_D3.
  final pulumi.Input<String>? vmSize;
  /// Specifies the availability zones where the node type would span across. If the cluster is not spanning across availability zones, initiates az migration for the cluster.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [NodeTypeArgs].
  /// [additionalDataDisks] Additional managed data disks.
  /// [additionalNetworkInterfaceConfigurations] Specifies the settings for any additional secondary network interfaces to attach to the node type.
  /// [applicationPorts] The range of ports from which cluster assigned port to Service Fabric applications.
  /// [capacities] The capacity tags applied to the nodes in the node type, the cluster resource manager uses these tags to understand how much resource a node has.
  /// [clusterName] The name of the cluster resource.
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
  /// [isPrimary] Indicates the Service Fabric system services for the cluster will run on this node type. This setting cannot be changed once the node type is created.
  /// [isSpotVM] Indicates whether the node type will be Spot Virtual Machines. Azure will allocate the VMs if there is capacity available and the VMs can be evicted at any time.
  /// [isStateless] Indicates if the node type can only host Stateless workloads.
  /// [multiplePlacementGroups] Indicates if scale set associated with the node type can be composed of multiple placement groups.
  /// [natConfigurations] Specifies the NAT configuration on default public Load Balancer for the node type. This is only supported for node types use the default public Load Balancer.
  /// [natGatewayId] Specifies the resource id of a NAT Gateway to attach to the subnet of this node type. Node type must use custom load balancer.
  /// [networkSecurityRules] The Network Security Rules for this node type. This setting can only be specified for node types that are configured with frontend configurations.
  /// [nodeTypeName] The name of the node type.
  /// [placementProperties] The placement tags applied to nodes in the node type, which can be used to indicate where certain services (workload) should run.
  /// [resourceGroupName] The name of the resource group.
  /// [secureBootEnabled] Specifies whether secure boot should be enabled on the nodeType. Can only be used with TrustedLaunch SecurityType
  /// [securityType] Specifies the security type of the nodeType. Only Standard and TrustedLaunch are currently supported
  /// [serviceArtifactReferenceId] Specifies the service artifact reference id used to set same image version for all virtual machines in the scale set when using 'latest' image version.
  /// [sku] The node type sku.
  /// [spotRestoreTimeout] Indicates the time duration after which the platform will not try to restore the VMSS SPOT instances specified as ISO 8601.
  /// [subnetId] Indicates the resource id of the subnet for the node type.
  /// [tags] Azure resource tags.
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
  NodeTypeArgs({
    pulumi.Output<List<VmssDataDisk>>? additionalDataDisks,
    pulumi.Output<List<AdditionalNetworkInterfaceConfiguration>>? additionalNetworkInterfaceConfigurations,
    pulumi.Output<EndpointRangeDescription>? applicationPorts,
    pulumi.Output<Map<String, String>>? capacities,
    required pulumi.Output<String> clusterName,
    pulumi.Output<String>? computerNamePrefix,
    pulumi.Output<String>? dataDiskLetter,
    pulumi.Output<int>? dataDiskSizeGB,
    pulumi.Output<String>? dataDiskType,
    pulumi.Output<String>? dscpConfigurationId,
    pulumi.Output<bool>? enableAcceleratedNetworking,
    pulumi.Output<bool>? enableEncryptionAtHost,
    pulumi.Output<bool>? enableNodePublicIP,
    pulumi.Output<bool>? enableNodePublicIPv6,
    pulumi.Output<bool>? enableOverProvisioning,
    pulumi.Output<EndpointRangeDescription>? ephemeralPorts,
    pulumi.Output<String>? evictionPolicy,
    pulumi.Output<List<FrontendConfiguration>>? frontendConfigurations,
    pulumi.Output<String>? hostGroupId,
    required pulumi.Output<bool> isPrimary,
    pulumi.Output<bool>? isSpotVM,
    pulumi.Output<bool>? isStateless,
    pulumi.Output<bool>? multiplePlacementGroups,
    pulumi.Output<List<NodeTypeNatConfig>>? natConfigurations,
    pulumi.Output<String>? natGatewayId,
    pulumi.Output<List<NetworkSecurityRule>>? networkSecurityRules,
    pulumi.Output<String>? nodeTypeName,
    pulumi.Output<Map<String, String>>? placementProperties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<bool>? secureBootEnabled,
    pulumi.Output<String>? securityType,
    pulumi.Output<String>? serviceArtifactReferenceId,
    pulumi.Output<NodeTypeSku>? sku,
    pulumi.Output<String>? spotRestoreTimeout,
    pulumi.Output<String>? subnetId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<bool>? useDefaultPublicLoadBalancer,
    pulumi.Output<bool>? useEphemeralOSDisk,
    pulumi.Output<bool>? useTempDataDisk,
    pulumi.Output<List<VMSSExtension>>? vmExtensions,
    pulumi.Output<String>? vmImageOffer,
    pulumi.Output<VmImagePlan>? vmImagePlan,
    pulumi.Output<String>? vmImagePublisher,
    pulumi.Output<String>? vmImageResourceId,
    pulumi.Output<String>? vmImageSku,
    pulumi.Output<String>? vmImageVersion,
    required pulumi.Output<int> vmInstanceCount,
    pulumi.Output<VmManagedIdentity>? vmManagedIdentity,
    pulumi.Output<List<VaultSecretGroup>>? vmSecrets,
    pulumi.Output<List<String>>? vmSetupActions,
    pulumi.Output<String>? vmSharedGalleryImageId,
    pulumi.Output<String>? vmSize,
    pulumi.Output<List<String>>? zones,
  }) :
      additionalDataDisks = pulumi.Input.asOptionalInput<List<VmssDataDisk>>(additionalDataDisks),
      additionalNetworkInterfaceConfigurations = pulumi.Input.asOptionalInput<List<AdditionalNetworkInterfaceConfiguration>>(additionalNetworkInterfaceConfigurations),
      applicationPorts = pulumi.Input.asOptionalInput<EndpointRangeDescription>(applicationPorts),
      capacities = pulumi.Input.asOptionalInput<Map<String, String>>(capacities),
      clusterName = pulumi.Input.asInput<String>(clusterName),
      computerNamePrefix = pulumi.Input.asOptionalInput<String>(computerNamePrefix),
      dataDiskLetter = pulumi.Input.asOptionalInput<String>(dataDiskLetter),
      dataDiskSizeGB = pulumi.Input.asOptionalInput<int>(dataDiskSizeGB),
      dataDiskType = pulumi.Input.asOptionalInput<String>(dataDiskType),
      dscpConfigurationId = pulumi.Input.asOptionalInput<String>(dscpConfigurationId),
      enableAcceleratedNetworking = pulumi.Input.asOptionalInput<bool>(enableAcceleratedNetworking),
      enableEncryptionAtHost = pulumi.Input.asOptionalInput<bool>(enableEncryptionAtHost),
      enableNodePublicIP = pulumi.Input.asOptionalInput<bool>(enableNodePublicIP),
      enableNodePublicIPv6 = pulumi.Input.asOptionalInput<bool>(enableNodePublicIPv6),
      enableOverProvisioning = pulumi.Input.asOptionalInput<bool>(enableOverProvisioning),
      ephemeralPorts = pulumi.Input.asOptionalInput<EndpointRangeDescription>(ephemeralPorts),
      evictionPolicy = pulumi.Input.asOptionalInput<String>(evictionPolicy),
      frontendConfigurations = pulumi.Input.asOptionalInput<List<FrontendConfiguration>>(frontendConfigurations),
      hostGroupId = pulumi.Input.asOptionalInput<String>(hostGroupId),
      isPrimary = pulumi.Input.asInput<bool>(isPrimary),
      isSpotVM = pulumi.Input.asOptionalInput<bool>(isSpotVM),
      isStateless = pulumi.Input.asOptionalInput<bool>(isStateless),
      multiplePlacementGroups = pulumi.Input.asOptionalInput<bool>(multiplePlacementGroups),
      natConfigurations = pulumi.Input.asOptionalInput<List<NodeTypeNatConfig>>(natConfigurations),
      natGatewayId = pulumi.Input.asOptionalInput<String>(natGatewayId),
      networkSecurityRules = pulumi.Input.asOptionalInput<List<NetworkSecurityRule>>(networkSecurityRules),
      nodeTypeName = pulumi.Input.asOptionalInput<String>(nodeTypeName),
      placementProperties = pulumi.Input.asOptionalInput<Map<String, String>>(placementProperties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      secureBootEnabled = pulumi.Input.asOptionalInput<bool>(secureBootEnabled),
      securityType = pulumi.Input.asOptionalInput<String>(securityType),
      serviceArtifactReferenceId = pulumi.Input.asOptionalInput<String>(serviceArtifactReferenceId),
      sku = pulumi.Input.asOptionalInput<NodeTypeSku>(sku),
      spotRestoreTimeout = pulumi.Input.asOptionalInput<String>(spotRestoreTimeout),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      useDefaultPublicLoadBalancer = pulumi.Input.asOptionalInput<bool>(useDefaultPublicLoadBalancer),
      useEphemeralOSDisk = pulumi.Input.asOptionalInput<bool>(useEphemeralOSDisk),
      useTempDataDisk = pulumi.Input.asOptionalInput<bool>(useTempDataDisk),
      vmExtensions = pulumi.Input.asOptionalInput<List<VMSSExtension>>(vmExtensions),
      vmImageOffer = pulumi.Input.asOptionalInput<String>(vmImageOffer),
      vmImagePlan = pulumi.Input.asOptionalInput<VmImagePlan>(vmImagePlan),
      vmImagePublisher = pulumi.Input.asOptionalInput<String>(vmImagePublisher),
      vmImageResourceId = pulumi.Input.asOptionalInput<String>(vmImageResourceId),
      vmImageSku = pulumi.Input.asOptionalInput<String>(vmImageSku),
      vmImageVersion = pulumi.Input.asOptionalInput<String>(vmImageVersion),
      vmInstanceCount = pulumi.Input.asInput<int>(vmInstanceCount),
      vmManagedIdentity = pulumi.Input.asOptionalInput<VmManagedIdentity>(vmManagedIdentity),
      vmSecrets = pulumi.Input.asOptionalInput<List<VaultSecretGroup>>(vmSecrets),
      vmSetupActions = pulumi.Input.asOptionalInput<List<String>>(vmSetupActions),
      vmSharedGalleryImageId = pulumi.Input.asOptionalInput<String>(vmSharedGalleryImageId),
      vmSize = pulumi.Input.asOptionalInput<String>(vmSize),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalDataDisks': ?pulumi.Input.mapOptionalInputValue<List<VmssDataDisk>, List<Map<String, dynamic>>>(additionalDataDisks, (value) => pulumi.Input.encodeList<VmssDataDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'additionalNetworkInterfaceConfigurations': ?pulumi.Input.mapOptionalInputValue<List<AdditionalNetworkInterfaceConfiguration>, List<Map<String, dynamic>>>(additionalNetworkInterfaceConfigurations, (value) => pulumi.Input.encodeList<AdditionalNetworkInterfaceConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'applicationPorts': ?pulumi.Input.mapOptionalInputValue<EndpointRangeDescription, Map<String, dynamic>>(applicationPorts, (value) => value.toMap()),
      'capacities': ?capacities,
      'clusterName': clusterName,
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
      'ephemeralPorts': ?pulumi.Input.mapOptionalInputValue<EndpointRangeDescription, Map<String, dynamic>>(ephemeralPorts, (value) => value.toMap()),
      'evictionPolicy': ?evictionPolicy,
      'frontendConfigurations': ?pulumi.Input.mapOptionalInputValue<List<FrontendConfiguration>, List<Map<String, dynamic>>>(frontendConfigurations, (value) => pulumi.Input.encodeList<FrontendConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostGroupId': ?hostGroupId,
      'isPrimary': isPrimary,
      'isSpotVM': ?isSpotVM,
      'isStateless': ?isStateless,
      'multiplePlacementGroups': ?multiplePlacementGroups,
      'natConfigurations': ?pulumi.Input.mapOptionalInputValue<List<NodeTypeNatConfig>, List<Map<String, dynamic>>>(natConfigurations, (value) => pulumi.Input.encodeList<NodeTypeNatConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'natGatewayId': ?natGatewayId,
      'networkSecurityRules': ?pulumi.Input.mapOptionalInputValue<List<NetworkSecurityRule>, List<Map<String, dynamic>>>(networkSecurityRules, (value) => pulumi.Input.encodeList<NetworkSecurityRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeTypeName': ?nodeTypeName,
      'placementProperties': ?placementProperties,
      'resourceGroupName': resourceGroupName,
      'secureBootEnabled': ?secureBootEnabled,
      'securityType': ?securityType,
      'serviceArtifactReferenceId': ?serviceArtifactReferenceId,
      'sku': ?pulumi.Input.mapOptionalInputValue<NodeTypeSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'spotRestoreTimeout': ?spotRestoreTimeout,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'useDefaultPublicLoadBalancer': ?useDefaultPublicLoadBalancer,
      'useEphemeralOSDisk': ?useEphemeralOSDisk,
      'useTempDataDisk': ?useTempDataDisk,
      'vmExtensions': ?pulumi.Input.mapOptionalInputValue<List<VMSSExtension>, List<Map<String, dynamic>>>(vmExtensions, (value) => pulumi.Input.encodeList<VMSSExtension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vmImageOffer': ?vmImageOffer,
      'vmImagePlan': ?pulumi.Input.mapOptionalInputValue<VmImagePlan, Map<String, dynamic>>(vmImagePlan, (value) => value.toMap()),
      'vmImagePublisher': ?vmImagePublisher,
      'vmImageResourceId': ?vmImageResourceId,
      'vmImageSku': ?vmImageSku,
      'vmImageVersion': ?vmImageVersion,
      'vmInstanceCount': vmInstanceCount,
      'vmManagedIdentity': ?pulumi.Input.mapOptionalInputValue<VmManagedIdentity, Map<String, dynamic>>(vmManagedIdentity, (value) => value.toMap()),
      'vmSecrets': ?pulumi.Input.mapOptionalInputValue<List<VaultSecretGroup>, List<Map<String, dynamic>>>(vmSecrets, (value) => pulumi.Input.encodeList<VaultSecretGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vmSetupActions': ?vmSetupActions,
      'vmSharedGalleryImageId': ?vmSharedGalleryImageId,
      'vmSize': ?vmSize,
      'zones': ?zones,
    };
  }

  factory NodeTypeArgs.fromMap(Map<String, dynamic> map) {
    return NodeTypeArgs(
      additionalDataDisks: map['additionalDataDisks'] == null ? null : pulumi.Output.create<List<VmssDataDisk>>(pulumi.Input.decodeList<VmssDataDisk>(map['additionalDataDisks'], (value) => VmssDataDisk.fromMap((value as Map).cast<String, dynamic>()))),
      additionalNetworkInterfaceConfigurations: map['additionalNetworkInterfaceConfigurations'] == null ? null : pulumi.Output.create<List<AdditionalNetworkInterfaceConfiguration>>(pulumi.Input.decodeList<AdditionalNetworkInterfaceConfiguration>(map['additionalNetworkInterfaceConfigurations'], (value) => AdditionalNetworkInterfaceConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      applicationPorts: map['applicationPorts'] == null ? null : pulumi.Output.create<EndpointRangeDescription>(EndpointRangeDescription.fromMap((map['applicationPorts'] as Map).cast<String, dynamic>())),
      capacities: map['capacities'] == null ? null : pulumi.Output.create<Map<String, String>>((map['capacities'] as Map).cast<String, String>()),
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      computerNamePrefix: map['computerNamePrefix'] == null ? null : pulumi.Output.create<String>(map['computerNamePrefix'] as String),
      dataDiskLetter: map['dataDiskLetter'] == null ? null : pulumi.Output.create<String>(map['dataDiskLetter'] as String),
      dataDiskSizeGB: map['dataDiskSizeGB'] == null ? null : pulumi.Output.create<int>(map['dataDiskSizeGB'] as int),
      dataDiskType: map['dataDiskType'] == null ? null : pulumi.Output.create<String>(map['dataDiskType'] as String),
      dscpConfigurationId: map['dscpConfigurationId'] == null ? null : pulumi.Output.create<String>(map['dscpConfigurationId'] as String),
      enableAcceleratedNetworking: map['enableAcceleratedNetworking'] == null ? null : pulumi.Output.create<bool>(map['enableAcceleratedNetworking'] as bool),
      enableEncryptionAtHost: map['enableEncryptionAtHost'] == null ? null : pulumi.Output.create<bool>(map['enableEncryptionAtHost'] as bool),
      enableNodePublicIP: map['enableNodePublicIP'] == null ? null : pulumi.Output.create<bool>(map['enableNodePublicIP'] as bool),
      enableNodePublicIPv6: map['enableNodePublicIPv6'] == null ? null : pulumi.Output.create<bool>(map['enableNodePublicIPv6'] as bool),
      enableOverProvisioning: map['enableOverProvisioning'] == null ? null : pulumi.Output.create<bool>(map['enableOverProvisioning'] as bool),
      ephemeralPorts: map['ephemeralPorts'] == null ? null : pulumi.Output.create<EndpointRangeDescription>(EndpointRangeDescription.fromMap((map['ephemeralPorts'] as Map).cast<String, dynamic>())),
      evictionPolicy: map['evictionPolicy'] == null ? null : pulumi.Output.create<String>(map['evictionPolicy'] as String),
      frontendConfigurations: map['frontendConfigurations'] == null ? null : pulumi.Output.create<List<FrontendConfiguration>>(pulumi.Input.decodeList<FrontendConfiguration>(map['frontendConfigurations'], (value) => FrontendConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      hostGroupId: map['hostGroupId'] == null ? null : pulumi.Output.create<String>(map['hostGroupId'] as String),
      isPrimary: pulumi.Output.create<bool>(map['isPrimary'] as bool),
      isSpotVM: map['isSpotVM'] == null ? null : pulumi.Output.create<bool>(map['isSpotVM'] as bool),
      isStateless: map['isStateless'] == null ? null : pulumi.Output.create<bool>(map['isStateless'] as bool),
      multiplePlacementGroups: map['multiplePlacementGroups'] == null ? null : pulumi.Output.create<bool>(map['multiplePlacementGroups'] as bool),
      natConfigurations: map['natConfigurations'] == null ? null : pulumi.Output.create<List<NodeTypeNatConfig>>(pulumi.Input.decodeList<NodeTypeNatConfig>(map['natConfigurations'], (value) => NodeTypeNatConfig.fromMap((value as Map).cast<String, dynamic>()))),
      natGatewayId: map['natGatewayId'] == null ? null : pulumi.Output.create<String>(map['natGatewayId'] as String),
      networkSecurityRules: map['networkSecurityRules'] == null ? null : pulumi.Output.create<List<NetworkSecurityRule>>(pulumi.Input.decodeList<NetworkSecurityRule>(map['networkSecurityRules'], (value) => NetworkSecurityRule.fromMap((value as Map).cast<String, dynamic>()))),
      nodeTypeName: map['nodeTypeName'] == null ? null : pulumi.Output.create<String>(map['nodeTypeName'] as String),
      placementProperties: map['placementProperties'] == null ? null : pulumi.Output.create<Map<String, String>>((map['placementProperties'] as Map).cast<String, String>()),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      secureBootEnabled: map['secureBootEnabled'] == null ? null : pulumi.Output.create<bool>(map['secureBootEnabled'] as bool),
      securityType: map['securityType'] == null ? null : pulumi.Output.create<String>(map['securityType'] as String),
      serviceArtifactReferenceId: map['serviceArtifactReferenceId'] == null ? null : pulumi.Output.create<String>(map['serviceArtifactReferenceId'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<NodeTypeSku>(NodeTypeSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      spotRestoreTimeout: map['spotRestoreTimeout'] == null ? null : pulumi.Output.create<String>(map['spotRestoreTimeout'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      useDefaultPublicLoadBalancer: map['useDefaultPublicLoadBalancer'] == null ? null : pulumi.Output.create<bool>(map['useDefaultPublicLoadBalancer'] as bool),
      useEphemeralOSDisk: map['useEphemeralOSDisk'] == null ? null : pulumi.Output.create<bool>(map['useEphemeralOSDisk'] as bool),
      useTempDataDisk: map['useTempDataDisk'] == null ? null : pulumi.Output.create<bool>(map['useTempDataDisk'] as bool),
      vmExtensions: map['vmExtensions'] == null ? null : pulumi.Output.create<List<VMSSExtension>>(pulumi.Input.decodeList<VMSSExtension>(map['vmExtensions'], (value) => VMSSExtension.fromMap((value as Map).cast<String, dynamic>()))),
      vmImageOffer: map['vmImageOffer'] == null ? null : pulumi.Output.create<String>(map['vmImageOffer'] as String),
      vmImagePlan: map['vmImagePlan'] == null ? null : pulumi.Output.create<VmImagePlan>(VmImagePlan.fromMap((map['vmImagePlan'] as Map).cast<String, dynamic>())),
      vmImagePublisher: map['vmImagePublisher'] == null ? null : pulumi.Output.create<String>(map['vmImagePublisher'] as String),
      vmImageResourceId: map['vmImageResourceId'] == null ? null : pulumi.Output.create<String>(map['vmImageResourceId'] as String),
      vmImageSku: map['vmImageSku'] == null ? null : pulumi.Output.create<String>(map['vmImageSku'] as String),
      vmImageVersion: map['vmImageVersion'] == null ? null : pulumi.Output.create<String>(map['vmImageVersion'] as String),
      vmInstanceCount: pulumi.Output.create<int>(map['vmInstanceCount'] as int),
      vmManagedIdentity: map['vmManagedIdentity'] == null ? null : pulumi.Output.create<VmManagedIdentity>(VmManagedIdentity.fromMap((map['vmManagedIdentity'] as Map).cast<String, dynamic>())),
      vmSecrets: map['vmSecrets'] == null ? null : pulumi.Output.create<List<VaultSecretGroup>>(pulumi.Input.decodeList<VaultSecretGroup>(map['vmSecrets'], (value) => VaultSecretGroup.fromMap((value as Map).cast<String, dynamic>()))),
      vmSetupActions: map['vmSetupActions'] == null ? null : pulumi.Output.create<List<String>>((map['vmSetupActions'] as List).cast<String>()),
      vmSharedGalleryImageId: map['vmSharedGalleryImageId'] == null ? null : pulumi.Output.create<String>(map['vmSharedGalleryImageId'] as String),
      vmSize: map['vmSize'] == null ? null : pulumi.Output.create<String>(map['vmSize'] as String),
      zones: map['zones'] == null ? null : pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

