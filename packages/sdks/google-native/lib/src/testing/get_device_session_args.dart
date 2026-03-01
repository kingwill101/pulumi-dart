// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_testing_v1_get_device_session_args_doc}
/// Arguments for getDeviceSession.
/// {@endtemplate}
/// {@macro pulumi_testing_v1_get_device_session_args_doc}
class GetDeviceSessionArgs {
  final pulumi.Input<String> deviceSessionId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDeviceSessionArgs].
  /// [deviceSessionId] Required.
  /// [project] Optional.
  GetDeviceSessionArgs({
    required pulumi.Output<String> deviceSessionId,
    pulumi.Output<String>? project,
  }) :
      deviceSessionId = pulumi.Input.asInput<String>(deviceSessionId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceSessionId': deviceSessionId,
      'project': ?project,
    };
  }

  factory GetDeviceSessionArgs.fromMap(Map<String, dynamic> map) {
    return GetDeviceSessionArgs(
      deviceSessionId: pulumi.Output.create<String>(map['deviceSessionId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

