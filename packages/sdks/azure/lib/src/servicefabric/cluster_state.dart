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
    this.addOnFeatures,
    this.azureActiveDirectory,
    this.certificate,
    this.certificateCommonNames,
    this.clientCertificateCommonNames,
    this.clientCertificateThumbprints,
    this.clusterCodeVersion,
    this.clusterEndpoint,
    this.diagnosticsConfig,
    this.fabricSettings,
    this.location,
    this.managementEndpoint,
    this.name,
    this.nodeTypes,
    this.reliabilityLevel,
    this.resourceGroupName,
    this.reverseProxyCertificate,
    this.reverseProxyCertificateCommonNames,
    this.serviceFabricZonalUpgradeMode,
    this.tags,
    this.upgradeMode,
    this.upgradePolicy,
    this.vmImage,
    this.vmssZonalUpgradeMode,
  });

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
      addOnFeatures: map['addOnFeatures'] == null ? null : ((map['addOnFeatures'] as List).cast<String>()).input(),
      azureActiveDirectory: map['azureActiveDirectory'] == null ? null : (ClusterAzureActiveDirectory.fromMap((map['azureActiveDirectory'] as Map).cast<String, dynamic>())).input(),
      certificate: map['certificate'] == null ? null : (ClusterCertificate.fromMap((map['certificate'] as Map).cast<String, dynamic>())).input(),
      certificateCommonNames: map['certificateCommonNames'] == null ? null : (ClusterCertificateCommonNames.fromMap((map['certificateCommonNames'] as Map).cast<String, dynamic>())).input(),
      clientCertificateCommonNames: map['clientCertificateCommonNames'] == null ? null : (pulumi.Input.decodeList<ClusterClientCertificateCommonName>(map['clientCertificateCommonNames'], (value) => ClusterClientCertificateCommonName.fromMap((value as Map).cast<String, dynamic>()))).input(),
      clientCertificateThumbprints: map['clientCertificateThumbprints'] == null ? null : (pulumi.Input.decodeList<ClusterClientCertificateThumbprint>(map['clientCertificateThumbprints'], (value) => ClusterClientCertificateThumbprint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      clusterCodeVersion: map['clusterCodeVersion'] == null ? null : (map['clusterCodeVersion'] as String).input(),
      clusterEndpoint: map['clusterEndpoint'] == null ? null : (map['clusterEndpoint'] as String).input(),
      diagnosticsConfig: map['diagnosticsConfig'] == null ? null : (ClusterDiagnosticsConfig.fromMap((map['diagnosticsConfig'] as Map).cast<String, dynamic>())).input(),
      fabricSettings: map['fabricSettings'] == null ? null : (pulumi.Input.decodeList<ClusterFabricSetting>(map['fabricSettings'], (value) => ClusterFabricSetting.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      managementEndpoint: map['managementEndpoint'] == null ? null : (map['managementEndpoint'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      nodeTypes: map['nodeTypes'] == null ? null : (pulumi.Input.decodeList<ClusterNodeType>(map['nodeTypes'], (value) => ClusterNodeType.fromMap((value as Map).cast<String, dynamic>()))).input(),
      reliabilityLevel: map['reliabilityLevel'] == null ? null : (map['reliabilityLevel'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      reverseProxyCertificate: map['reverseProxyCertificate'] == null ? null : (ClusterReverseProxyCertificate.fromMap((map['reverseProxyCertificate'] as Map).cast<String, dynamic>())).input(),
      reverseProxyCertificateCommonNames: map['reverseProxyCertificateCommonNames'] == null ? null : (ClusterReverseProxyCertificateCommonNames.fromMap((map['reverseProxyCertificateCommonNames'] as Map).cast<String, dynamic>())).input(),
      serviceFabricZonalUpgradeMode: map['serviceFabricZonalUpgradeMode'] == null ? null : (map['serviceFabricZonalUpgradeMode'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      upgradeMode: map['upgradeMode'] == null ? null : (map['upgradeMode'] as String).input(),
      upgradePolicy: map['upgradePolicy'] == null ? null : (ClusterUpgradePolicy.fromMap((map['upgradePolicy'] as Map).cast<String, dynamic>())).input(),
      vmImage: map['vmImage'] == null ? null : (map['vmImage'] as String).input(),
      vmssZonalUpgradeMode: map['vmssZonalUpgradeMode'] == null ? null : (map['vmssZonalUpgradeMode'] as String).input(),
    );
  }
}

