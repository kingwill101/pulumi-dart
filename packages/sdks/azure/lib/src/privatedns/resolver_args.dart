// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatedns_resolver_resolver_args_doc}
/// The set of arguments for Resolver.
/// {@endtemplate}
/// {@macro pulumi_privatedns_resolver_resolver_args_doc}
class ResolverArgs {
  /// Specifies the Azure Region where the Private DNS Resolver should exist. Changing this forces a new Private DNS Resolver to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name which should be used for this Private DNS Resolver. Changing this forces a new Private DNS Resolver to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Resource Group where the Private DNS Resolver should exist. Changing this forces a new Private DNS Resolver to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Private DNS Resolver.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the Virtual Network that is linked to the Private DNS Resolver. Changing this forces a new Private DNS Resolver to be created.
  final pulumi.Input<String> virtualNetworkId;

  /// Creates a new [ResolverArgs].
  /// [location] Specifies the Azure Region where the Private DNS Resolver should exist. Changing this forces a new Private DNS Resolver to be created.
  /// [name] Specifies the name which should be used for this Private DNS Resolver. Changing this forces a new Private DNS Resolver to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Private DNS Resolver should exist. Changing this forces a new Private DNS Resolver to be created.
  /// [tags] A mapping of tags which should be assigned to the Private DNS Resolver.
  /// [virtualNetworkId] The ID of the Virtual Network that is linked to the Private DNS Resolver. Changing this forces a new Private DNS Resolver to be created.
  const ResolverArgs({
    this.location,
    this.name,
    required this.resourceGroupName,
    this.tags,
    required this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'virtualNetworkId': virtualNetworkId,
    };
  }

  factory ResolverArgs.fromMap(Map<String, dynamic> map) {
    return ResolverArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualNetworkId: pulumi.Input.fromValue(map['virtualNetworkId'] as String),
    );
  }
}
