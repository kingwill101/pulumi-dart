// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_monitor_group_member.dart';

/// {@template pulumi_index_load_balancer_monitor_group_load_balancer_monitor_group_args_doc}
/// The set of arguments for LoadBalancerMonitorGroup.
/// {@endtemplate}
/// {@macro pulumi_index_load_balancer_monitor_group_load_balancer_monitor_group_args_doc}
class LoadBalancerMonitorGroupArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// A short description of the monitor group
  final pulumi.Input<String> description;
  /// List of monitors in this group
  final pulumi.Input<List<LoadBalancerMonitorGroupMember>> members;

  /// Creates a new [LoadBalancerMonitorGroupArgs].
  /// [accountId] Identifier.
  /// [description] A short description of the monitor group
  /// [members] List of monitors in this group
  const LoadBalancerMonitorGroupArgs({
    required this.accountId,
    required this.description,
    required this.members,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'description': description,
      'members': pulumi.Input.mapInputValue<List<LoadBalancerMonitorGroupMember>, List<Map<String, dynamic>>>(members, (value) => pulumi.Input.encodeList<LoadBalancerMonitorGroupMember, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LoadBalancerMonitorGroupArgs.fromMap(Map<String, dynamic> map) {
    return LoadBalancerMonitorGroupArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      members: pulumi.Input.fromValue(pulumi.Input.decodeList<LoadBalancerMonitorGroupMember>(map['members']!, (value) => LoadBalancerMonitorGroupMember.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
