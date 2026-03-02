// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_offazure_hyperv_cluster_controller_cluster_args_doc}
/// The set of arguments for HypervClusterControllerCluster.
/// {@endtemplate}
/// {@macro pulumi_offazure_hyperv_cluster_controller_cluster_args_doc}
class HypervClusterControllerClusterArgs {
  /// Cluster ARM name
  final pulumi.Input<String>? clusterName;
  /// Gets or sets the FQDN/IPAddress of the Hyper-V cluster.
  final pulumi.Input<String>? fqdn;
  /// Gets or sets list of hosts (FQDN) currently being tracked by the cluster.
  final pulumi.Input<List<String>>? hostFqdnList;
  /// The status of the last operation.
  final pulumi.Input<String>? provisioningState;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets Run as account ID of the Hyper-V cluster.
  final pulumi.Input<String>? runAsAccountId;
  /// Site name
  final pulumi.Input<String> siteName;

  /// Creates a new [HypervClusterControllerClusterArgs].
  /// [clusterName] Cluster ARM name
  /// [fqdn] Gets or sets the FQDN/IPAddress of the Hyper-V cluster.
  /// [hostFqdnList] Gets or sets list of hosts (FQDN) currently being tracked by the cluster.
  /// [provisioningState] The status of the last operation.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [runAsAccountId] Gets or sets Run as account ID of the Hyper-V cluster.
  /// [siteName] Site name
  HypervClusterControllerClusterArgs({
    this.clusterName,
    this.fqdn,
    this.hostFqdnList,
    this.provisioningState,
    required this.resourceGroupName,
    this.runAsAccountId,
    required this.siteName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': ?clusterName,
      'fqdn': ?fqdn,
      'hostFqdnList': ?hostFqdnList,
      'provisioningState': ?provisioningState,
      'resourceGroupName': resourceGroupName,
      'runAsAccountId': ?runAsAccountId,
      'siteName': siteName,
    };
  }

  factory HypervClusterControllerClusterArgs.fromMap(Map<String, dynamic> map) {
    return HypervClusterControllerClusterArgs(
      clusterName: map['clusterName'] == null ? null : (map['clusterName']! as String).input(),
      fqdn: map['fqdn'] == null ? null : (map['fqdn']! as String).input(),
      hostFqdnList: map['hostFqdnList'] == null ? null : ((map['hostFqdnList']! as List).cast<String>()).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      runAsAccountId: map['runAsAccountId'] == null ? null : (map['runAsAccountId']! as String).input(),
      siteName: (map['siteName'] as String).input(),
    );
  }
}

