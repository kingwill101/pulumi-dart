// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_query_args_doc}
/// Arguments for getQuery.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_query_args_doc}
class GetQueryArgs {
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> queryId;

  /// Creates a new [GetQueryArgs].
  /// [environmentId] Required.
  /// [organizationId] Required.
  /// [queryId] Required.
  const GetQueryArgs({
    required this.environmentId,
    required this.organizationId,
    required this.queryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
      'organizationId': organizationId,
      'queryId': queryId,
    };
  }

  factory GetQueryArgs.fromMap(Map<String, dynamic> map) {
    return GetQueryArgs(
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      queryId: pulumi.Input.fromValue(map['queryId'] as String),
    );
  }
}

