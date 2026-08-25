// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_discoveryengine_get_search_engine_iam_policy_get_search_engine_iam_policy_args_doc}
/// Arguments for getSearchEngineIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_get_search_engine_iam_policy_get_search_engine_iam_policy_args_doc}
class GetSearchEngineIamPolicyArgs {
  /// The collection ID.
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> collectionId;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> engineId;
  /// Location.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String?>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [GetSearchEngineIamPolicyArgs].
  /// [collectionId] The collection ID.
  /// [engineId] Used to find the parent resource to bind the IAM policy to
  /// [location] Location.
  /// [project] The ID of the project in which the resource belongs.
  const GetSearchEngineIamPolicyArgs({
    required this.collectionId,
    required this.engineId,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionId': collectionId,
      'engineId': engineId,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetSearchEngineIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSearchEngineIamPolicyArgs(
      collectionId: pulumi.Input.fromValue(map['collectionId'] as String),
      engineId: pulumi.Input.fromValue(map['engineId'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
