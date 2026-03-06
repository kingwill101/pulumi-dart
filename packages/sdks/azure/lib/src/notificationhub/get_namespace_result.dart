// ignore_for_file: unused_element, unnecessary_cast

import 'get_namespace_sku.dart';

/// Result data returned by getNamespace.
class GetNamespaceResult {
  /// Is this Notification Hub Namespace enabled?
  final bool enabled;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure Region in which this Notification Hub Namespace exists.
  final String location;
  /// The name of the SKU to use for this Notification Hub Namespace. Possible values are `Free`, `Basic` or `Standard.`
  final String name;
  /// The Type of Namespace, such as `Messaging` or `NotificationHub`.
  final String namespaceType;
  final String resourceGroupName;
  final String servicebusEndpoint;
  /// A `sku` block as defined below.
  final GetNamespaceSku sku;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;

  /// Creates a new [GetNamespaceResult].
  /// [enabled] Is this Notification Hub Namespace enabled?
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region in which this Notification Hub Namespace exists.
  /// [name] The name of the SKU to use for this Notification Hub Namespace. Possible values are `Free`, `Basic` or `Standard.`
  /// [namespaceType] The Type of Namespace, such as `Messaging` or `NotificationHub`.
  /// [resourceGroupName] Required.
  /// [servicebusEndpoint] Required.
  /// [sku] A `sku` block as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  const GetNamespaceResult({
    required this.enabled,
    required this.id,
    required this.location,
    required this.name,
    required this.namespaceType,
    required this.resourceGroupName,
    required this.servicebusEndpoint,
    required this.sku,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'id': id,
      'location': location,
      'name': name,
      'namespaceType': namespaceType,
      'resourceGroupName': resourceGroupName,
      'servicebusEndpoint': servicebusEndpoint,
      'sku': sku.toMap(),
      'tags': tags,
    };
  }

  factory GetNamespaceResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceResult(
      enabled: map['enabled'] as bool,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      namespaceType: map['namespaceType'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      servicebusEndpoint: map['servicebusEndpoint'] as String,
      sku: GetNamespaceSku.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

