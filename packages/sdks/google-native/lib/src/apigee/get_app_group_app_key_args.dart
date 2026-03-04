// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_app_group_app_key_args_doc}
/// Arguments for getAppGroupAppKey.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_app_group_app_key_args_doc}
class GetAppGroupAppKeyArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String> appgroupId;
  final pulumi.Input<String> keyId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetAppGroupAppKeyArgs].
  /// [appId] Required.
  /// [appgroupId] Required.
  /// [keyId] Required.
  /// [organizationId] Required.
  GetAppGroupAppKeyArgs({
    required this.appId,
    required this.appgroupId,
    required this.keyId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'appgroupId': appgroupId,
      'keyId': keyId,
      'organizationId': organizationId,
    };
  }

  factory GetAppGroupAppKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetAppGroupAppKeyArgs(
      appId: pulumi.Input.fromValue(map['appId'] as String),
      appgroupId: pulumi.Input.fromValue(map['appgroupId'] as String),
      keyId: pulumi.Input.fromValue(map['keyId'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
    );
  }
}
