// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DdosProtectionPlan resources.
class DdosProtectionPlanState {
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Network DDoS Protection Plan. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// A list of Virtual Network IDs associated with the DDoS Protection Plan.
  final pulumi.Input<List<String>>? virtualNetworkIds;

  /// Creates a new [DdosProtectionPlanState].
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Network DDoS Protection Plan. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [virtualNetworkIds] A list of Virtual Network IDs associated with the DDoS Protection Plan.
  DdosProtectionPlanState({
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
    this.virtualNetworkIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'virtualNetworkIds': ?virtualNetworkIds,
    };
  }

  factory DdosProtectionPlanState.fromMap(Map<String, dynamic> map) {
    return DdosProtectionPlanState(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      virtualNetworkIds: map['virtualNetworkIds'] == null ? null : ((map['virtualNetworkIds']! as List).cast<String>()).input(),
    );
  }
}

