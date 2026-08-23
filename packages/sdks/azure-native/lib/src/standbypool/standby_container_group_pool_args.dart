// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_group_properties.dart';
import 'standby_container_group_pool_elasticity_profile.dart';

/// {@template pulumi_standbypool_standby_container_group_pool_args_doc}
/// The set of arguments for StandbyContainerGroupPool.
/// {@endtemplate}
/// {@macro pulumi_standbypool_standby_container_group_pool_args_doc}
class StandbyContainerGroupPoolArgs {
  /// Specifies container group properties of standby container group pools.
  final pulumi.Input<ContainerGroupProperties> containerGroupProperties;
  /// Specifies elasticity profile of standby container group pools.
  final pulumi.Input<StandbyContainerGroupPoolElasticityProfile> elasticityProfile;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the standby container group pool
  final pulumi.Input<String>? standbyContainerGroupPoolName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [StandbyContainerGroupPoolArgs].
  /// [containerGroupProperties] Specifies container group properties of standby container group pools.
  /// [elasticityProfile] Specifies elasticity profile of standby container group pools.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [standbyContainerGroupPoolName] Name of the standby container group pool
  /// [tags] Resource tags.
  const StandbyContainerGroupPoolArgs({
    required this.containerGroupProperties,
    required this.elasticityProfile,
    this.location,
    required this.resourceGroupName,
    this.standbyContainerGroupPoolName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerGroupProperties': pulumi.Input.mapInputValue<ContainerGroupProperties, Map<String, dynamic>>(containerGroupProperties, (value) => value.toMap()),
      'elasticityProfile': pulumi.Input.mapInputValue<StandbyContainerGroupPoolElasticityProfile, Map<String, dynamic>>(elasticityProfile, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'standbyContainerGroupPoolName': ?standbyContainerGroupPoolName,
      'tags': ?tags,
    };
  }

  factory StandbyContainerGroupPoolArgs.fromMap(Map<String, dynamic> map) {
    return StandbyContainerGroupPoolArgs(
      containerGroupProperties: pulumi.Input.fromValue(ContainerGroupProperties.fromMap((map['containerGroupProperties']! as Map).cast<String, dynamic>())),
      elasticityProfile: pulumi.Input.fromValue(StandbyContainerGroupPoolElasticityProfile.fromMap((map['elasticityProfile']! as Map).cast<String, dynamic>())),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      standbyContainerGroupPoolName: (() { final guardedValue = map['standbyContainerGroupPoolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
