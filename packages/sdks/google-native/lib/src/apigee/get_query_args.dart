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
  GetQueryArgs({
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
      environmentId: (map['environmentId'] as String).input(),
      organizationId: (map['organizationId'] as String).input(),
      queryId: (map['queryId'] as String).input(),
    );
  }
}

