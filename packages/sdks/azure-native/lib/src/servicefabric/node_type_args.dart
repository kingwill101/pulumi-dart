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
  final pulumi.Input<List<VmssDataDisk>?>? additionalDataDisks;
  /// Specifies the settings for any additional secondary network interfaces to attach to the node type.
  final pulumi.Input<List<AdditionalNetworkInterfaceConfiguration>?>? additionalNetworkInterfaceConfigurations;
  /// The range of ports from which cluster assigned port to Service Fabric applications.
  final pulumi.Input<EndpointRangeDescription?>? applicationPorts;
  /// The capacity tags applied to the nodes in the node type, the cluster resource manager uses these tags to understand how much resource a node has.
  final pulumi.Input<Map<String, String>?>? capacities;
  /// The name of the cluster resource.
  final pulumi.Input<String> clusterName;
  /// Specifies the computer name prefix. Limited to 9 characters. If specified, allows for a longer name to be specified for the node type name.
  final pulumi.Input<String?>? computerNamePrefix;
  /// Managed data disk letter. It can not use the reserved letter C or D and it can not change after created.
  final pulumi.Input<String?>? dataDiskLetter;
  /// Disk size for the managed disk attached to the vms on the node type in GBs.
  final pulumi.Input<int?>? dataDiskSizeGB;
  /// Managed data disk type. Specifies the storage account type for the managed disk
  final pulumi.Input<dynamic>? dataDiskType;
  /// Specifies the resource id of the DSCP configuration to apply to the node type network interface.
  final pulumi.Input<String?>? dscpConfigurationId;
  /// Specifies whether the network interface is accelerated networking-enabled.
  final pulumi.Input<bool?>? enableAcceleratedNetworking;
  /// Enable or disable the Host Encryption for the virtual machines on the node type. This will enable the encryption for all the disks including Resource/Temp disk at host itself. Default: The Encryption at host will be disabled unless this property is set to true for the resource.
  final pulumi.Input<bool?>? enableEncryptionAtHost;
  /// Specifies whether each node is allocated its own public IPv4 address. This is only supported on secondary node types with custom Load Balancers.
  final pulumi.Input<bool?>? enableNodePublicIP;
  /// Specifies whether each node is allocated its own public IPv6 address. This is only supported on secondary node types with custom Load Balancers.
  final pulumi.Input<bool?>? enableNodePublicIPv6;
  /// Specifies whether the node type should be overprovisioned. It is only allowed for stateless node types.
  final pulumi.Input<bool?>? enableOverProvisioning;
  /// The range of ephemeral ports that nodes in this node type should be configured with.
  final pulumi.Input<EndpointRangeDescription?>? ephemeralPorts;
  /// Specifies the eviction policy for virtual machines in a SPOT node type. Default is Delete.
  final pulumi.Input<dynamic>? evictionPolicy;
  /// Indicates the node type uses its own frontend configurations instead of the default one for the cluster. This setting can only be specified for non-primary node types and can not be added or removed after the node type is created.
  final pulumi.Input<List<FrontendConfiguration>?>? frontendConfigurations;
  /// Specifies the full host group resource Id. This property is used for deploying on azure dedicated hosts.
  final pulumi.Input<String?>? hostGroupId;
  /// Indicates the Service Fabric system services for the cluster will run on this node type. This setting cannot be changed once the node type is created.
  final pulumi.Input<bool> isPrimary;
  /// Indicates whether the node type will be Spot Virtual Machines. Azure will allocate the VMs if there is capacity available and the VMs can be evicted at any time.
  final pulumi.Input<bool?>? isSpotVM;
  /// Indicates if the node type can only host Stateless workloads.
  final pulumi.Input<bool?>? isStateless;
  /// Indicates if scale set associated with the node type can be composed of multiple placement groups.
  final pulumi.Input<bool?>? multiplePlacementGroups;
  /// Specifies the NAT configuration on default public Load Balancer for the node type. This is only supported for node types use the default public Load Balancer.
  final pulumi.Input<List<NodeTypeNatConfig>?>? natConfigurations;
  /// Specifies the resource id of a NAT Gateway to attach to the subnet of this node type. Node type must use custom load balancer.
  final pulumi.Input<String?>? natGatewayId;
  /// The Network Security Rules for this node type. This setting can only be specified for node types that are configured with frontend configurations.
  final pulumi.Input<List<NetworkSecurityRule>?>? networkSecurityRules;
  /// The name of the node type.
  final pulumi.Input<String?>? nodeTypeName;
  /// The placement tags applied to nodes in the node type, which can be used to indicate where certain services (workload) should run.
  final pulumi.Input<Map<String, String>?>? placementProperties;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies whether secure boot should be enabled on the nodeType. Can only be used with TrustedLaunch SecurityType
  final pulumi.Input<bool?>? secureBootEnabled;
  /// Specifies the security type of the nodeType. Only Standard and TrustedLaunch are currently supported
  final pulumi.Input<dynamic>? securityType;
  /// Specifies the service artifact reference id used to set same image version for all virtual machines in the scale set when using 'latest' image version.
  final pulumi.Input<String?>? serviceArtifactReferenceId;
  /// The node type sku.
  final pulumi.Input<NodeTypeSku?>? sku;
  /// Indicates the time duration after which the platform will not try to restore the VMSS SPOT instances specified as ISO 8601.
  final pulumi.Input<String?>? spotRestoreTimeout;
  /// Indicates the resource id of the subnet for the node type.
  final pulumi.Input<String?>? subnetId;
  /// Azure resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Specifies whether the use public load balancer. If not specified and the node type doesn't have its own frontend configuration, it will be attached to the default load balancer. If the node type uses its own Load balancer and useDefaultPublicLoadBalancer is true, then the frontend has to be an Internal Load Balancer. If the node type uses its own Load balancer and useDefaultPublicLoadBalancer is false or not set, then the custom load balancer must include a public load balancer to provide outbound connectivity.
  final pulumi.Input<bool?>? useDefaultPublicLoadBalancer;
  /// Indicates whether to use ephemeral os disk. The sku selected on the vmSize property needs to support this feature.
  final pulumi.Input<bool?>? useEphemeralOSDisk;
  /// Specifies whether to use the temporary disk for the service fabric data root, in which case no managed data disk will be attached and the temporary disk will be used. It is only allowed for stateless node types.
  final pulumi.Input<bool?>? useTempDataDisk;
  /// Set of extensions that should be installed onto the virtual machines.
  final pulumi.Input<List<VMSSExtension>?>? vmExtensions;
  /// The offer type of the Azure Virtual Machines Marketplace image. For example, UbuntuServer or WindowsServer.
  final pulumi.Input<String?>? vmImageOffer;
  /// Specifies information about the marketplace image used to create the virtual machine. This element is only used for marketplace images. Before you can use a marketplace image from an API, you must enable the image for programmatic use. In the Azure portal, find the marketplace image that you want to use and then click Want to deploy programmatically, Get Started -&gt;. Enter any required information and then click Save.
  final pulumi.Input<VmImagePlan?>? vmImagePlan;
  /// The publisher of the Azure Virtual Machines Marketplace image. For example, Canonical or MicrosoftWindowsServer.
  final pulumi.Input<String?>? vmImagePublisher;
  /// Indicates the resource id of the vm image. This parameter is used for custom vm image.
  final pulumi.Input<String?>? vmImageResourceId;
  /// The SKU of the Azure Virtual Machines Marketplace image. For example, 14.04.0-LTS or 2012-R2-Datacenter.
  final pulumi.Input<String?>? vmImageSku;
  /// The version of the Azure Virtual Machines Marketplace image. A value of 'latest' can be specified to select the latest version of an image. If omitted, the default is 'latest'.
  final pulumi.Input<String?>? vmImageVersion;
  /// The number of nodes in the node type. &lt;br /&gt;&lt;br /&gt;**Values:** &lt;br /&gt;-1 - Use when auto scale rules are configured or sku.capacity is defined &lt;br /&gt; 0 - Not supported &lt;br /&gt; &gt;0 - Use for manual scale.
  final pulumi.Input<int> vmInstanceCount;
  /// Identities to assign to the virtual machine scale set under the node type.
  final pulumi.Input<VmManagedIdentity?>? vmManagedIdentity;
  /// The secrets to install in the virtual machines.
  final pulumi.Input<List<VaultSecretGroup>?>? vmSecrets;
  /// Specifies the actions to be performed on the vms before bootstrapping the service fabric runtime.
  final pulumi.Input<List<dynamic>?>? vmSetupActions;
  /// Indicates the resource id of the vm shared galleries image. This parameter is used for custom vm image.
  final pulumi.Input<String?>? vmSharedGalleryImageId;
  /// The size of virtual machines in the pool. All virtual machines in a pool are the same size. For example, Standard_D3.
  final pulumi.Input<String?>? vmSize;
  /// Specifies the availability zones where the node type would span across. If the cluster is not spanning across availability zones, initiates az migration for the cluster.
  final pulumi.Input<List<String>?>? zones;

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
  /// [vmImagePlan] Specifies information about the marketplace image used to create the virtual machine. This element is only used for marketplace images. Before you can use a marketplace image from an API, you must enable the image for programmatic use. In the Azure portal, find the marketplace image that you want to use and then click Want to deploy programmatically, Get Started -&gt;. Enter any required information and then click Save.
  /// [vmImagePublisher] The publisher of the Azure Virtual Machines Marketplace image. For example, Canonical or MicrosoftWindowsServer.
  /// [vmImageResourceId] Indicates the resource id of the vm image. This parameter is used for custom vm image.
  /// [vmImageSku] The SKU of the Azure Virtual Machines Marketplace image. For example, 14.04.0-LTS or 2012-R2-Datacenter.
  /// [vmImageVersion] The version of the Azure Virtual Machines Marketplace image. A value of 'latest' can be specified to select the latest version of an image. If omitted, the default is 'latest'.
  /// [vmInstanceCount] The number of nodes in the node type. &lt;br /&gt;&lt;br /&gt;**Values:** &lt;br /&gt;-1 - Use when auto scale rules are configured or sku.capacity is defined &lt;br /&gt; 0 - Not supported &lt;br /&gt; &gt;0 - Use for manual scale.
  /// [vmManagedIdentity] Identities to assign to the virtual machine scale set under the node type.
  /// [vmSecrets] The secrets to install in the virtual machines.
  /// [vmSetupActions] Specifies the actions to be performed on the vms before bootstrapping the service fabric runtime.
  /// [vmSharedGalleryImageId] Indicates the resource id of the vm shared galleries image. This parameter is used for custom vm image.
  /// [vmSize] The size of virtual machines in the pool. All virtual machines in a pool are the same size. For example, Standard_D3.
  /// [zones] Specifies the availability zones where the node type would span across. If the cluster is not spanning across availability zones, initiates az migration for the cluster.
  NodeTypeArgs({
    this.additionalDataDisks,
    this.additionalNetworkInterfaceConfigurations,
    this.applicationPorts,
    this.capacities,
    required this.clusterName,
    this.computerNamePrefix,
    this.dataDiskLetter,
    this.dataDiskSizeGB,
    this.dataDiskType,
    this.dscpConfigurationId,
    this.enableAcceleratedNetworking,
    pulumi.Input<bool?>? enableEncryptionAtHost,
    this.enableNodePublicIP,
    this.enableNodePublicIPv6,
    this.enableOverProvisioning,
    this.ephemeralPorts,
    this.evictionPolicy,
    this.frontendConfigurations,
    this.hostGroupId,
    required this.isPrimary,
    this.isSpotVM,
    pulumi.Input<bool?>? isStateless,
    pulumi.Input<bool?>? multiplePlacementGroups,
    this.natConfigurations,
    this.natGatewayId,
    this.networkSecurityRules,
    this.nodeTypeName,
    this.placementProperties,
    required this.resourceGroupName,
    this.secureBootEnabled,
    this.securityType,
    this.serviceArtifactReferenceId,
    this.sku,
    this.spotRestoreTimeout,
    this.subnetId,
    this.tags,
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
  }) : enableEncryptionAtHost = enableEncryptionAtHost ?? pulumi.Input.fromValue(false), isStateless = isStateless ?? pulumi.Input.fromValue(false), multiplePlacementGroups = multiplePlacementGroups ?? pulumi.Input.fromValue(false);

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
      additionalDataDisks: (() { final guardedValue = map['additionalDataDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VmssDataDisk>(guardedValue, (value) => VmssDataDisk.fromMap((value as Map).cast<String, dynamic>()))); })(),
      additionalNetworkInterfaceConfigurations: (() { final guardedValue = map['additionalNetworkInterfaceConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AdditionalNetworkInterfaceConfiguration>(guardedValue, (value) => AdditionalNetworkInterfaceConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      applicationPorts: (() { final guardedValue = map['applicationPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointRangeDescription.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      capacities: (() { final guardedValue = map['capacities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      computerNamePrefix: (() { final guardedValue = map['computerNamePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataDiskLetter: (() { final guardedValue = map['dataDiskLetter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataDiskSizeGB: (() { final guardedValue = map['dataDiskSizeGB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      dataDiskType: (() { final guardedValue = map['dataDiskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      dscpConfigurationId: (() { final guardedValue = map['dscpConfigurationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableAcceleratedNetworking: (() { final guardedValue = map['enableAcceleratedNetworking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableEncryptionAtHost: (() { final guardedValue = map['enableEncryptionAtHost']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableNodePublicIP: (() { final guardedValue = map['enableNodePublicIP']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableNodePublicIPv6: (() { final guardedValue = map['enableNodePublicIPv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableOverProvisioning: (() { final guardedValue = map['enableOverProvisioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ephemeralPorts: (() { final guardedValue = map['ephemeralPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointRangeDescription.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      evictionPolicy: (() { final guardedValue = map['evictionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      frontendConfigurations: (() { final guardedValue = map['frontendConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrontendConfiguration>(guardedValue, (value) => FrontendConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hostGroupId: (() { final guardedValue = map['hostGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isPrimary: pulumi.Input.fromValue(map['isPrimary'] as bool),
      isSpotVM: (() { final guardedValue = map['isSpotVM']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isStateless: (() { final guardedValue = map['isStateless']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      multiplePlacementGroups: (() { final guardedValue = map['multiplePlacementGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      natConfigurations: (() { final guardedValue = map['natConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodeTypeNatConfig>(guardedValue, (value) => NodeTypeNatConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      natGatewayId: (() { final guardedValue = map['natGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkSecurityRules: (() { final guardedValue = map['networkSecurityRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkSecurityRule>(guardedValue, (value) => NetworkSecurityRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nodeTypeName: (() { final guardedValue = map['nodeTypeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      placementProperties: (() { final guardedValue = map['placementProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      secureBootEnabled: (() { final guardedValue = map['secureBootEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      securityType: (() { final guardedValue = map['securityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      serviceArtifactReferenceId: (() { final guardedValue = map['serviceArtifactReferenceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeTypeSku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spotRestoreTimeout: (() { final guardedValue = map['spotRestoreTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      useDefaultPublicLoadBalancer: (() { final guardedValue = map['useDefaultPublicLoadBalancer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      useEphemeralOSDisk: (() { final guardedValue = map['useEphemeralOSDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      useTempDataDisk: (() { final guardedValue = map['useTempDataDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      vmExtensions: (() { final guardedValue = map['vmExtensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VMSSExtension>(guardedValue, (value) => VMSSExtension.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vmImageOffer: (() { final guardedValue = map['vmImageOffer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmImagePlan: (() { final guardedValue = map['vmImagePlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmImagePlan.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vmImagePublisher: (() { final guardedValue = map['vmImagePublisher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmImageResourceId: (() { final guardedValue = map['vmImageResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmImageSku: (() { final guardedValue = map['vmImageSku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmImageVersion: (() { final guardedValue = map['vmImageVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmInstanceCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['vmInstanceCount'])),
      vmManagedIdentity: (() { final guardedValue = map['vmManagedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmManagedIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vmSecrets: (() { final guardedValue = map['vmSecrets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VaultSecretGroup>(guardedValue, (value) => VaultSecretGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vmSetupActions: (() { final guardedValue = map['vmSetupActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      vmSharedGalleryImageId: (() { final guardedValue = map['vmSharedGalleryImageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmSize: (() { final guardedValue = map['vmSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
