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
    required pulumi.Output<String> appId,
    required pulumi.Output<String> developerId,
    pulumi.Output<String>? entity,
    required pulumi.Output<String> organizationId,
    pulumi.Output<String>? query,
  }) :
      appId = pulumi.Input.asInput<String>(appId),
      developerId = pulumi.Input.asInput<String>(developerId),
      entity = pulumi.Input.asOptionalInput<String>(entity),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      query = pulumi.Input.asOptionalInput<String>(query);

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
      appId: pulumi.Output.create<String>(map['appId'] as String),
      developerId: pulumi.Output.create<String>(map['developerId'] as String),
      entity: map['entity'] == null ? null : pulumi.Output.create<String>(map['entity'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
      query: map['query'] == null ? null : pulumi.Output.create<String>(map['query'] as String),
    );
  }
}

