// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_developer_app_args_doc}
/// Arguments for getDeveloperApp.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_developer_app_args_doc}
class GetDeveloperAppArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String> developerId;
  final pulumi.Input<String>? entity;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String>? query;

  /// Creates a new [GetDeveloperAppArgs].
  /// [appId] Required.
  /// [developerId] Required.
  /// [entity] Optional.
  /// [organizationId] Required.
  /// [query] Optional.
  GetDeveloperAppArgs({
    required this.appId,
    required this.developerId,
    this.entity,
    required this.organizationId,
    this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'developerId': developerId,
      'entity': ?entity,
      'organizationId': organizationId,
      'query': ?query,
    };
  }

  factory GetDeveloperAppArgs.fromMap(Map<String, dynamic> map) {
    return GetDeveloperAppArgs(
      appId: (map['appId'] as String).input(),
      developerId: (map['developerId'] as String).input(),
      entity: map['entity'] == null ? null : (map['entity'] as String).input(),
      organizationId: (map['organizationId'] as String).input(),
      query: map['query'] == null ? null : (map['query'] as String).input(),
    );
  }
}

