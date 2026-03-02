// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApiRelease resources.
class ApiReleaseState {
  /// The ID of the API Management API. Changing this forces a new API Management API Release to be created.
  final pulumi.Input<String>? apiId;
  /// The name which should be used for this API Management API Release. Changing this forces a new API Management API Release to be created.
  final pulumi.Input<String>? name;
  /// The Release Notes.
  final pulumi.Input<String>? notes;

  /// Creates a new [ApiReleaseState].
  /// [apiId] The ID of the API Management API. Changing this forces a new API Management API Release to be created.
  /// [name] The name which should be used for this API Management API Release. Changing this forces a new API Management API Release to be created.
  /// [notes] The Release Notes.
  ApiReleaseState({
    this.apiId,
    this.name,
    this.notes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': ?apiId,
      'name': ?name,
      'notes': ?notes,
    };
  }

  factory ApiReleaseState.fromMap(Map<String, dynamic> map) {
    return ApiReleaseState(
      apiId: map['apiId'] == null ? null : (map['apiId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      notes: map['notes'] == null ? null : (map['notes']! as String).input(),
    );
  }
}

