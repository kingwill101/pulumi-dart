// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Resolver resources.
class ResolverState {
  /// Specifies the Azure Region where the Private DNS Resolver should exist. Changing this forces a new Private DNS Resolver to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name which should be used for this Private DNS Resolver. Changing this forces a new Private DNS Resolver to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Resource Group where the Private DNS Resolver should exist. Changing this forces a new Private DNS Resolver to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Private DNS Resolver.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the Virtual Network that is linked to the Private DNS Resolver. Changing this forces a new Private DNS Resolver to be created.
  final pulumi.Input<String>? virtualNetworkId;

  /// Creates a new [ResolverState].
  /// [location] Specifies the Azure Region where the Private DNS Resolver should exist. Changing this forces a new Private DNS Resolver to be created.
  /// [name] Specifies the name which should be used for this Private DNS Resolver. Changing this forces a new Private DNS Resolver to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Private DNS Resolver should exist. Changing this forces a new Private DNS Resolver to be created.
  /// [tags] A mapping of tags which should be assigned to the Private DNS Resolver.
  /// [virtualNetworkId] The ID of the Virtual Network that is linked to the Private DNS Resolver. Changing this forces a new Private DNS Resolver to be created.
  ResolverState({
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
    this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory ResolverState.fromMap(Map<String, dynamic> map) {
    return ResolverState(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      virtualNetworkId: map['virtualNetworkId'] == null ? null : (map['virtualNetworkId']! as String).input(),
    );
  }
}

