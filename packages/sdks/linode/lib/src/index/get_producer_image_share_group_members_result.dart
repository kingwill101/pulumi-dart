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
  const GetProducerImageShareGroupMembersResult({
    this.filters,
    required this.id,
    this.members,
    this.order,
    this.orderBy,
    required this.sharegroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetProducerImageShareGroupMembersFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'members': ?(() { final guardedValue = members; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetProducerImageShareGroupMembersMember, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'order': ?order,
      'orderBy': ?orderBy,
      'sharegroupId': sharegroupId,
    };
  }

  factory GetProducerImageShareGroupMembersResult.fromMap(Map<String, dynamic> map) {
    return GetProducerImageShareGroupMembersResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetProducerImageShareGroupMembersFilter>(guardedValue, (value) => GetProducerImageShareGroupMembersFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      members: (() { final guardedValue = map['members']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetProducerImageShareGroupMembersMember>(guardedValue, (value) => GetProducerImageShareGroupMembersMember.fromMap((value as Map).cast<String, dynamic>())); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sharegroupId: map['sharegroupId'] as int,
    );
  }
}

