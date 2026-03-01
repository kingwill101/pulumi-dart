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
  GetDeveloperArgs({
    pulumi.Output<String>? action,
    required pulumi.Output<String> developerId,
    required pulumi.Output<String> organizationId,
  }) :
      action = pulumi.Input.asOptionalInput<String>(action),
      developerId = pulumi.Input.asInput<String>(developerId),
      organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'developerId': developerId,
      'organizationId': organizationId,
    };
  }

  factory GetDeveloperArgs.fromMap(Map<String, dynamic> map) {
    return GetDeveloperArgs(
      action: map['action'] == null ? null : pulumi.Output.create<String>(map['action'] as String),
      developerId: pulumi.Output.create<String>(map['developerId'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
    );
  }
}

