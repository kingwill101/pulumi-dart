// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_producer_image_share_group_members_filter.dart';
import 'get_producer_image_share_group_members_member.dart';

/// Result data returned by getProducerImageShareGroupMembers.
class GetProducerImageShareGroupMembersResult {
  final List<GetProducerImageShareGroupMembersFilter>? filters;
  final String id;
  final List<GetProducerImageShareGroupMembersMember>? members;
  final String? order;
  final String? orderBy;
  final int sharegroupId;

  /// Creates a new [GetProducerImageShareGroupMembersResult].
  /// [filters] Optional.
  /// [id] Required.
  /// [members] Optional.
  /// [order] Optional.
  /// [orderBy] Optional.
  /// [sharegroupId] Required.
  GetProducerImageShareGroupMembersResult({
    this.filters,
    required this.id,
    this.members,
    this.order,
    this.orderBy,
    required this.sharegroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetProducerImageShareGroupMembersFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'members': ?members == null ? null : pulumi.Input.encodeList<GetProducerImageShareGroupMembersMember, Map<String, dynamic>>(members!, (value) => value.toMap()),
      'order': ?order,
      'orderBy': ?orderBy,
      'sharegroupId': sharegroupId,
    };
  }

  factory GetProducerImageShareGroupMembersResult.fromMap(Map<String, dynamic> map) {
    return GetProducerImageShareGroupMembersResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetProducerImageShareGroupMembersFilter>(map['filters']!, (value) => GetProducerImageShareGroupMembersFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      members: map['members'] == null ? null : pulumi.Input.decodeList<GetProducerImageShareGroupMembersMember>(map['members']!, (value) => GetProducerImageShareGroupMembersMember.fromMap((value as Map).cast<String, dynamic>())),
      order: map['order'] == null ? null : map['order']! as String,
      orderBy: map['orderBy'] == null ? null : map['orderBy']! as String,
      sharegroupId: map['sharegroupId'] as int,
    );
  }
}

