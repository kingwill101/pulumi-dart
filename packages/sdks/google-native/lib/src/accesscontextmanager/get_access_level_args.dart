// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_accesscontextmanager_v1_get_access_level_args_doc}
/// Arguments for getAccessLevel.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_v1_get_access_level_args_doc}
class GetAccessLevelArgs {
  final pulumi.Input<String>? accessLevelFormat;
  final pulumi.Input<String> accessLevelId;
  final pulumi.Input<String> accessPolicyId;

  /// Creates a new [GetAccessLevelArgs].
  /// [accessLevelFormat] Optional.
  /// [accessLevelId] Required.
  /// [accessPolicyId] Required.
  GetAccessLevelArgs({
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

  factory GetAccessLevelArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessLevelArgs(
      accessLevelFormat: (() { final guardedValue = map['accessLevelFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accessLevelId: pulumi.Input.fromValue(map['accessLevelId'] as String),
      accessPolicyId: pulumi.Input.fromValue(map['accessPolicyId'] as String),
    );
  }
}

