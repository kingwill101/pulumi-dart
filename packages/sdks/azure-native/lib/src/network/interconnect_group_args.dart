// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subgroup_profile.dart';

/// {@template pulumi_network_interconnect_group_args_doc}
/// The set of arguments for InterconnectGroup.
/// {@endtemplate}
/// {@macro pulumi_network_interconnect_group_args_doc}
class InterconnectGroupArgs {
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the interconnect group.
  final pulumi.Input<String>? interconnectGroupName;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Scope of interconnect group resource.
  final pulumi.Input<String>? scope;
  /// The subgroup profile of the interconnect group resource.
  final pulumi.Input<SubgroupProfile> subgroupProfile;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [InterconnectGroupArgs].
  /// [id] Resource ID.
  /// [interconnectGroupName] The name of the interconnect group.
  /// [location] Resource location.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scope] Scope of interconnect group resource.
  /// [subgroupProfile] The subgroup profile of the interconnect group resource.
  /// [tags] Resource tags.
  const InterconnectGroupArgs({
    this.id,
    this.interconnectGroupName,
    this.location,
    required this.resourceGroupName,
    this.scope,
    required this.subgroupProfile,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'interconnectGroupName': ?interconnectGroupName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'scope': ?scope,
      'subgroupProfile': pulumi.Input.mapInputValue<SubgroupProfile, Map<String, dynamic>>(subgroupProfile, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory InterconnectGroupArgs.fromMap(Map<String, dynamic> map) {
    return InterconnectGroupArgs(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interconnectGroupName: (() { final guardedValue = map['interconnectGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subgroupProfile: pulumi.Input.fromValue(SubgroupProfile.fromMap((map['subgroupProfile']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
