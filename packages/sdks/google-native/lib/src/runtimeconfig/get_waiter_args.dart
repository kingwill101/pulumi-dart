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
      configId: (map['configId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      waiterId: (map['waiterId'] as String).input(),
    );
  }
}

