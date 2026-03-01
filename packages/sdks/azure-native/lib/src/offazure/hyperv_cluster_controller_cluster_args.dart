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
    pulumi.Output<String>? clusterName,
    pulumi.Output<String>? fqdn,
    pulumi.Output<List<String>>? hostFqdnList,
    pulumi.Output<String>? provisioningState,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? runAsAccountId,
    required pulumi.Output<String> siteName,
  }) :
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      fqdn = pulumi.Input.asOptionalInput<String>(fqdn),
      hostFqdnList = pulumi.Input.asOptionalInput<List<String>>(hostFqdnList),
      provisioningState = pulumi.Input.asOptionalInput<String>(provisioningState),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      runAsAccountId = pulumi.Input.asOptionalInput<String>(runAsAccountId),
      siteName = pulumi.Input.asInput<String>(siteName);

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
      clusterName: map['clusterName'] == null ? null : pulumi.Output.create<String>(map['clusterName'] as String),
      fqdn: map['fqdn'] == null ? null : pulumi.Output.create<String>(map['fqdn'] as String),
      hostFqdnList: map['hostFqdnList'] == null ? null : pulumi.Output.create<List<String>>((map['hostFqdnList'] as List).cast<String>()),
      provisioningState: map['provisioningState'] == null ? null : pulumi.Output.create<String>(map['provisioningState'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      runAsAccountId: map['runAsAccountId'] == null ? null : pulumi.Output.create<String>(map['runAsAccountId'] as String),
      siteName: pulumi.Output.create<String>(map['siteName'] as String),
    );
  }
}

