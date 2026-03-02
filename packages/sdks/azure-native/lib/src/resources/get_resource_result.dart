// ignore_for_file: unused_element, unnecessary_cast

import 'extended_location_response.dart';
import 'identity_response.dart';
import 'plan_response.dart';
import 'sku_response.dart';

/// Result data returned by getResource.
class GetResourceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource extended location.
  final ExtendedLocationResponse? extendedLocation;
  /// Resource ID
  final String id;
  /// The identity of the resource.
  final IdentityResponse? identity;
  /// The kind of the resource.
  final String? kind;
  /// Resource location
  final String? location;
  /// ID of the resource that manages this resource.
  final String? managedBy;
  /// Resource name
  final String name;
  /// The plan of the resource.
  final PlanResponse? plan;
  /// The resource properties.
  final dynamic properties;
  /// The SKU of the resource.
  final SkuResponse? sku;
  /// Resource tags
  final Map<String, String>? tags;
  /// Resource type
  final String type;

  /// Creates a new [GetResourceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [extendedLocation] Resource extended location.
  /// [id] Resource ID
  /// [identity] The identity of the resource.
  /// [kind] The kind of the resource.
  /// [location] Resource location
  /// [managedBy] ID of the resource that manages this resource.
  /// [name] Resource name
  /// [plan] The plan of the resource.
  /// [properties] The resource properties.
  /// [sku] The SKU of the resource.
  /// [tags] Resource tags
  /// [type] Resource type
  GetResourceResult({
    required this.azureApiVersion,
    this.extendedLocation,
    required this.id,
    this.identity,
    this.kind,
    this.location,
    this.managedBy,
    required this.name,
    this.plan,
    required this.properties,
    this.sku,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'extendedLocation': ?extendedLocation == null ? null : extendedLocation!.toMap(),
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'kind': ?kind,
      'location': ?location,
      'managedBy': ?managedBy,
      'name': name,
      'plan': ?plan == null ? null : plan!.toMap(),
      'properties': properties,
      'sku': ?sku == null ? null : sku!.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetResourceResult.fromMap(Map<String, dynamic> map) {
    return GetResourceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocationResponse.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      identity: map['identity'] == null ? null : IdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      kind: map['kind'] == null ? null : map['kind']! as String,
      location: map['location'] == null ? null : map['location']! as String,
      managedBy: map['managedBy'] == null ? null : map['managedBy']! as String,
      name: map['name'] as String,
      plan: map['plan'] == null ? null : PlanResponse.fromMap((map['plan']! as Map).cast<String, dynamic>()),
      properties: map['properties'],
      sku: map['sku'] == null ? null : SkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

