// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_api_args_doc}
/// Arguments for getApi.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_api_args_doc}
class GetApiArgs {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetApiArgs].
  /// [apiId] Required.
  /// [organizationId] Required.
  GetApiArgs({
    required this.apiId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'organizationId': organizationId,
    };
  }

  factory GetApiArgs.fromMap(Map<String, dynamic> map) {
    return GetApiArgs(
      apiId: (map['apiId'] as String).input(),
      organizationId: (map['organizationId'] as String).input(),
    );
  }
}

