// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_runtimeconfig_v1beta1_get_waiter_args_doc}
/// Arguments for getWaiter.
/// {@endtemplate}
/// {@macro pulumi_runtimeconfig_v1beta1_get_waiter_args_doc}
class GetWaiterArgs {
  final pulumi.Input<String> configId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> waiterId;

  /// Creates a new [GetWaiterArgs].
  /// [configId] Required.
  /// [project] Optional.
  /// [waiterId] Required.
  GetWaiterArgs({
    required this.configId,
    this.project,
    required this.waiterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': configId,
      'project': ?project,
      'waiterId': waiterId,
    };
  }

  factory GetWaiterArgs.fromMap(Map<String, dynamic> map) {
    return GetWaiterArgs(
      configId: pulumi.Input.fromValue(map['configId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      waiterId: pulumi.Input.fromValue(map['waiterId'] as String),
    );
  }
}

