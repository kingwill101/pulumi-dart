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
    required pulumi.Output<String> apiVersion,
    pulumi.Output<ExtendedLocation>? extendedLocation,
    pulumi.Output<Identity>? identity,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    pulumi.Output<String>? managedBy,
    required pulumi.Output<String> parentResourcePath,
    pulumi.Output<Plan>? plan,
    pulumi.Output<dynamic>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? resourceName,
    required pulumi.Output<String> resourceProviderNamespace,
    required pulumi.Output<String> resourceType,
    pulumi.Output<Sku>? sku,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      apiVersion = pulumi.Input.asInput<String>(apiVersion),
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation),
      identity = pulumi.Input.asOptionalInput<Identity>(identity),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedBy = pulumi.Input.asOptionalInput<String>(managedBy),
      parentResourcePath = pulumi.Input.asInput<String>(parentResourcePath),
      plan = pulumi.Input.asOptionalInput<Plan>(plan),
      properties = pulumi.Input.asOptionalInput<dynamic>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asOptionalInput<String>(resourceName),
      resourceProviderNamespace = pulumi.Input.asInput<String>(resourceProviderNamespace),
      resourceType = pulumi.Input.asInput<String>(resourceType),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      apiVersion: pulumi.Output.create<String>(map['apiVersion'] as String),
      extendedLocation: map['extendedLocation'] == null ? null : pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<Identity>(Identity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedBy: map['managedBy'] == null ? null : pulumi.Output.create<String>(map['managedBy'] as String),
      parentResourcePath: pulumi.Output.create<String>(map['parentResourcePath'] as String),
      plan: map['plan'] == null ? null : pulumi.Output.create<Plan>(Plan.fromMap((map['plan'] as Map).cast<String, dynamic>())),
      properties: map['properties'] == null ? null : pulumi.Output.create<dynamic>(map['properties']),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: map['resourceName'] == null ? null : pulumi.Output.create<String>(map['resourceName'] as String),
      resourceProviderNamespace: pulumi.Output.create<String>(map['resourceProviderNamespace'] as String),
      resourceType: pulumi.Output.create<String>(map['resourceType'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<Sku>(Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

