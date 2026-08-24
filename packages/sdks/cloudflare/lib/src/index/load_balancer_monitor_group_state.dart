// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_monitor_group_member.dart';

/// Input properties used for looking up and filtering LoadBalancerMonitorGroup resources.
class LoadBalancerMonitorGroupState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// The timestamp of when the monitor group was created
  final pulumi.Input<String?>? createdOn;
  /// A short description of the monitor group
  final pulumi.Input<String?>? description;
  /// List of monitors in this group
  final pulumi.Input<List<LoadBalancerMonitorGroupMember>?>? members;
  /// The timestamp of when the monitor group was last updated
  final pulumi.Input<String?>? modifiedOn;

  /// Creates a new [LoadBalancerMonitorGroupState].
  /// [accountId] Identifier.
  /// [createdOn] The timestamp of when the monitor group was created
  /// [description] A short description of the monitor group
  /// [members] List of monitors in this group
  /// [modifiedOn] The timestamp of when the monitor group was last updated
  const LoadBalancerMonitorGroupState({
    this.accountId,
    this.createdOn,
    this.description,
    this.members,
    this.modifiedOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdOn': ?createdOn,
      'description': ?description,
      'members': ?pulumi.Input.mapOptionalInputValue<List<LoadBalancerMonitorGroupMember>, List<Map<String, dynamic>>>(members, (value) => pulumi.Input.encodeList<LoadBalancerMonitorGroupMember, Map<String, dynamic>>(value, (value) => value.toMap())),
      'modifiedOn': ?modifiedOn,
    };
  }

  factory LoadBalancerMonitorGroupState.fromMap(Map<String, dynamic> map) {
    return LoadBalancerMonitorGroupState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      members: (() { final guardedValue = map['members']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LoadBalancerMonitorGroupMember>(guardedValue, (value) => LoadBalancerMonitorGroupMember.fromMap((value as Map).cast<String, dynamic>()))); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
