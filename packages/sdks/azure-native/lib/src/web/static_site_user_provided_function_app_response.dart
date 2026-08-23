// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A static site user provided function.
class StaticSiteUserProvidedFunctionAppResponse {
  /// The date and time on which the function app was registered with the static site.
  final pulumi.Input<String> createdOn;
  /// The region of the function app registered with the static site
  final pulumi.Input<String>? functionAppRegion;
  /// The resource id of the function app registered with the static site
  final pulumi.Input<String>? functionAppResourceId;
  /// Resource Id.
  final pulumi.Input<String> id;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Resource Name.
  final pulumi.Input<String> name;
  /// Resource type.
  final pulumi.Input<String> type;

  /// Creates a new [StaticSiteUserProvidedFunctionAppResponse].
  /// [createdOn] The date and time on which the function app was registered with the static site.
  /// [functionAppRegion] The region of the function app registered with the static site
  /// [functionAppResourceId] The resource id of the function app registered with the static site
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [type] Resource type.
  const StaticSiteUserProvidedFunctionAppResponse({
    required this.createdOn,
    this.functionAppRegion,
    this.functionAppResourceId,
    required this.id,
    this.kind,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdOn': createdOn,
      'functionAppRegion': ?functionAppRegion,
      'functionAppResourceId': ?functionAppResourceId,
      'id': id,
      'kind': ?kind,
      'name': name,
      'type': type,
    };
  }

  factory StaticSiteUserProvidedFunctionAppResponse.fromMap(Map<String, dynamic> map) {
    return StaticSiteUserProvidedFunctionAppResponse(
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      functionAppRegion: (() { final guardedValue = map['functionAppRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      functionAppResourceId: (() { final guardedValue = map['functionAppResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
