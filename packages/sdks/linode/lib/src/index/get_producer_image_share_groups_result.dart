// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_producer_image_share_groups_filter.dart';
import 'get_producer_image_share_groups_image_share_group.dart';

/// Result data returned by getProducerImageShareGroups.
class GetProducerImageShareGroupsResult {
  final List<GetProducerImageShareGroupsFilter>? filters;
  /// The ID of the Image Share Group.
  final String id;
  final List<GetProducerImageShareGroupsImageShareGroup>? imageShareGroups;
  final String? order;
  final String? orderBy;

  /// Creates a new [GetProducerImageShareGroupsResult].
  /// [filters] Optional.
  /// [id] The ID of the Image Share Group.
  /// [imageShareGroups] Optional.
  /// [order] Optional.
  /// [orderBy] Optional.
  GetProducerImageShareGroupsResult({
    this.filters,
    required this.id,
    this.imageShareGroups,
    this.order,
    this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetProducerImageShareGroupsFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'imageShareGroups': ?imageShareGroups == null ? null : pulumi.Input.encodeList<GetProducerImageShareGroupsImageShareGroup, Map<String, dynamic>>(imageShareGroups!, (value) => value.toMap()),
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetProducerImageShareGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetProducerImageShareGroupsResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetProducerImageShareGroupsFilter>(map['filters']!, (value) => GetProducerImageShareGroupsFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      imageShareGroups: map['imageShareGroups'] == null ? null : pulumi.Input.decodeList<GetProducerImageShareGroupsImageShareGroup>(map['imageShareGroups']!, (value) => GetProducerImageShareGroupsImageShareGroup.fromMap((value as Map).cast<String, dynamic>())),
      order: map['order'] == null ? null : map['order']! as String,
      orderBy: map['orderBy'] == null ? null : map['orderBy']! as String,
    );
  }
}

