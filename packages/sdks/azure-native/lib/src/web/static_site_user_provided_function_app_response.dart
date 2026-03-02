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
  StaticSiteUserProvidedFunctionAppResponse({
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
      createdOn: (map['createdOn'] as String).input(),
      functionAppRegion: map['functionAppRegion'] == null ? null : (map['functionAppRegion'] as String).input(),
      functionAppResourceId: map['functionAppResourceId'] == null ? null : (map['functionAppResourceId'] as String).input(),
      id: (map['id'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      name: (map['name'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

