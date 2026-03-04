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
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            SaasCreationProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceName': ?resourceName,
      'tags': ?tags,
    };
  }

  factory SaasSubscriptionLevelArgs.fromMap(Map<String, dynamic> map) {
    return SaasSubscriptionLevelArgs(
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SaasCreationProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      resourceName: (() {
        final guardedValue = map['resourceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
