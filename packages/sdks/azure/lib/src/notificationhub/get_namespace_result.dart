// ignore_for_file: unused_element, unnecessary_cast

import 'get_namespace_sku.dart';

/// Result data returned by getNamespace.
class GetNamespaceResult {
  /// Is this Notification Hub Namespace enabled?
  final bool? enabled;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region in which this Notification Hub Namespace exists.
  final String? location;
  /// The name of the SKU to use for this Notification Hub Namespace. Possible values are `Free`, `Basic` or `Standard.`
  final String? name;
  /// The Type of Namespace, such as `Messaging` or `NotificationHub`.
  final String? namespaceType;
  final String? resourceGroupName;
  final String? servicebusEndpoint;
  /// A `sku` block as defined below.
  final GetNamespaceSku? sku;
  /// A mapping of tags to assign to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetNamespaceResult].
  /// [enabled] Is this Notification Hub Namespace enabled?
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region in which this Notification Hub Namespace exists.
  /// [name] The name of the SKU to use for this Notification Hub Namespace. Possible values are `Free`, `Basic` or `Standard.`
  /// [namespaceType] The Type of Namespace, such as `Messaging` or `NotificationHub`.
  /// [resourceGroupName] Optional.
  /// [servicebusEndpoint] Optional.
  /// [sku] A `sku` block as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  const GetNamespaceResult({
    this.enabled,
    this.id,
    this.location,
    this.name,
    this.namespaceType,
    this.resourceGroupName,
    this.servicebusEndpoint,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'namespaceType': ?namespaceType,
      'resourceGroupName': ?resourceGroupName,
      'servicebusEndpoint': ?servicebusEndpoint,
      'sku': ?sku?.toMap(),
      'tags': ?tags,
    };
  }

  factory GetNamespaceResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceResult(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namespaceType: (() { final guardedValue = map['namespaceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      servicebusEndpoint: (() { final guardedValue = map['servicebusEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return GetNamespaceSku.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
