// ignore_for_file: unused_element, unnecessary_cast

import 'extended_location_response.dart';
import 'identity_response.dart';
import 'plan_response.dart';
import 'sku_response.dart';

/// Result data returned by getResource.
class GetResourceResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Resource extended location.
  final ExtendedLocationResponse? extendedLocation;
  /// Resource ID
  final String? id;
  /// The identity of the resource.
  final IdentityResponse? identity;
  /// The kind of the resource.
  final String? kind;
  /// Resource location
  final String? location;
  /// ID of the resource that manages this resource.
  final String? managedBy;
  /// Resource name
  final String? name;
  /// The plan of the resource.
  final PlanResponse? plan;
  /// The resource properties.
  final dynamic properties;
  /// The SKU of the resource.
  final SkuResponse? sku;
  /// Resource tags
  final Map<String, String>? tags;
  /// Resource type
  final String? type;

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
  const GetResourceResult({
    this.azureApiVersion,
    this.extendedLocation,
    this.id,
    this.identity,
    this.kind,
    this.location,
    this.managedBy,
    this.name,
    this.plan,
    this.properties,
    this.sku,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'extendedLocation': ?extendedLocation?.toMap(),
      'id': ?id,
      'identity': ?identity?.toMap(),
      'kind': ?kind,
      'location': ?location,
      'managedBy': ?managedBy,
      'name': ?name,
      'plan': ?plan?.toMap(),
      'properties': ?properties,
      'sku': ?sku?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetResourceResult.fromMap(Map<String, dynamic> map) {
    return GetResourceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedBy: (() { final guardedValue = map['managedBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return PlanResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return guardedValue; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
