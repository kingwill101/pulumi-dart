// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hci_deployment_setting_scale_unit_cluster.dart';
import 'hci_deployment_setting_scale_unit_host_network.dart';
import 'hci_deployment_setting_scale_unit_infrastructure_network.dart';
import 'hci_deployment_setting_scale_unit_optional_service.dart';
import 'hci_deployment_setting_scale_unit_physical_node.dart';
import 'hci_deployment_setting_scale_unit_storage.dart';

class HciDeploymentSettingScaleUnit {
  /// Specify the full name of the Active Directory Organizational Unit container object prepared for the deployment, including the domain components. For example:`OU=HCI01,DC=contoso,DC=com`. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<String> activeDirectoryOrganizationalUnitPath;
  /// Whether to enable BitLocker for boot volume. Possible values are `true` and `false`. When set to `true`, BitLocker XTS_AES 256-bit encryption is enabled for all data-at-rest on the OS volume of your Azure Stack HCI cluster. This setting is TPM-hardware dependent. Defaults to `true`. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<bool>? bitlockerBootVolumeEnabled;
  /// Whether to enable BitLocker for data volume. Possible values are `true` and `false`. When set to `true`, BitLocker XTS-AES 256-bit encryption is enabled for all data-at-rest on your Azure Stack HCI cluster shared volumes. Defaults to `true`. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<bool>? bitlockerDataVolumeEnabled;
  /// A `cluster` block as defined above. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<HciDeploymentSettingScaleUnitCluster> cluster;
  /// Whether to enable credential guard. Possible values are `true` and `false`. Defaults to `false`. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<bool>? credentialGuardEnabled;
  /// Specifies the FQDN for deploying cluster. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<String> domainFqdn;
  /// Whether to enable drift control. Possible values are `true` and `false`. When set to `true`, the security baseline is re-applied regularly. Defaults to `true`. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<bool>? driftControlEnabled;
  /// Whether to enable DRTM protection. Possible values are `true` and `false`. When set to `true`, Secure Boot is enabled on your Azure HCI cluster. This setting is hardware dependent. Defaults to `true`. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<bool>? drtmProtectionEnabled;
  /// Whether to collect log data to facilitate quicker issue resolution. Possible values are `true` and `false`. Defaults to `true`. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<bool>? episodicDataUploadEnabled;
  /// Whether to store data sent to Microsoft in EU. The log and diagnostic data is sent to the appropriate diagnostics servers depending upon where your cluster resides. Setting this to `false` results in all data sent to Microsoft to be stored outside of the EU. Possible values are `true` and `false`. Defaults to `false`. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<bool>? euLocationEnabled;
  /// A `host_network` block as defined above. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<HciDeploymentSettingScaleUnitHostNetwork> hostNetwork;
  /// Whether to enable HVCI protection. Possible values are `true` and `false`. When set to `true`, Hypervisor-protected Code Integrity is enabled on your Azure HCI cluster. Defaults to `true`. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<bool>? hvciProtectionEnabled;
  /// One or more `infrastructure_network` blocks as defined above. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<List<HciDeploymentSettingScaleUnitInfrastructureNetwork>> infrastructureNetworks;
  /// Specifies the name prefix to deploy cluster. It must be 1-8 characters long and contain only letters, numbers and hyphens Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<String> namePrefix;
  /// A `optional_service` block as defined above. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<HciDeploymentSettingScaleUnitOptionalService> optionalService;
  /// One or more `physical_node` blocks as defined above. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<List<HciDeploymentSettingScaleUnitPhysicalNode>> physicalNodes;
  /// The URI to the Key Vault or secret store. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<String> secretsLocation;
  /// Whether to enable side channel mitigation. Possible values are `true` and `false`. When set to `true`, all side channel mitigations are enabled on your Azure HCI cluster. Defaults to `true`. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<bool>? sideChannelMitigationEnabled;
  /// Whether to enable SMB cluster encryption. Possible values are `true` and `false`. When set to `true`, cluster east-west traffic is encrypted. Defaults to `false`. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<bool>? smbClusterEncryptionEnabled;
  /// Whether to enable SMB signing. Possible values are `true` and `false`. When set to `true`, the SMB default instance requires sign in for the client and server services. Defaults to `true`. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<bool>? smbSigningEnabled;
  /// A `storage` block as defined below. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<HciDeploymentSettingScaleUnitStorage> storage;
  /// Whether the telemetry data will be sent to Microsoft. Possible values are `true` and `false`. Defaults to `true`. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<bool>? streamingDataClientEnabled;
  /// Whether to enable WDAC. Possible values are `true` and `false`. When set to `true`, applications and the code that you can run on your Azure Stack HCI cluster are limited. Defaults to `true`. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<bool>? wdacEnabled;

  /// Creates a new [HciDeploymentSettingScaleUnit].
  /// [activeDirectoryOrganizationalUnitPath] Specify the full name of the Active Directory Organizational Unit container object prepared for the deployment, including the domain components. For example:`OU=HCI01,DC=contoso,DC=com`. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [bitlockerBootVolumeEnabled] Whether to enable BitLocker for boot volume. Possible values are `true` and `false`. When set to `true`, BitLocker XTS_AES 256-bit encryption is enabled for all data-at-rest on the OS volume of your Azure Stack HCI cluster. This setting is TPM-hardware dependent. Defaults to `true`. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [bitlockerDataVolumeEnabled] Whether to enable BitLocker for data volume. Possible values are `true` and `false`. When set to `true`, BitLocker XTS-AES 256-bit encryption is enabled for all data-at-rest on your Azure Stack HCI cluster shared volumes. Defaults to `true`. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [cluster] A `cluster` block as defined above. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [credentialGuardEnabled] Whether to enable credential guard. Possible values are `true` and `false`. Defaults to `false`. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [domainFqdn] Specifies the FQDN for deploying cluster. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [driftControlEnabled] Whether to enable drift control. Possible values are `true` and `false`. When set to `true`, the security baseline is re-applied regularly. Defaults to `true`. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [drtmProtectionEnabled] Whether to enable DRTM protection. Possible values are `true` and `false`. When set to `true`, Secure Boot is enabled on your Azure HCI cluster. This setting is hardware dependent. Defaults to `true`. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [episodicDataUploadEnabled] Whether to collect log data to facilitate quicker issue resolution. Possible values are `true` and `false`. Defaults to `true`. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [euLocationEnabled] Whether to store data sent to Microsoft in EU. The log and diagnostic data is sent to the appropriate diagnostics servers depending upon where your cluster resides. Setting this to `false` results in all data sent to Microsoft to be stored outside of the EU. Possible values are `true` and `false`. Defaults to `false`. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [hostNetwork] A `host_network` block as defined above. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [hvciProtectionEnabled] Whether to enable HVCI protection. Possible values are `true` and `false`. When set to `true`, Hypervisor-protected Code Integrity is enabled on your Azure HCI cluster. Defaults to `true`. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [infrastructureNetworks] One or more `infrastructure_network` blocks as defined above. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [namePrefix] Specifies the name prefix to deploy cluster. It must be 1-8 characters long and contain only letters, numbers and hyphens Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [optionalService] A `optional_service` block as defined above. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [physicalNodes] One or more `physical_node` blocks as defined above. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [secretsLocation] The URI to the Key Vault or secret store. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [sideChannelMitigationEnabled] Whether to enable side channel mitigation. Possible values are `true` and `false`. When set to `true`, all side channel mitigations are enabled on your Azure HCI cluster. Defaults to `true`. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [smbClusterEncryptionEnabled] Whether to enable SMB cluster encryption. Possible values are `true` and `false`. When set to `true`, cluster east-west traffic is encrypted. Defaults to `false`. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [smbSigningEnabled] Whether to enable SMB signing. Possible values are `true` and `false`. When set to `true`, the SMB default instance requires sign in for the client and server services. Defaults to `true`. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [storage] A `storage` block as defined below. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [streamingDataClientEnabled] Whether the telemetry data will be sent to Microsoft. Possible values are `true` and `false`. Defaults to `true`. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [wdacEnabled] Whether to enable WDAC. Possible values are `true` and `false`. When set to `true`, applications and the code that you can run on your Azure Stack HCI cluster are limited. Defaults to `true`. Changing this forces a new Stack HCI Deployment Setting to be created.
  const HciDeploymentSettingScaleUnit({
    required this.activeDirectoryOrganizationalUnitPath,
    this.bitlockerBootVolumeEnabled,
    this.bitlockerDataVolumeEnabled,
    required this.cluster,
    this.credentialGuardEnabled,
    required this.domainFqdn,
    this.driftControlEnabled,
    this.drtmProtectionEnabled,
    this.episodicDataUploadEnabled,
    this.euLocationEnabled,
    required this.hostNetwork,
    this.hvciProtectionEnabled,
    required this.infrastructureNetworks,
    required this.namePrefix,
    required this.optionalService,
    required this.physicalNodes,
    required this.secretsLocation,
    this.sideChannelMitigationEnabled,
    this.smbClusterEncryptionEnabled,
    this.smbSigningEnabled,
    required this.storage,
    this.streamingDataClientEnabled,
    this.wdacEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryOrganizationalUnitPath': activeDirectoryOrganizationalUnitPath,
      'bitlockerBootVolumeEnabled': ?bitlockerBootVolumeEnabled,
      'bitlockerDataVolumeEnabled': ?bitlockerDataVolumeEnabled,
      'cluster': pulumi.Input.mapInputValue<HciDeploymentSettingScaleUnitCluster, Map<String, dynamic>>(cluster, (value) => value.toMap()),
      'credentialGuardEnabled': ?credentialGuardEnabled,
      'domainFqdn': domainFqdn,
      'driftControlEnabled': ?driftControlEnabled,
      'drtmProtectionEnabled': ?drtmProtectionEnabled,
      'episodicDataUploadEnabled': ?episodicDataUploadEnabled,
      'euLocationEnabled': ?euLocationEnabled,
      'hostNetwork': pulumi.Input.mapInputValue<HciDeploymentSettingScaleUnitHostNetwork, Map<String, dynamic>>(hostNetwork, (value) => value.toMap()),
      'hvciProtectionEnabled': ?hvciProtectionEnabled,
      'infrastructureNetworks': pulumi.Input.mapInputValue<List<HciDeploymentSettingScaleUnitInfrastructureNetwork>, List<Map<String, dynamic>>>(infrastructureNetworks, (value) => pulumi.Input.encodeList<HciDeploymentSettingScaleUnitInfrastructureNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
      'namePrefix': namePrefix,
      'optionalService': pulumi.Input.mapInputValue<HciDeploymentSettingScaleUnitOptionalService, Map<String, dynamic>>(optionalService, (value) => value.toMap()),
      'physicalNodes': pulumi.Input.mapInputValue<List<HciDeploymentSettingScaleUnitPhysicalNode>, List<Map<String, dynamic>>>(physicalNodes, (value) => pulumi.Input.encodeList<HciDeploymentSettingScaleUnitPhysicalNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secretsLocation': secretsLocation,
      'sideChannelMitigationEnabled': ?sideChannelMitigationEnabled,
      'smbClusterEncryptionEnabled': ?smbClusterEncryptionEnabled,
      'smbSigningEnabled': ?smbSigningEnabled,
      'storage': pulumi.Input.mapInputValue<HciDeploymentSettingScaleUnitStorage, Map<String, dynamic>>(storage, (value) => value.toMap()),
      'streamingDataClientEnabled': ?streamingDataClientEnabled,
      'wdacEnabled': ?wdacEnabled,
    };
  }

  factory HciDeploymentSettingScaleUnit.fromMap(Map<String, dynamic> map) {
    return HciDeploymentSettingScaleUnit(
      activeDirectoryOrganizationalUnitPath: pulumi.Input.fromValue(map['activeDirectoryOrganizationalUnitPath'] as String),
      bitlockerBootVolumeEnabled: (() { final guardedValue = map['bitlockerBootVolumeEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bitlockerDataVolumeEnabled: (() { final guardedValue = map['bitlockerDataVolumeEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cluster: pulumi.Input.fromValue(HciDeploymentSettingScaleUnitCluster.fromMap((map['cluster']! as Map).cast<String, dynamic>())),
      credentialGuardEnabled: (() { final guardedValue = map['credentialGuardEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      domainFqdn: pulumi.Input.fromValue(map['domainFqdn'] as String),
      driftControlEnabled: (() { final guardedValue = map['driftControlEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      drtmProtectionEnabled: (() { final guardedValue = map['drtmProtectionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      episodicDataUploadEnabled: (() { final guardedValue = map['episodicDataUploadEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      euLocationEnabled: (() { final guardedValue = map['euLocationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hostNetwork: pulumi.Input.fromValue(HciDeploymentSettingScaleUnitHostNetwork.fromMap((map['hostNetwork']! as Map).cast<String, dynamic>())),
      hvciProtectionEnabled: (() { final guardedValue = map['hvciProtectionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      infrastructureNetworks: pulumi.Input.fromValue(pulumi.Input.decodeList<HciDeploymentSettingScaleUnitInfrastructureNetwork>(map['infrastructureNetworks']!, (value) => HciDeploymentSettingScaleUnitInfrastructureNetwork.fromMap((value as Map).cast<String, dynamic>()))),
      namePrefix: pulumi.Input.fromValue(map['namePrefix'] as String),
      optionalService: pulumi.Input.fromValue(HciDeploymentSettingScaleUnitOptionalService.fromMap((map['optionalService']! as Map).cast<String, dynamic>())),
      physicalNodes: pulumi.Input.fromValue(pulumi.Input.decodeList<HciDeploymentSettingScaleUnitPhysicalNode>(map['physicalNodes']!, (value) => HciDeploymentSettingScaleUnitPhysicalNode.fromMap((value as Map).cast<String, dynamic>()))),
      secretsLocation: pulumi.Input.fromValue(map['secretsLocation'] as String),
      sideChannelMitigationEnabled: (() { final guardedValue = map['sideChannelMitigationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      smbClusterEncryptionEnabled: (() { final guardedValue = map['smbClusterEncryptionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      smbSigningEnabled: (() { final guardedValue = map['smbSigningEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      storage: pulumi.Input.fromValue(HciDeploymentSettingScaleUnitStorage.fromMap((map['storage']! as Map).cast<String, dynamic>())),
      streamingDataClientEnabled: (() { final guardedValue = map['streamingDataClientEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      wdacEnabled: (() { final guardedValue = map['wdacEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

