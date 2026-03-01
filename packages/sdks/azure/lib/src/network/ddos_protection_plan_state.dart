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
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<String>>? virtualNetworkIds,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualNetworkIds = pulumi.Input.asOptionalInput<List<String>>(virtualNetworkIds);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualNetworkIds: map['virtualNetworkIds'] == null ? null : pulumi.Output.create<List<String>>((map['virtualNetworkIds'] as List).cast<String>()),
    );
  }
}

