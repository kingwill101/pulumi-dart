// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PrivateLinkHub resources.
class PrivateLinkHubState {
  /// Specifies the Azure location where the Synapse Private Link Hub exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Synapse Private Link Hub. Changing this forces a new Synapse Private Link Hub to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the Synapse Private Link Hub. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Synapse Private Link Hub.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PrivateLinkHubState].
  /// [location] Specifies the Azure location where the Synapse Private Link Hub exists. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Synapse Private Link Hub. Changing this forces a new Synapse Private Link Hub to be created.
  /// [resourceGroupName] The name of the resource group in which to create the Synapse Private Link Hub. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Synapse Private Link Hub.
  PrivateLinkHubState({
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory PrivateLinkHubState.fromMap(Map<String, dynamic> map) {
    return PrivateLinkHubState(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

