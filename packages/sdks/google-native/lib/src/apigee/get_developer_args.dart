// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_developer_args_doc}
/// Arguments for getDeveloper.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_developer_args_doc}
class GetDeveloperArgs {
  final pulumi.Input<String>? action;
  final pulumi.Input<String> developerId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetDeveloperArgs].
  /// [action] Optional.
  /// [developerId] Required.
  /// [organizationId] Required.
  const GetDeveloperArgs({
    this.action,
    required this.developerId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'developerId': developerId,
      'organizationId': organizationId,
    };
  }

  factory GetDeveloperArgs.fromMap(Map<String, dynamic> map) {
    return GetDeveloperArgs(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      developerId: pulumi.Input.fromValue(map['developerId'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
    );
  }
}
