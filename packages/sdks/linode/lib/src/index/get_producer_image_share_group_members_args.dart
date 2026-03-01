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
    pulumi.Output<List<GetProducerImageShareGroupMembersFilter>>? filters,
    pulumi.Output<List<GetProducerImageShareGroupMembersMember>>? members,
    pulumi.Output<String>? order,
    pulumi.Output<String>? orderBy,
    required pulumi.Output<int> sharegroupId,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetProducerImageShareGroupMembersFilter>>(filters),
      members = pulumi.Input.asOptionalInput<List<GetProducerImageShareGroupMembersMember>>(members),
      order = pulumi.Input.asOptionalInput<String>(order),
      orderBy = pulumi.Input.asOptionalInput<String>(orderBy),
      sharegroupId = pulumi.Input.asInput<int>(sharegroupId);

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
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetProducerImageShareGroupMembersFilter>>(pulumi.Input.decodeList<GetProducerImageShareGroupMembersFilter>(map['filters'], (value) => GetProducerImageShareGroupMembersFilter.fromMap((value as Map).cast<String, dynamic>()))),
      members: map['members'] == null ? null : pulumi.Output.create<List<GetProducerImageShareGroupMembersMember>>(pulumi.Input.decodeList<GetProducerImageShareGroupMembersMember>(map['members'], (value) => GetProducerImageShareGroupMembersMember.fromMap((value as Map).cast<String, dynamic>()))),
      order: map['order'] == null ? null : pulumi.Output.create<String>(map['order'] as String),
      orderBy: map['orderBy'] == null ? null : pulumi.Output.create<String>(map['orderBy'] as String),
      sharegroupId: pulumi.Output.create<int>(map['sharegroupId'] as int),
    );
  }
}

