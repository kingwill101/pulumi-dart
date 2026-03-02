// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_developer_app_key_args_doc}
/// Arguments for getDeveloperAppKey.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_developer_app_key_args_doc}
class GetDeveloperAppKeyArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String> developerId;
  final pulumi.Input<String> keyId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetDeveloperAppKeyArgs].
  /// [appId] Required.
  /// [developerId] Required.
  /// [keyId] Required.
  /// [organizationId] Required.
  GetDeveloperAppKeyArgs({
    required this.appId,
    required this.developerId,
    required this.keyId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'developerId': developerId,
      'keyId': keyId,
      'organizationId': organizationId,
    };
  }

  factory GetDeveloperAppKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetDeveloperAppKeyArgs(
      appId: (map['appId'] as String).input(),
      developerId: (map['developerId'] as String).input(),
      keyId: (map['keyId'] as String).input(),
      organizationId: (map['organizationId'] as String).input(),
    );
  }
}

