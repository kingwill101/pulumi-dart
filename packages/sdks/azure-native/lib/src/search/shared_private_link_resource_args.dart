// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'shared_private_link_resource_properties.dart';

/// {@template pulumi_search_shared_private_link_resource_args_doc}
/// The set of arguments for SharedPrivateLinkResource.
/// {@endtemplate}
/// {@macro pulumi_search_shared_private_link_resource_args_doc}
class SharedPrivateLinkResourceArgs {
  /// Describes the properties of a shared private link resource managed by the Azure AI Search service.
  final pulumi.Input<SharedPrivateLinkResourceProperties?>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Azure AI Search service associated with the specified resource group.
  final pulumi.Input<String> searchServiceName;
  /// The name of the shared private link resource managed by the Azure AI Search service within the specified resource group.
  final pulumi.Input<String?>? sharedPrivateLinkResourceName;

  /// Creates a new [SharedPrivateLinkResourceArgs].
  /// [properties] Describes the properties of a shared private link resource managed by the Azure AI Search service.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [searchServiceName] The name of the Azure AI Search service associated with the specified resource group.
  /// [sharedPrivateLinkResourceName] The name of the shared private link resource managed by the Azure AI Search service within the specified resource group.
  const SharedPrivateLinkResourceArgs({
    this.properties,
    required this.resourceGroupName,
    required this.searchServiceName,
    this.sharedPrivateLinkResourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<SharedPrivateLinkResourceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'searchServiceName': searchServiceName,
      'sharedPrivateLinkResourceName': ?sharedPrivateLinkResourceName,
    };
  }

  factory SharedPrivateLinkResourceArgs.fromMap(Map<String, dynamic> map) {
    return SharedPrivateLinkResourceArgs(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SharedPrivateLinkResourceProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      searchServiceName: pulumi.Input.fromValue(map['searchServiceName'] as String),
      sharedPrivateLinkResourceName: (() { final guardedValue = map['sharedPrivateLinkResourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
