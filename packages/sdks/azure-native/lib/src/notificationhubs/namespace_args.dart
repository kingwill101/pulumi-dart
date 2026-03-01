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
    pulumi.Output<String>? dataCenter,
    pulumi.Output<String>? location,
    pulumi.Output<String>? namespaceName,
    pulumi.Output<String>? namespaceType,
    pulumi.Output<NetworkAcls>? networkAcls,
    pulumi.Output<PnsCredentials>? pnsCredentials,
    pulumi.Output<String>? provisioningState,
    pulumi.Output<String>? publicNetworkAccess,
    pulumi.Output<String>? replicationRegion,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? scaleUnit,
    required pulumi.Output<Sku> sku,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? zoneRedundancy,
  }) :
      dataCenter = pulumi.Input.asOptionalInput<String>(dataCenter),
      location = pulumi.Input.asOptionalInput<String>(location),
      namespaceName = pulumi.Input.asOptionalInput<String>(namespaceName),
      namespaceType = pulumi.Input.asOptionalInput<String>(namespaceType),
      networkAcls = pulumi.Input.asOptionalInput<NetworkAcls>(networkAcls),
      pnsCredentials = pulumi.Input.asOptionalInput<PnsCredentials>(pnsCredentials),
      provisioningState = pulumi.Input.asOptionalInput<String>(provisioningState),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      replicationRegion = pulumi.Input.asOptionalInput<String>(replicationRegion),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scaleUnit = pulumi.Input.asOptionalInput<String>(scaleUnit),
      sku = pulumi.Input.asInput<Sku>(sku),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zoneRedundancy = pulumi.Input.asOptionalInput<String>(zoneRedundancy);

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
      dataCenter: map['dataCenter'] == null ? null : pulumi.Output.create<String>(map['dataCenter'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      namespaceName: map['namespaceName'] == null ? null : pulumi.Output.create<String>(map['namespaceName'] as String),
      namespaceType: map['namespaceType'] == null ? null : pulumi.Output.create<String>(map['namespaceType'] as String),
      networkAcls: map['networkAcls'] == null ? null : pulumi.Output.create<NetworkAcls>(NetworkAcls.fromMap((map['networkAcls'] as Map).cast<String, dynamic>())),
      pnsCredentials: map['pnsCredentials'] == null ? null : pulumi.Output.create<PnsCredentials>(PnsCredentials.fromMap((map['pnsCredentials'] as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] == null ? null : pulumi.Output.create<String>(map['provisioningState'] as String),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : pulumi.Output.create<String>(map['publicNetworkAccess'] as String),
      replicationRegion: map['replicationRegion'] == null ? null : pulumi.Output.create<String>(map['replicationRegion'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scaleUnit: map['scaleUnit'] == null ? null : pulumi.Output.create<String>(map['scaleUnit'] as String),
      sku: pulumi.Output.create<Sku>(Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      zoneRedundancy: map['zoneRedundancy'] == null ? null : pulumi.Output.create<String>(map['zoneRedundancy'] as String),
    );
  }
}

