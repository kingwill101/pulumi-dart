// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_azure_active_directory.dart';
import 'cluster_certificate.dart';
import 'cluster_certificate_common_names.dart';
import 'cluster_client_certificate_common_name.dart';
import 'cluster_client_certificate_thumbprint.dart';
import 'cluster_diagnostics_config.dart';
import 'cluster_fabric_setting.dart';
import 'cluster_node_type.dart';
import 'cluster_reverse_proxy_certificate.dart';
import 'cluster_reverse_proxy_certificate_common_names.dart';
import 'cluster_upgrade_policy.dart';

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// A List of one or more features which should be enabled, such as `DnsService`.
  final pulumi.Input<List<String>>? addOnFeatures;
  /// An `azure_active_directory` block as defined below.
  final pulumi.Input<ClusterAzureActiveDirectory>? azureActiveDirectory;
  /// A `certificate` block as defined below. Conflicts with `certificate_common_names`.
  final pulumi.Input<ClusterCertificate>? certificate;
  /// A `certificate_common_names` block as defined below. Conflicts with `certificate`.
  final pulumi.Input<ClusterCertificateCommonNames>? certificateCommonNames;
  /// A `client_certificate_common_name` block as defined below.
  ///
  /// > **Note:** If Client Certificates are enabled then at a Certificate must be configured on the cluster.
  final pulumi.Input<List<ClusterClientCertificateCommonName>>? clientCertificateCommonNames;
  /// One or more `client_certificate_thumbprint` blocks as defined below.
  final pulumi.Input<List<ClusterClientCertificateThumbprint>>? clientCertificateThumbprints;
  /// Required if Upgrade Mode set to `Manual`, Specifies the Version of the Cluster Code of the cluster.
  final pulumi.Input<String>? clusterCodeVersion;
  /// The Cluster Endpoint for this Service Fabric Cluster.
  final pulumi.Input<String>? clusterEndpoint;
  /// A `diagnostics_config` block as defined below.
  final pulumi.Input<ClusterDiagnosticsConfig>? diagnosticsConfig;
  /// One or more `fabric_settings` blocks as defined below.
  final pulumi.Input<List<ClusterFabricSetting>>? fabricSettings;
  /// Specifies the Azure Region where the Service Fabric Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the Management Endpoint of the cluster such as `http://example.com`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? managementEndpoint;
  /// The name of the Service Fabric Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One or more `node_type` blocks as defined below.
  final pulumi.Input<List<ClusterNodeType>>? nodeTypes;
  /// Specifies the Reliability Level of the Cluster. Possible values include `None`, `Bronze`, `Silver`, `Gold` and `Platinum`.
  ///
  /// > **Note:** The Reliability Level of the Cluster depends on the number of nodes in the Cluster: `Platinum` requires at least 9 VM's, `Gold` requires at least 7 VM's, `Silver` requires at least 5 VM's, `Bronze` requires at least 3 VM's.
  final pulumi.Input<String>? reliabilityLevel;
  /// The name of the Resource Group in which the Service Fabric Cluster exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `reverse_proxy_certificate` block as defined below. Conflicts with `reverse_proxy_certificate_common_names`.
  final pulumi.Input<ClusterReverseProxyCertificate>? reverseProxyCertificate;
  /// A `reverse_proxy_certificate_common_names` block as defined below. Conflicts with `reverse_proxy_certificate`.
  final pulumi.Input<ClusterReverseProxyCertificateCommonNames>? reverseProxyCertificateCommonNames;
  /// Specifies the logical grouping of VMs in upgrade domains. Possible values are `Hierarchical` or `Parallel`.
  final pulumi.Input<String>? serviceFabricZonalUpgradeMode;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the Upgrade Mode of the cluster. Possible values are `Automatic` or `Manual`.
  final pulumi.Input<String>? upgradeMode;
  /// A `upgrade_policy` block as defined below.
  final pulumi.Input<ClusterUpgradePolicy>? upgradePolicy;
  /// Specifies the Image expected for the Service Fabric Cluster, such as `Windows`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? vmImage;
  /// Specifies the upgrade mode for the virtual machine scale set updates that happen in all availability zones at once. Possible values are `Hierarchical` or `Parallel`.
  final pulumi.Input<String>? vmssZonalUpgradeMode;

  /// Creates a new [ClusterState].
  /// [addOnFeatures] A List of one or more features which should be enabled, such as `DnsService`.
  /// [azureActiveDirectory] An `azure_active_directory` block as defined below.
  /// [certificate] A `certificate` block as defined below. Conflicts with `certificate_common_names`.
  /// [certificateCommonNames] A `certificate_common_names` block as defined below. Conflicts with `certificate`.
  /// [clientCertificateCommonNames] A `client_certificate_common_name` block as defined below.
  /// [clientCertificateThumbprints] One or more `client_certificate_thumbprint` blocks as defined below.
  /// [clusterCodeVersion] Required if Upgrade Mode set to `Manual`, Specifies the Version of the Cluster Code of the cluster.
  /// [clusterEndpoint] The Cluster Endpoint for this Service Fabric Cluster.
  /// [diagnosticsConfig] A `diagnostics_config` block as defined below.
  /// [fabricSettings] One or more `fabric_settings` blocks as defined below.
  /// [location] Specifies the Azure Region where the Service Fabric Cluster should exist. Changing this forces a new resource to be created.
  /// [managementEndpoint] Specifies the Management Endpoint of the cluster such as `http://example.com`. Changing this forces a new resource to be created.
  /// [name] The name of the Service Fabric Cluster. Changing this forces a new resource to be created.
  /// [nodeTypes] One or more `node_type` blocks as defined below.
  /// [reliabilityLevel] Specifies the Reliability Level of the Cluster. Possible values include `None`, `Bronze`, `Silver`, `Gold` and `Platinum`.
  /// [resourceGroupName] The name of the Resource Group in which the Service Fabric Cluster exists. Changing this forces a new resource to be created.
  /// [reverseProxyCertificate] A `reverse_proxy_certificate` block as defined below. Conflicts with `reverse_proxy_certificate_common_names`.
  /// [reverseProxyCertificateCommonNames] A `reverse_proxy_certificate_common_names` block as defined below. Conflicts with `reverse_proxy_certificate`.
  /// [serviceFabricZonalUpgradeMode] Specifies the logical grouping of VMs in upgrade domains. Possible values are `Hierarchical` or `Parallel`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [upgradeMode] Specifies the Upgrade Mode of the cluster. Possible values are `Automatic` or `Manual`.
  /// [upgradePolicy] A `upgrade_policy` block as defined below.
  /// [vmImage] Specifies the Image expected for the Service Fabric Cluster, such as `Windows`. Changing this forces a new resource to be created.
  /// [vmssZonalUpgradeMode] Specifies the upgrade mode for the virtual machine scale set updates that happen in all availability zones at once. Possible values are `Hierarchical` or `Parallel`.
  ClusterState({
    pulumi.Output<List<String>>? addOnFeatures,
    pulumi.Output<ClusterAzureActiveDirectory>? azureActiveDirectory,
    pulumi.Output<ClusterCertificate>? certificate,
    pulumi.Output<ClusterCertificateCommonNames>? certificateCommonNames,
    pulumi.Output<List<ClusterClientCertificateCommonName>>? clientCertificateCommonNames,
    pulumi.Output<List<ClusterClientCertificateThumbprint>>? clientCertificateThumbprints,
    pulumi.Output<String>? clusterCodeVersion,
    pulumi.Output<String>? clusterEndpoint,
    pulumi.Output<ClusterDiagnosticsConfig>? diagnosticsConfig,
    pulumi.Output<List<ClusterFabricSetting>>? fabricSettings,
    pulumi.Output<String>? location,
    pulumi.Output<String>? managementEndpoint,
    pulumi.Output<String>? name,
    pulumi.Output<List<ClusterNodeType>>? nodeTypes,
    pulumi.Output<String>? reliabilityLevel,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<ClusterReverseProxyCertificate>? reverseProxyCertificate,
    pulumi.Output<ClusterReverseProxyCertificateCommonNames>? reverseProxyCertificateCommonNames,
    pulumi.Output<String>? serviceFabricZonalUpgradeMode,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? upgradeMode,
    pulumi.Output<ClusterUpgradePolicy>? upgradePolicy,
    pulumi.Output<String>? vmImage,
    pulumi.Output<String>? vmssZonalUpgradeMode,
  }) :
      addOnFeatures = pulumi.Input.asOptionalInput<List<String>>(addOnFeatures),
      azureActiveDirectory = pulumi.Input.asOptionalInput<ClusterAzureActiveDirectory>(azureActiveDirectory),
      certificate = pulumi.Input.asOptionalInput<ClusterCertificate>(certificate),
      certificateCommonNames = pulumi.Input.asOptionalInput<ClusterCertificateCommonNames>(certificateCommonNames),
      clientCertificateCommonNames = pulumi.Input.asOptionalInput<List<ClusterClientCertificateCommonName>>(clientCertificateCommonNames),
      clientCertificateThumbprints = pulumi.Input.asOptionalInput<List<ClusterClientCertificateThumbprint>>(clientCertificateThumbprints),
      clusterCodeVersion = pulumi.Input.asOptionalInput<String>(clusterCodeVersion),
      clusterEndpoint = pulumi.Input.asOptionalInput<String>(clusterEndpoint),
      diagnosticsConfig = pulumi.Input.asOptionalInput<ClusterDiagnosticsConfig>(diagnosticsConfig),
      fabricSettings = pulumi.Input.asOptionalInput<List<ClusterFabricSetting>>(fabricSettings),
      location = pulumi.Input.asOptionalInput<String>(location),
      managementEndpoint = pulumi.Input.asOptionalInput<String>(managementEndpoint),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodeTypes = pulumi.Input.asOptionalInput<List<ClusterNodeType>>(nodeTypes),
      reliabilityLevel = pulumi.Input.asOptionalInput<String>(reliabilityLevel),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      reverseProxyCertificate = pulumi.Input.asOptionalInput<ClusterReverseProxyCertificate>(reverseProxyCertificate),
      reverseProxyCertificateCommonNames = pulumi.Input.asOptionalInput<ClusterReverseProxyCertificateCommonNames>(reverseProxyCertificateCommonNames),
      serviceFabricZonalUpgradeMode = pulumi.Input.asOptionalInput<String>(serviceFabricZonalUpgradeMode),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      upgradeMode = pulumi.Input.asOptionalInput<String>(upgradeMode),
      upgradePolicy = pulumi.Input.asOptionalInput<ClusterUpgradePolicy>(upgradePolicy),
      vmImage = pulumi.Input.asOptionalInput<String>(vmImage),
      vmssZonalUpgradeMode = pulumi.Input.asOptionalInput<String>(vmssZonalUpgradeMode);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addOnFeatures': ?addOnFeatures,
      'azureActiveDirectory': ?pulumi.Input.mapOptionalInputValue<ClusterAzureActiveDirectory, Map<String, dynamic>>(azureActiveDirectory, (value) => value.toMap()),
      'certificate': ?pulumi.Input.mapOptionalInputValue<ClusterCertificate, Map<String, dynamic>>(certificate, (value) => value.toMap()),
      'certificateCommonNames': ?pulumi.Input.mapOptionalInputValue<ClusterCertificateCommonNames, Map<String, dynamic>>(certificateCommonNames, (value) => value.toMap()),
      'clientCertificateCommonNames': ?pulumi.Input.mapOptionalInputValue<List<ClusterClientCertificateCommonName>, List<Map<String, dynamic>>>(clientCertificateCommonNames, (value) => pulumi.Input.encodeList<ClusterClientCertificateCommonName, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clientCertificateThumbprints': ?pulumi.Input.mapOptionalInputValue<List<ClusterClientCertificateThumbprint>, List<Map<String, dynamic>>>(clientCertificateThumbprints, (value) => pulumi.Input.encodeList<ClusterClientCertificateThumbprint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clusterCodeVersion': ?clusterCodeVersion,
      'clusterEndpoint': ?clusterEndpoint,
      'diagnosticsConfig': ?pulumi.Input.mapOptionalInputValue<ClusterDiagnosticsConfig, Map<String, dynamic>>(diagnosticsConfig, (value) => value.toMap()),
      'fabricSettings': ?pulumi.Input.mapOptionalInputValue<List<ClusterFabricSetting>, List<Map<String, dynamic>>>(fabricSettings, (value) => pulumi.Input.encodeList<ClusterFabricSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'managementEndpoint': ?managementEndpoint,
      'name': ?name,
      'nodeTypes': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodeType>, List<Map<String, dynamic>>>(nodeTypes, (value) => pulumi.Input.encodeList<ClusterNodeType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'reliabilityLevel': ?reliabilityLevel,
      'resourceGroupName': ?resourceGroupName,
      'reverseProxyCertificate': ?pulumi.Input.mapOptionalInputValue<ClusterReverseProxyCertificate, Map<String, dynamic>>(reverseProxyCertificate, (value) => value.toMap()),
      'reverseProxyCertificateCommonNames': ?pulumi.Input.mapOptionalInputValue<ClusterReverseProxyCertificateCommonNames, Map<String, dynamic>>(reverseProxyCertificateCommonNames, (value) => value.toMap()),
      'serviceFabricZonalUpgradeMode': ?serviceFabricZonalUpgradeMode,
      'tags': ?tags,
      'upgradeMode': ?upgradeMode,
      'upgradePolicy': ?pulumi.Input.mapOptionalInputValue<ClusterUpgradePolicy, Map<String, dynamic>>(upgradePolicy, (value) => value.toMap()),
      'vmImage': ?vmImage,
      'vmssZonalUpgradeMode': ?vmssZonalUpgradeMode,
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      addOnFeatures: map['addOnFeatures'] == null ? null : pulumi.Output.create<List<String>>((map['addOnFeatures'] as List).cast<String>()),
      azureActiveDirectory: map['azureActiveDirectory'] == null ? null : pulumi.Output.create<ClusterAzureActiveDirectory>(ClusterAzureActiveDirectory.fromMap((map['azureActiveDirectory'] as Map).cast<String, dynamic>())),
      certificate: map['certificate'] == null ? null : pulumi.Output.create<ClusterCertificate>(ClusterCertificate.fromMap((map['certificate'] as Map).cast<String, dynamic>())),
      certificateCommonNames: map['certificateCommonNames'] == null ? null : pulumi.Output.create<ClusterCertificateCommonNames>(ClusterCertificateCommonNames.fromMap((map['certificateCommonNames'] as Map).cast<String, dynamic>())),
      clientCertificateCommonNames: map['clientCertificateCommonNames'] == null ? null : pulumi.Output.create<List<ClusterClientCertificateCommonName>>(pulumi.Input.decodeList<ClusterClientCertificateCommonName>(map['clientCertificateCommonNames'], (value) => ClusterClientCertificateCommonName.fromMap((value as Map).cast<String, dynamic>()))),
      clientCertificateThumbprints: map['clientCertificateThumbprints'] == null ? null : pulumi.Output.create<List<ClusterClientCertificateThumbprint>>(pulumi.Input.decodeList<ClusterClientCertificateThumbprint>(map['clientCertificateThumbprints'], (value) => ClusterClientCertificateThumbprint.fromMap((value as Map).cast<String, dynamic>()))),
      clusterCodeVersion: map['clusterCodeVersion'] == null ? null : pulumi.Output.create<String>(map['clusterCodeVersion'] as String),
      clusterEndpoint: map['clusterEndpoint'] == null ? null : pulumi.Output.create<String>(map['clusterEndpoint'] as String),
      diagnosticsConfig: map['diagnosticsConfig'] == null ? null : pulumi.Output.create<ClusterDiagnosticsConfig>(ClusterDiagnosticsConfig.fromMap((map['diagnosticsConfig'] as Map).cast<String, dynamic>())),
      fabricSettings: map['fabricSettings'] == null ? null : pulumi.Output.create<List<ClusterFabricSetting>>(pulumi.Input.decodeList<ClusterFabricSetting>(map['fabricSettings'], (value) => ClusterFabricSetting.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managementEndpoint: map['managementEndpoint'] == null ? null : pulumi.Output.create<String>(map['managementEndpoint'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nodeTypes: map['nodeTypes'] == null ? null : pulumi.Output.create<List<ClusterNodeType>>(pulumi.Input.decodeList<ClusterNodeType>(map['nodeTypes'], (value) => ClusterNodeType.fromMap((value as Map).cast<String, dynamic>()))),
      reliabilityLevel: map['reliabilityLevel'] == null ? null : pulumi.Output.create<String>(map['reliabilityLevel'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      reverseProxyCertificate: map['reverseProxyCertificate'] == null ? null : pulumi.Output.create<ClusterReverseProxyCertificate>(ClusterReverseProxyCertificate.fromMap((map['reverseProxyCertificate'] as Map).cast<String, dynamic>())),
      reverseProxyCertificateCommonNames: map['reverseProxyCertificateCommonNames'] == null ? null : pulumi.Output.create<ClusterReverseProxyCertificateCommonNames>(ClusterReverseProxyCertificateCommonNames.fromMap((map['reverseProxyCertificateCommonNames'] as Map).cast<String, dynamic>())),
      serviceFabricZonalUpgradeMode: map['serviceFabricZonalUpgradeMode'] == null ? null : pulumi.Output.create<String>(map['serviceFabricZonalUpgradeMode'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      upgradeMode: map['upgradeMode'] == null ? null : pulumi.Output.create<String>(map['upgradeMode'] as String),
      upgradePolicy: map['upgradePolicy'] == null ? null : pulumi.Output.create<ClusterUpgradePolicy>(ClusterUpgradePolicy.fromMap((map['upgradePolicy'] as Map).cast<String, dynamic>())),
      vmImage: map['vmImage'] == null ? null : pulumi.Output.create<String>(map['vmImage'] as String),
      vmssZonalUpgradeMode: map['vmssZonalUpgradeMode'] == null ? null : pulumi.Output.create<String>(map['vmssZonalUpgradeMode'] as String),
    );
  }
}

