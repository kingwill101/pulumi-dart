// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_accesscontextmanager_v1beta_get_access_level_accesscontextmanager_v1beta_args_doc}
/// Arguments for getAccessLevel.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_v1beta_get_access_level_accesscontextmanager_v1beta_args_doc}
class GetAccessLevelAccesscontextmanagerV1betaArgs {
  final pulumi.Input<String>? accessLevelFormat;
  final pulumi.Input<String> accessLevelId;
  final pulumi.Input<String> accessPolicyId;

  /// Creates a new [GetAccessLevelAccesscontextmanagerV1betaArgs].
  /// [accessLevelFormat] Optional.
  /// [accessLevelId] Required.
  /// [accessPolicyId] Required.
  GetAccessLevelAccesscontextmanagerV1betaArgs({
    this.accessLevelFormat,
    required this.accessLevelId,
    required this.accessPolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLevelFormat': ?accessLevelFormat,
      'accessLevelId': accessLevelId,
      'accessPolicyId': accessPolicyId,
    };
  }

  factory GetAccessLevelAccesscontextmanagerV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessLevelAccesscontextmanagerV1betaArgs(
      accessLevelFormat: (() { final guardedValue = map['accessLevelFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accessLevelId: pulumi.Input.fromValue(map['accessLevelId'] as String),
      accessPolicyId: pulumi.Input.fromValue(map['accessPolicyId'] as String),
    );
  }
}

