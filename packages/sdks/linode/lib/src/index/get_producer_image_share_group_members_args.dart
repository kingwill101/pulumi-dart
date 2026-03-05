// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_producer_image_share_group_members_filter.dart';
import 'get_producer_image_share_group_members_member.dart';

/// {@template pulumi_index_get_producer_image_share_group_members_get_producer_image_share_group_members_args_doc}
/// Arguments for getProducerImageShareGroupMembers.
/// {@endtemplate}
/// {@macro pulumi_index_get_producer_image_share_group_members_get_producer_image_share_group_members_args_doc}
class GetProducerImageShareGroupMembersArgs {
  final pulumi.Input<List<GetProducerImageShareGroupMembersFilter>>? filters;
  final pulumi.Input<List<GetProducerImageShareGroupMembersMember>>? members;
  final pulumi.Input<String>? order;
  final pulumi.Input<String>? orderBy;
  /// The ID of the Image Share Group for which to list members.
  final pulumi.Input<int> sharegroupId;

  /// Creates a new [GetProducerImageShareGroupMembersArgs].
  /// [filters] Optional.
  /// [members] Optional.
  /// [order] Optional.
  /// [orderBy] Optional.
  /// [sharegroupId] The ID of the Image Share Group for which to list members.
  GetProducerImageShareGroupMembersArgs({
    this.filters,
    this.members,
    this.order,
    this.orderBy,
    required this.sharegroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetProducerImageShareGroupMembersFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetProducerImageShareGroupMembersFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'members': ?pulumi.Input.mapOptionalInputValue<List<GetProducerImageShareGroupMembersMember>, List<Map<String, dynamic>>>(members, (value) => pulumi.Input.encodeList<GetProducerImageShareGroupMembersMember, Map<String, dynamic>>(value, (value) => value.toMap())),
      'order': ?order,
      'orderBy': ?orderBy,
      'sharegroupId': sharegroupId,
    };
  }

  factory GetProducerImageShareGroupMembersArgs.fromMap(Map<String, dynamic> map) {
    return GetProducerImageShareGroupMembersArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetProducerImageShareGroupMembersFilter>(guardedValue, (value) => GetProducerImageShareGroupMembersFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      members: (() { final guardedValue = map['members']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetProducerImageShareGroupMembersMember>(guardedValue, (value) => GetProducerImageShareGroupMembersMember.fromMap((value as Map).cast<String, dynamic>()))); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharegroupId: pulumi.Input.fromValue(map['sharegroupId'] as int),
    );
  }
}

