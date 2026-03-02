// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';
import 'identity.dart';
import 'plan.dart';
import 'sku.dart';

/// {@template pulumi_resources_resource_args_doc}
/// The set of arguments for Resource.
/// {@endtemplate}
/// {@macro pulumi_resources_resource_args_doc}
class ResourceArgs {
  /// The API version to use for the operation.
  final pulumi.Input<String> apiVersion;
  /// Resource extended location.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// The identity of the resource.
  final pulumi.Input<Identity>? identity;
  /// The kind of the resource.
  final pulumi.Input<String>? kind;
  /// Resource location
  final pulumi.Input<String>? location;
  /// ID of the resource that manages this resource.
  final pulumi.Input<String>? managedBy;
  /// The parent resource identity.
  final pulumi.Input<String> parentResourcePath;
  /// The plan of the resource.
  final pulumi.Input<Plan>? plan;
  /// The resource properties.
  final pulumi.Input<dynamic>? properties;
  /// The name of the resource group for the resource. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the resource to create.
  final pulumi.Input<String>? resourceName;
  /// The namespace of the resource provider.
  final pulumi.Input<String> resourceProviderNamespace;
  /// The resource type of the resource to create.
  final pulumi.Input<String> resourceType;
  /// The SKU of the resource.
  final pulumi.Input<Sku>? sku;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ResourceArgs].
  /// [apiVersion] The API version to use for the operation.
  /// [extendedLocation] Resource extended location.
  /// [identity] The identity of the resource.
  /// [kind] The kind of the resource.
  /// [location] Resource location
  /// [managedBy] ID of the resource that manages this resource.
  /// [parentResourcePath] The parent resource identity.
  /// [plan] The plan of the resource.
  /// [properties] The resource properties.
  /// [resourceGroupName] The name of the resource group for the resource. The name is case insensitive.
  /// [resourceName] The name of the resource to create.
  /// [resourceProviderNamespace] The namespace of the resource provider.
  /// [resourceType] The resource type of the resource to create.
  /// [sku] The SKU of the resource.
  /// [tags] Resource tags
  ResourceArgs({
    required this.apiVersion,
    this.extendedLocation,
    this.identity,
    this.kind,
    this.location,
    this.managedBy,
    required this.parentResourcePath,
    this.plan,
    this.properties,
    required this.resourceGroupName,
    this.resourceName,
    required this.resourceProviderNamespace,
    required this.resourceType,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': apiVersion,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': ?kind,
      'location': ?location,
      'managedBy': ?managedBy,
      'parentResourcePath': parentResourcePath,
      'plan': ?pulumi.Input.mapOptionalInputValue<Plan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'properties': ?properties,
      'resourceGroupName': resourceGroupName,
      'resourceName': ?resourceName,
      'resourceProviderNamespace': resourceProviderNamespace,
      'resourceType': resourceType,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ResourceArgs.fromMap(Map<String, dynamic> map) {
    return ResourceArgs(
      apiVersion: (map['apiVersion'] as String).input(),
      extendedLocation: map['extendedLocation'] == null ? null : (ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (Identity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      managedBy: map['managedBy'] == null ? null : (map['managedBy'] as String).input(),
      parentResourcePath: (map['parentResourcePath'] as String).input(),
      plan: map['plan'] == null ? null : (Plan.fromMap((map['plan'] as Map).cast<String, dynamic>())).input(),
      properties: map['properties'] == null ? null : (map['properties']).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: map['resourceName'] == null ? null : (map['resourceName'] as String).input(),
      resourceProviderNamespace: (map['resourceProviderNamespace'] as String).input(),
      resourceType: (map['resourceType'] as String).input(),
      sku: map['sku'] == null ? null : (Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

