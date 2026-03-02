// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_app_group_app_args_doc}
/// Arguments for getAppGroupApp.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_app_group_app_args_doc}
class GetAppGroupAppArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String> appgroupId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetAppGroupAppArgs].
  /// [appId] Required.
  /// [appgroupId] Required.
  /// [organizationId] Required.
  GetAppGroupAppArgs({
    required this.appId,
    required this.appgroupId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'appgroupId': appgroupId,
      'organizationId': organizationId,
    };
  }

  factory GetAppGroupAppArgs.fromMap(Map<String, dynamic> map) {
    return GetAppGroupAppArgs(
      appId: (map['appId'] as String).input(),
      appgroupId: (map['appgroupId'] as String).input(),
      organizationId: (map['organizationId'] as String).input(),
    );
  }
}

