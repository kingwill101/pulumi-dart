// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancer_monitor_groups_result_member.dart';

class GetLoadBalancerMonitorGroupsResult {
  /// The timestamp of when the monitor group was created
  final pulumi.Input<String> createdOn;
  /// A short description of the monitor group
  final pulumi.Input<String> description;
  /// The ID of the Monitor Group to use for checking the health of origins within this pool.
  final pulumi.Input<String> id;
  /// List of monitors in this group
  final pulumi.Input<List<GetLoadBalancerMonitorGroupsResultMember>> members;
  /// The timestamp of when the monitor group was last updated
  final pulumi.Input<String> modifiedOn;

  /// Creates a new [GetLoadBalancerMonitorGroupsResult].
  /// [createdOn] The timestamp of when the monitor group was created
  /// [description] A short description of the monitor group
  /// [id] The ID of the Monitor Group to use for checking the health of origins within this pool.
  /// [members] List of monitors in this group
  /// [modifiedOn] The timestamp of when the monitor group was last updated
  const GetLoadBalancerMonitorGroupsResult({
    required this.createdOn,
    required this.description,
    required this.id,
    required this.members,
    required this.modifiedOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdOn': createdOn,
      'description': description,
      'id': id,
      'members': pulumi.Input.mapInputValue<List<GetLoadBalancerMonitorGroupsResultMember>, List<Map<String, dynamic>>>(members, (value) => pulumi.Input.encodeList<GetLoadBalancerMonitorGroupsResultMember, Map<String, dynamic>>(value, (value) => value.toMap())),
      'modifiedOn': modifiedOn,
    };
  }

  factory GetLoadBalancerMonitorGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerMonitorGroupsResult(
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      members: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLoadBalancerMonitorGroupsResultMember>(map['members']!, (value) => GetLoadBalancerMonitorGroupsResultMember.fromMap((value as Map).cast<String, dynamic>()))),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
    );
  }
}
