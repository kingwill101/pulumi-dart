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
    pulumi.Output<String>? accessLevelFormat,
    required pulumi.Output<String> accessLevelId,
    required pulumi.Output<String> accessPolicyId,
  }) :
      accessLevelFormat = pulumi.Input.asOptionalInput<String>(accessLevelFormat),
      accessLevelId = pulumi.Input.asInput<String>(accessLevelId),
      accessPolicyId = pulumi.Input.asInput<String>(accessPolicyId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLevelFormat': ?accessLevelFormat,
      'accessLevelId': accessLevelId,
      'accessPolicyId': accessPolicyId,
    };
  }

  factory GetAccessLevelArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessLevelArgs(
      accessLevelFormat: map['accessLevelFormat'] == null ? null : pulumi.Output.create<String>(map['accessLevelFormat'] as String),
      accessLevelId: pulumi.Output.create<String>(map['accessLevelId'] as String),
      accessPolicyId: pulumi.Output.create<String>(map['accessPolicyId'] as String),
    );
  }
}

