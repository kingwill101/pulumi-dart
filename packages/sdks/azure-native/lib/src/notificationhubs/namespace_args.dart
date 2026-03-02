// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_acls.dart';
import 'pns_credentials.dart';
import 'sku.dart';

/// {@template pulumi_notificationhubs_namespace_args_doc}
/// The set of arguments for Namespace.
/// {@endtemplate}
/// {@macro pulumi_notificationhubs_namespace_args_doc}
class NamespaceArgs {
  /// Deprecated.
  final pulumi.Input<String>? dataCenter;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Namespace name
  final pulumi.Input<String>? namespaceName;
  /// Defines values for NamespaceType.
  final pulumi.Input<String>? namespaceType;
  /// A collection of network authorization rules.
  final pulumi.Input<NetworkAcls>? networkAcls;
  /// Collection of Notification Hub or Notification Hub Namespace PNS credentials.
  final pulumi.Input<PnsCredentials>? pnsCredentials;
  /// Defines values for OperationProvisioningState.
  final pulumi.Input<String>? provisioningState;
  /// Type of public network access.
  final pulumi.Input<String>? publicNetworkAccess;
  /// Allowed replication region
  final pulumi.Input<String>? replicationRegion;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets scaleUnit where the namespace gets created
  final pulumi.Input<String>? scaleUnit;
  /// The Sku description for a namespace
  final pulumi.Input<Sku> sku;
  /// Namespace status.
  final pulumi.Input<String>? status;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Namespace SKU name.
  final pulumi.Input<String>? zoneRedundancy;

  /// Creates a new [NamespaceArgs].
  /// [dataCenter] Deprecated.
  /// [location] The geo-location where the resource lives
  /// [namespaceName] Namespace name
  /// [namespaceType] Defines values for NamespaceType.
  /// [networkAcls] A collection of network authorization rules.
  /// [pnsCredentials] Collection of Notification Hub or Notification Hub Namespace PNS credentials.
  /// [provisioningState] Defines values for OperationProvisioningState.
  /// [publicNetworkAccess] Type of public network access.
  /// [replicationRegion] Allowed replication region
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scaleUnit] Gets or sets scaleUnit where the namespace gets created
  /// [sku] The Sku description for a namespace
  /// [status] Namespace status.
  /// [tags] Resource tags.
  /// [zoneRedundancy] Namespace SKU name.
  NamespaceArgs({
    this.dataCenter,
    this.location,
    this.namespaceName,
    this.namespaceType,
    this.networkAcls,
    this.pnsCredentials,
    this.provisioningState,
    this.publicNetworkAccess,
    this.replicationRegion,
    required this.resourceGroupName,
    this.scaleUnit,
    required this.sku,
    this.status,
    this.tags,
    this.zoneRedundancy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCenter': ?dataCenter,
      'location': ?location,
      'namespaceName': ?namespaceName,
      'namespaceType': ?namespaceType,
      'networkAcls': ?pulumi.Input.mapOptionalInputValue<NetworkAcls, Map<String, dynamic>>(networkAcls, (value) => value.toMap()),
      'pnsCredentials': ?pulumi.Input.mapOptionalInputValue<PnsCredentials, Map<String, dynamic>>(pnsCredentials, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'replicationRegion': ?replicationRegion,
      'resourceGroupName': resourceGroupName,
      'scaleUnit': ?scaleUnit,
      'sku': pulumi.Input.mapInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'status': ?status,
      'tags': ?tags,
      'zoneRedundancy': ?zoneRedundancy,
    };
  }

  factory NamespaceArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceArgs(
      dataCenter: map['dataCenter'] == null ? null : (map['dataCenter'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      namespaceName: map['namespaceName'] == null ? null : (map['namespaceName'] as String).input(),
      namespaceType: map['namespaceType'] == null ? null : (map['namespaceType'] as String).input(),
      networkAcls: map['networkAcls'] == null ? null : (NetworkAcls.fromMap((map['networkAcls'] as Map).cast<String, dynamic>())).input(),
      pnsCredentials: map['pnsCredentials'] == null ? null : (PnsCredentials.fromMap((map['pnsCredentials'] as Map).cast<String, dynamic>())).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState'] as String).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess'] as String).input(),
      replicationRegion: map['replicationRegion'] == null ? null : (map['replicationRegion'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      scaleUnit: map['scaleUnit'] == null ? null : (map['scaleUnit'] as String).input(),
      sku: (Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      zoneRedundancy: map['zoneRedundancy'] == null ? null : (map['zoneRedundancy'] as String).input(),
    );
  }
}

