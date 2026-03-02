// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'saas_creation_properties.dart';

/// {@template pulumi_saas_saas_subscription_level_args_doc}
/// The set of arguments for SaasSubscriptionLevel.
/// {@endtemplate}
/// {@macro pulumi_saas_saas_subscription_level_args_doc}
class SaasSubscriptionLevelArgs {
  /// Resource location. Only value allowed for SaaS is 'global'
  final pulumi.Input<String>? location;
  /// The resource name
  final pulumi.Input<String>? name;
  /// Properties of the SaaS resource that are relevant for creation.
  final pulumi.Input<SaasCreationProperties>? properties;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the resource.
  final pulumi.Input<String>? resourceName;
  /// the resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SaasSubscriptionLevelArgs].
  /// [location] Resource location. Only value allowed for SaaS is 'global'
  /// [name] The resource name
  /// [properties] Properties of the SaaS resource that are relevant for creation.
  /// [resourceGroupName] The name of the resource group.
  /// [resourceName] The name of the resource.
  /// [tags] the resource tags.
  SaasSubscriptionLevelArgs({
    this.location,
    this.name,
    this.properties,
    required this.resourceGroupName,
    this.resourceName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<SaasCreationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceName': ?resourceName,
      'tags': ?tags,
    };
  }

  factory SaasSubscriptionLevelArgs.fromMap(Map<String, dynamic> map) {
    return SaasSubscriptionLevelArgs(
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      properties: map['properties'] == null ? null : (SaasCreationProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: map['resourceName'] == null ? null : (map['resourceName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

