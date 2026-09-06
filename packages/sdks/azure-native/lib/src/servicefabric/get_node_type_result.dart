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
  final String? azureApiVersion;
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
  final String? id;
  /// Indicates the Service Fabric system services for the cluster will run on this node type. This setting cannot be changed once the node type is created.
  final bool? isPrimary;
  /// Indicates whether the node type will be Spot Virtual Machines. Azure will allocate the VMs if there is capacity available and the VMs can be evicted at any time.
  final bool? isSpotVM;
  /// Indicates if the node type can only host Stateless workloads.
  final bool? isStateless;
  /// Indicates if scale set associated with the node type can be composed of multiple placement groups.
  final bool? multiplePlacementGroups;
  /// Azure resource name.
  final String? name;
  /// Specifies the NAT configuration on default public Load Balancer for the node type. This is only supported for node types use the default public Load Balancer.
  final List<NodeTypeNatConfigResponse>? natConfigurations;
  /// Specifies the resource id of a NAT Gateway to attach to the subnet of this node type. Node type must use custom load balancer.
  final String? natGatewayId;
  /// The Network Security Rules for this node type. This setting can only be specified for node types that are configured with frontend configurations.
  final List<NetworkSecurityRuleResponse>? networkSecurityRules;
  /// The placement tags applied to nodes in the node type, which can be used to indicate where certain services (workload) should run.
  final Map<String, String>? placementProperties;
  /// The provisioning state of the node type resource.
  final String? provisioningState;
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
  final SystemDataResponse? systemData;
  /// Azure resource tags.
  final Map<String, String>? tags;
  /// Azure resource type.
  final String? type;
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
  /// Specifies information about the marketplace image used to create the virtual machine. This element is only used for marketplace images. Before you can use a marketplace image from an API, you must enable the image for programmatic use. In the Azure portal, find the marketplace image that you want to use and then click Want to deploy programmatically, Get Started -&gt;. Enter any required information and then click Save.
  final VmImagePlanResponse? vmImagePlan;
  /// The publisher of the Azure Virtual Machines Marketplace image. For example, Canonical or MicrosoftWindowsServer.
  final String? vmImagePublisher;
  /// Indicates the resource id of the vm image. This parameter is used for custom vm image.
  final String? vmImageResourceId;
  /// The SKU of the Azure Virtual Machines Marketplace image. For example, 14.04.0-LTS or 2012-R2-Datacenter.
  final String? vmImageSku;
  /// The version of the Azure Virtual Machines Marketplace image. A value of 'latest' can be specified to select the latest version of an image. If omitted, the default is 'latest'.
  final String? vmImageVersion;
  /// The number of nodes in the node type. &lt;br /&gt;&lt;br /&gt;**Values:** &lt;br /&gt;-1 - Use when auto scale rules are configured or sku.capacity is defined &lt;br /&gt; 0 - Not supported &lt;br /&gt; &gt;0 - Use for manual scale.
  final int? vmInstanceCount;
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
  GetNodeTypeResult({
    this.additionalDataDisks,
    this.additionalNetworkInterfaceConfigurations,
    this.applicationPorts,
    this.azureApiVersion,
    this.capacities,
    this.computerNamePrefix,
    this.dataDiskLetter,
    this.dataDiskSizeGB,
    this.dataDiskType,
    this.dscpConfigurationId,
    this.enableAcceleratedNetworking,
    bool? enableEncryptionAtHost,
    this.enableNodePublicIP,
    this.enableNodePublicIPv6,
    this.enableOverProvisioning,
    this.ephemeralPorts,
    this.evictionPolicy,
    this.frontendConfigurations,
    this.hostGroupId,
    this.id,
    this.isPrimary,
    this.isSpotVM,
    bool? isStateless,
    bool? multiplePlacementGroups,
    this.name,
    this.natConfigurations,
    this.natGatewayId,
    this.networkSecurityRules,
    this.placementProperties,
    this.provisioningState,
    this.secureBootEnabled,
    this.securityType,
    this.serviceArtifactReferenceId,
    this.sku,
    this.spotRestoreTimeout,
    this.subnetId,
    this.systemData,
    this.tags,
    this.type,
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
    this.vmInstanceCount,
    this.vmManagedIdentity,
    this.vmSecrets,
    this.vmSetupActions,
    this.vmSharedGalleryImageId,
    this.vmSize,
    this.zones,
  }) : enableEncryptionAtHost = enableEncryptionAtHost ?? false, isStateless = isStateless ?? false, multiplePlacementGroups = multiplePlacementGroups ?? false;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalDataDisks': ?(() { final guardedValue = additionalDataDisks; if (guardedValue == null) return null; return pulumi.Input.encodeList<VmssDataDiskResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'additionalNetworkInterfaceConfigurations': ?(() { final guardedValue = additionalNetworkInterfaceConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<AdditionalNetworkInterfaceConfigurationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'applicationPorts': ?applicationPorts?.toMap(),
      'azureApiVersion': ?azureApiVersion,
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
      'ephemeralPorts': ?ephemeralPorts?.toMap(),
      'evictionPolicy': ?evictionPolicy,
      'frontendConfigurations': ?(() { final guardedValue = frontendConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<FrontendConfigurationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'hostGroupId': ?hostGroupId,
      'id': ?id,
      'isPrimary': ?isPrimary,
      'isSpotVM': ?isSpotVM,
      'isStateless': ?isStateless,
      'multiplePlacementGroups': ?multiplePlacementGroups,
      'name': ?name,
      'natConfigurations': ?(() { final guardedValue = natConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<NodeTypeNatConfigResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'natGatewayId': ?natGatewayId,
      'networkSecurityRules': ?(() { final guardedValue = networkSecurityRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<NetworkSecurityRuleResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'placementProperties': ?placementProperties,
      'provisioningState': ?provisioningState,
      'secureBootEnabled': ?secureBootEnabled,
      'securityType': ?securityType,
      'serviceArtifactReferenceId': ?serviceArtifactReferenceId,
      'sku': ?sku?.toMap(),
      'spotRestoreTimeout': ?spotRestoreTimeout,
      'subnetId': ?subnetId,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'useDefaultPublicLoadBalancer': ?useDefaultPublicLoadBalancer,
      'useEphemeralOSDisk': ?useEphemeralOSDisk,
      'useTempDataDisk': ?useTempDataDisk,
      'vmExtensions': ?(() { final guardedValue = vmExtensions; if (guardedValue == null) return null; return pulumi.Input.encodeList<VMSSExtensionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'vmImageOffer': ?vmImageOffer,
      'vmImagePlan': ?vmImagePlan?.toMap(),
      'vmImagePublisher': ?vmImagePublisher,
      'vmImageResourceId': ?vmImageResourceId,
      'vmImageSku': ?vmImageSku,
      'vmImageVersion': ?vmImageVersion,
      'vmInstanceCount': ?vmInstanceCount,
      'vmManagedIdentity': ?vmManagedIdentity?.toMap(),
      'vmSecrets': ?(() { final guardedValue = vmSecrets; if (guardedValue == null) return null; return pulumi.Input.encodeList<VaultSecretGroupResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'vmSetupActions': ?vmSetupActions,
      'vmSharedGalleryImageId': ?vmSharedGalleryImageId,
      'vmSize': ?vmSize,
      'zones': ?zones,
    };
  }

  factory GetNodeTypeResult.fromMap(Map<String, dynamic> map) {
    return GetNodeTypeResult(
      additionalDataDisks: (() { final guardedValue = map['additionalDataDisks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VmssDataDiskResponse>(guardedValue, (value) => VmssDataDiskResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      additionalNetworkInterfaceConfigurations: (() { final guardedValue = map['additionalNetworkInterfaceConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AdditionalNetworkInterfaceConfigurationResponse>(guardedValue, (value) => AdditionalNetworkInterfaceConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      applicationPorts: (() { final guardedValue = map['applicationPorts']; if (guardedValue == null) return null; return EndpointRangeDescriptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      capacities: (() { final guardedValue = map['capacities']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      computerNamePrefix: (() { final guardedValue = map['computerNamePrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataDiskLetter: (() { final guardedValue = map['dataDiskLetter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataDiskSizeGB: (() { final guardedValue = map['dataDiskSizeGB']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      dataDiskType: (() { final guardedValue = map['dataDiskType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dscpConfigurationId: (() { final guardedValue = map['dscpConfigurationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableAcceleratedNetworking: (() { final guardedValue = map['enableAcceleratedNetworking']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableEncryptionAtHost: (() { final guardedValue = map['enableEncryptionAtHost']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableNodePublicIP: (() { final guardedValue = map['enableNodePublicIP']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableNodePublicIPv6: (() { final guardedValue = map['enableNodePublicIPv6']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableOverProvisioning: (() { final guardedValue = map['enableOverProvisioning']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      ephemeralPorts: (() { final guardedValue = map['ephemeralPorts']; if (guardedValue == null) return null; return EndpointRangeDescriptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      evictionPolicy: (() { final guardedValue = map['evictionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      frontendConfigurations: (() { final guardedValue = map['frontendConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrontendConfigurationResponse>(guardedValue, (value) => FrontendConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      hostGroupId: (() { final guardedValue = map['hostGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isPrimary: (() { final guardedValue = map['isPrimary']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isSpotVM: (() { final guardedValue = map['isSpotVM']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isStateless: (() { final guardedValue = map['isStateless']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      multiplePlacementGroups: (() { final guardedValue = map['multiplePlacementGroups']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      natConfigurations: (() { final guardedValue = map['natConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NodeTypeNatConfigResponse>(guardedValue, (value) => NodeTypeNatConfigResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      natGatewayId: (() { final guardedValue = map['natGatewayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkSecurityRules: (() { final guardedValue = map['networkSecurityRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkSecurityRuleResponse>(guardedValue, (value) => NetworkSecurityRuleResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      placementProperties: (() { final guardedValue = map['placementProperties']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secureBootEnabled: (() { final guardedValue = map['secureBootEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      securityType: (() { final guardedValue = map['securityType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceArtifactReferenceId: (() { final guardedValue = map['serviceArtifactReferenceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return NodeTypeSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      spotRestoreTimeout: (() { final guardedValue = map['spotRestoreTimeout']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      useDefaultPublicLoadBalancer: (() { final guardedValue = map['useDefaultPublicLoadBalancer']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      useEphemeralOSDisk: (() { final guardedValue = map['useEphemeralOSDisk']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      useTempDataDisk: (() { final guardedValue = map['useTempDataDisk']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      vmExtensions: (() { final guardedValue = map['vmExtensions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VMSSExtensionResponse>(guardedValue, (value) => VMSSExtensionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      vmImageOffer: (() { final guardedValue = map['vmImageOffer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmImagePlan: (() { final guardedValue = map['vmImagePlan']; if (guardedValue == null) return null; return VmImagePlanResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      vmImagePublisher: (() { final guardedValue = map['vmImagePublisher']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmImageResourceId: (() { final guardedValue = map['vmImageResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmImageSku: (() { final guardedValue = map['vmImageSku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmImageVersion: (() { final guardedValue = map['vmImageVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmInstanceCount: (() { final guardedValue = map['vmInstanceCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      vmManagedIdentity: (() { final guardedValue = map['vmManagedIdentity']; if (guardedValue == null) return null; return VmManagedIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      vmSecrets: (() { final guardedValue = map['vmSecrets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VaultSecretGroupResponse>(guardedValue, (value) => VaultSecretGroupResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      vmSetupActions: (() { final guardedValue = map['vmSetupActions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      vmSharedGalleryImageId: (() { final guardedValue = map['vmSharedGalleryImageId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmSize: (() { final guardedValue = map['vmSize']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
