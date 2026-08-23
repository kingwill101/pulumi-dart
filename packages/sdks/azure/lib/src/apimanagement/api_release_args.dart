// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_api_release_api_release_args_doc}
/// The set of arguments for ApiRelease.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_api_release_api_release_args_doc}
class ApiReleaseArgs {
  /// The ID of the API Management API. Changing this forces a new API Management API Release to be created.
  final pulumi.Input<String> apiId;
  /// The name which should be used for this API Management API Release. Changing this forces a new API Management API Release to be created.
  final pulumi.Input<String>? name;
  /// The Release Notes.
  final pulumi.Input<String>? notes;

  /// Creates a new [ApiReleaseArgs].
  /// [apiId] The ID of the API Management API. Changing this forces a new API Management API Release to be created.
  /// [name] The name which should be used for this API Management API Release. Changing this forces a new API Management API Release to be created.
  /// [notes] The Release Notes.
  const ApiReleaseArgs({
    required this.apiId,
    this.name,
    this.notes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'name': ?name,
      'notes': ?notes,
    };
  }

  factory ApiReleaseArgs.fromMap(Map<String, dynamic> map) {
    return ApiReleaseArgs(
      apiId: pulumi.Input.fromValue(map['apiId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notes: (() { final guardedValue = map['notes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
