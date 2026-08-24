// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancer_monitor_group_member.dart';

/// Result data returned by getLoadBalancerMonitorGroup.
class GetLoadBalancerMonitorGroupResult {
  /// Identifier.
  final String? accountId;
  /// The timestamp of when the monitor group was created
  final String? createdOn;
  /// A short description of the monitor group
  final String? description;
  /// The ID of this resource.
  final String? id;
  /// List of monitors in this group
  final List<GetLoadBalancerMonitorGroupMember>? members;
  /// The timestamp of when the monitor group was last updated
  final String? modifiedOn;
  final String? monitorGroupId;

  /// Creates a new [GetLoadBalancerMonitorGroupResult].
  /// [accountId] Identifier.
  /// [createdOn] The timestamp of when the monitor group was created
  /// [description] A short description of the monitor group
  /// [id] The ID of this resource.
  /// [members] List of monitors in this group
  /// [modifiedOn] The timestamp of when the monitor group was last updated
  /// [monitorGroupId] Optional.
  const GetLoadBalancerMonitorGroupResult({
    this.accountId,
    this.createdOn,
    this.description,
    this.id,
    this.members,
    this.modifiedOn,
    this.monitorGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdOn': ?createdOn,
      'description': ?description,
      'id': ?id,
      'members': ?(() { final guardedValue = members; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLoadBalancerMonitorGroupMember, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'modifiedOn': ?modifiedOn,
      'monitorGroupId': ?monitorGroupId,
    };
  }

  factory GetLoadBalancerMonitorGroupResult.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerMonitorGroupResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      members: (() { final guardedValue = map['members']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLoadBalancerMonitorGroupMember>(guardedValue, (value) => GetLoadBalancerMonitorGroupMember.fromMap((value as Map).cast<String, dynamic>())); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      monitorGroupId: (() { final guardedValue = map['monitorGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
