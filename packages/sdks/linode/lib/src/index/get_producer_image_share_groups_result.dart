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
  const GetProducerImageShareGroupsResult({
    this.filters,
    required this.id,
    this.imageShareGroups,
    this.order,
    this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetProducerImageShareGroupsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'imageShareGroups': ?(() { final guardedValue = imageShareGroups; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetProducerImageShareGroupsImageShareGroup, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetProducerImageShareGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetProducerImageShareGroupsResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetProducerImageShareGroupsFilter>(guardedValue, (value) => GetProducerImageShareGroupsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      imageShareGroups: (() { final guardedValue = map['imageShareGroups']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetProducerImageShareGroupsImageShareGroup>(guardedValue, (value) => GetProducerImageShareGroupsImageShareGroup.fromMap((value as Map).cast<String, dynamic>())); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

