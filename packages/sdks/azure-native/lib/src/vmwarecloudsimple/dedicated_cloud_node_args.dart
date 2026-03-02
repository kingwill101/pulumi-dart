// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku.dart';

/// {@template pulumi_vmwarecloudsimple_dedicated_cloud_node_args_doc}
/// The set of arguments for DedicatedCloudNode.
/// {@endtemplate}
/// {@macro pulumi_vmwarecloudsimple_dedicated_cloud_node_args_doc}
class DedicatedCloudNodeArgs {
  /// Availability Zone id, e.g. "az1"
  final pulumi.Input<String> availabilityZoneId;
  /// dedicated cloud node name
  final pulumi.Input<String>? dedicatedCloudNodeName;
  /// SKU's id
  final pulumi.Input<String> id;
  /// Azure region
  final pulumi.Input<String>? location;
  /// SKU's name
  final pulumi.Input<String> name;
  /// count of nodes to create
  final pulumi.Input<int> nodesCount;
  /// Placement Group id, e.g. "n1"
  final pulumi.Input<String> placementGroupId;
  /// purchase id
  final pulumi.Input<String> purchaseId;
  /// The name of the resource group
  final pulumi.Input<String> resourceGroupName;
  /// Dedicated Cloud Nodes SKU
  final pulumi.Input<Sku>? sku;
  /// Dedicated Cloud Nodes tags
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DedicatedCloudNodeArgs].
  /// [availabilityZoneId] Availability Zone id, e.g. "az1"
  /// [dedicatedCloudNodeName] dedicated cloud node name
  /// [id] SKU's id
  /// [location] Azure region
  /// [name] SKU's name
  /// [nodesCount] count of nodes to create
  /// [placementGroupId] Placement Group id, e.g. "n1"
  /// [purchaseId] purchase id
  /// [resourceGroupName] The name of the resource group
  /// [sku] Dedicated Cloud Nodes SKU
  /// [tags] Dedicated Cloud Nodes tags
  DedicatedCloudNodeArgs({
    required this.availabilityZoneId,
    this.dedicatedCloudNodeName,
    required this.id,
    this.location,
    required this.name,
    required this.nodesCount,
    required this.placementGroupId,
    required this.purchaseId,
    required this.resourceGroupName,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZoneId': availabilityZoneId,
      'dedicatedCloudNodeName': ?dedicatedCloudNodeName,
      'id': id,
      'location': ?location,
      'name': name,
      'nodesCount': nodesCount,
      'placementGroupId': placementGroupId,
      'purchaseId': purchaseId,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory DedicatedCloudNodeArgs.fromMap(Map<String, dynamic> map) {
    return DedicatedCloudNodeArgs(
      availabilityZoneId: (map['availabilityZoneId'] as String).input(),
      dedicatedCloudNodeName: map['dedicatedCloudNodeName'] == null ? null : (map['dedicatedCloudNodeName']! as String).input(),
      id: (map['id'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: (map['name'] as String).input(),
      nodesCount: (map['nodesCount'] as int).input(),
      placementGroupId: (map['placementGroupId'] as String).input(),
      purchaseId: (map['purchaseId'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: map['sku'] == null ? null : (Sku.fromMap((map['sku']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

