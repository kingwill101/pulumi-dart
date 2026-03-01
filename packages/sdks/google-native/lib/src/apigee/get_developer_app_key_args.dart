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
    required pulumi.Output<String> appId,
    required pulumi.Output<String> developerId,
    required pulumi.Output<String> keyId,
    required pulumi.Output<String> organizationId,
  }) :
      appId = pulumi.Input.asInput<String>(appId),
      developerId = pulumi.Input.asInput<String>(developerId),
      keyId = pulumi.Input.asInput<String>(keyId),
      organizationId = pulumi.Input.asInput<String>(organizationId);

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
      appId: pulumi.Output.create<String>(map['appId'] as String),
      developerId: pulumi.Output.create<String>(map['developerId'] as String),
      keyId: pulumi.Output.create<String>(map['keyId'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
    );
  }
}

