// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appengine_v1_get_app_args_doc}
/// Arguments for getApp.
/// {@endtemplate}
/// {@macro pulumi_appengine_v1_get_app_args_doc}
class GetAppArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String>? includeExtraData;

  /// Creates a new [GetAppArgs].
  /// [appId] Required.
  /// [includeExtraData] Optional.
  GetAppArgs({required this.appId, this.includeExtraData});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'includeExtraData': ?includeExtraData,
    };
  }

  factory GetAppArgs.fromMap(Map<String, dynamic> map) {
    return GetAppArgs(
      appId: pulumi.Input.fromValue(map['appId'] as String),
      includeExtraData: (() {
        final guardedValue = map['includeExtraData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
