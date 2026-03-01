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
  ApiReleaseArgs({
    required pulumi.Output<String> apiId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? notes,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      name = pulumi.Input.asOptionalInput<String>(name),
      notes = pulumi.Input.asOptionalInput<String>(notes);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'name': ?name,
      'notes': ?notes,
    };
  }

  factory ApiReleaseArgs.fromMap(Map<String, dynamic> map) {
    return ApiReleaseArgs(
      apiId: pulumi.Output.create<String>(map['apiId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notes: map['notes'] == null ? null : pulumi.Output.create<String>(map['notes'] as String),
    );
  }
}

