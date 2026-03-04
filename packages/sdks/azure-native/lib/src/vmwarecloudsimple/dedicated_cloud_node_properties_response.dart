// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of dedicated cloud node
class DedicatedCloudNodePropertiesResponse {
  /// Availability Zone id, e.g. "az1"
  final pulumi.Input<String> availabilityZoneId;

  /// Availability Zone name, e.g. "Availability Zone 1"
  final pulumi.Input<String> availabilityZoneName;

  /// VMWare Cloud Rack Name
  final pulumi.Input<String> cloudRackName;

  /// date time the resource was created
  final pulumi.Input<String> created;

  /// SKU's id
  final pulumi.Input<String> id;

  /// SKU's name
  final pulumi.Input<String> name;

  /// count of nodes to create
  final pulumi.Input<int> nodesCount;

  /// Placement Group id, e.g. "n1"
  final pulumi.Input<String> placementGroupId;

  /// Placement Name, e.g. "Placement Group 1"
  final pulumi.Input<String> placementGroupName;

  /// Private Cloud Id
  final pulumi.Input<String> privateCloudId;

  /// Resource Pool Name
  final pulumi.Input<String> privateCloudName;

  /// The provisioning status of the resource
  final pulumi.Input<String> provisioningState;

  /// purchase id
  final pulumi.Input<String> purchaseId;

  /// Node status, indicates is private cloud set up on this node or not
  final pulumi.Input<String> status;

  /// VMWare Cluster Name
  final pulumi.Input<String> vmwareClusterName;

  /// Creates a new [DedicatedCloudNodePropertiesResponse].
  /// [availabilityZoneId] Availability Zone id, e.g. "az1"
  /// [availabilityZoneName] Availability Zone name, e.g. "Availability Zone 1"
  /// [cloudRackName] VMWare Cloud Rack Name
  /// [created] date time the resource was created
  /// [id] SKU's id
  /// [name] SKU's name
  /// [nodesCount] count of nodes to create
  /// [placementGroupId] Placement Group id, e.g. "n1"
  /// [placementGroupName] Placement Name, e.g. "Placement Group 1"
  /// [privateCloudId] Private Cloud Id
  /// [privateCloudName] Resource Pool Name
  /// [provisioningState] The provisioning status of the resource
  /// [purchaseId] purchase id
  /// [status] Node status, indicates is private cloud set up on this node or not
  /// [vmwareClusterName] VMWare Cluster Name
  DedicatedCloudNodePropertiesResponse({
    required this.availabilityZoneId,
    required this.availabilityZoneName,
    required this.cloudRackName,
    required this.created,
    required this.id,
    required this.name,
    required this.nodesCount,
    required this.placementGroupId,
    required this.placementGroupName,
    required this.privateCloudId,
    required this.privateCloudName,
    required this.provisioningState,
    required this.purchaseId,
    required this.status,
    required this.vmwareClusterName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZoneId': availabilityZoneId,
      'availabilityZoneName': availabilityZoneName,
      'cloudRackName': cloudRackName,
      'created': created,
      'id': id,
      'name': name,
      'nodesCount': nodesCount,
      'placementGroupId': placementGroupId,
      'placementGroupName': placementGroupName,
      'privateCloudId': privateCloudId,
      'privateCloudName': privateCloudName,
      'provisioningState': provisioningState,
      'purchaseId': purchaseId,
      'status': status,
      'vmwareClusterName': vmwareClusterName,
    };
  }

  factory DedicatedCloudNodePropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return DedicatedCloudNodePropertiesResponse(
      availabilityZoneId: pulumi.Input.fromValue(
        map['availabilityZoneId'] as String,
      ),
      availabilityZoneName: pulumi.Input.fromValue(
        map['availabilityZoneName'] as String,
      ),
      cloudRackName: pulumi.Input.fromValue(map['cloudRackName'] as String),
      created: pulumi.Input.fromValue(map['created'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      nodesCount: pulumi.Input.fromValue(map['nodesCount'] as int),
      placementGroupId: pulumi.Input.fromValue(
        map['placementGroupId'] as String,
      ),
      placementGroupName: pulumi.Input.fromValue(
        map['placementGroupName'] as String,
      ),
      privateCloudId: pulumi.Input.fromValue(map['privateCloudId'] as String),
      privateCloudName: pulumi.Input.fromValue(
        map['privateCloudName'] as String,
      ),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      purchaseId: pulumi.Input.fromValue(map['purchaseId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      vmwareClusterName: pulumi.Input.fromValue(
        map['vmwareClusterName'] as String,
      ),
    );
  }
}
