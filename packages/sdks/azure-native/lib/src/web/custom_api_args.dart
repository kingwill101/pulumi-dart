// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_api_properties_definition.dart';

/// {@template pulumi_web_custom_api_args_doc}
/// The set of arguments for CustomApi.
/// {@endtemplate}
/// {@macro pulumi_web_custom_api_args_doc}
class CustomApiArgs {
  /// API name
  final pulumi.Input<String>? apiName;

  /// Resource location
  final pulumi.Input<String>? location;

  /// Custom API properties
  final pulumi.Input<CustomApiPropertiesDefinition>? properties;

  /// The resource group
  final pulumi.Input<String> resourceGroupName;

  /// Subscription Id
  final pulumi.Input<String>? subscriptionId;

  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CustomApiArgs].
  /// [apiName] API name
  /// [location] Resource location
  /// [properties] Custom API properties
  /// [resourceGroupName] The resource group
  /// [subscriptionId] Subscription Id
  /// [tags] Resource tags
  CustomApiArgs({
    this.apiName,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.subscriptionId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiName': ?apiName,
      'location': ?location,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            CustomApiPropertiesDefinition,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'subscriptionId': ?subscriptionId,
      'tags': ?tags,
    };
  }

  factory CustomApiArgs.fromMap(Map<String, dynamic> map) {
    return CustomApiArgs(
      apiName: (() {
        final guardedValue = map['apiName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CustomApiPropertiesDefinition.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      subscriptionId: (() {
        final guardedValue = map['subscriptionId'];
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
