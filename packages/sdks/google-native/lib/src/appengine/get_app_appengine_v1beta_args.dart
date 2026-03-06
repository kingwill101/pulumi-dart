// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appengine_v1beta_get_app_appengine_v1beta_args_doc}
/// Arguments for getApp.
/// {@endtemplate}
/// {@macro pulumi_appengine_v1beta_get_app_appengine_v1beta_args_doc}
class GetAppAppengineV1betaArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String>? includeExtraData;

  /// Creates a new [GetAppAppengineV1betaArgs].
  /// [appId] Required.
  /// [includeExtraData] Optional.
  const GetAppAppengineV1betaArgs({
    required this.appId,
    this.includeExtraData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'includeExtraData': ?includeExtraData,
    };
  }

  factory GetAppAppengineV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetAppAppengineV1betaArgs(
      appId: pulumi.Input.fromValue(map['appId'] as String),
      includeExtraData: (() { final guardedValue = map['includeExtraData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

