// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_producer_image_share_groups_filter.dart';
import 'get_producer_image_share_groups_image_share_group.dart';

/// {@template pulumi_index_get_producer_image_share_groups_get_producer_image_share_groups_args_doc}
/// Arguments for getProducerImageShareGroups.
/// {@endtemplate}
/// {@macro pulumi_index_get_producer_image_share_groups_get_producer_image_share_groups_args_doc}
class GetProducerImageShareGroupsArgs {
  final pulumi.Input<List<GetProducerImageShareGroupsFilter>>? filters;
  final pulumi.Input<List<GetProducerImageShareGroupsImageShareGroup>>?
  imageShareGroups;
  final pulumi.Input<String>? order;
  final pulumi.Input<String>? orderBy;

  /// Creates a new [GetProducerImageShareGroupsArgs].
  /// [filters] Optional.
  /// [imageShareGroups] Optional.
  /// [order] Optional.
  /// [orderBy] Optional.
  GetProducerImageShareGroupsArgs({
    this.filters,
    this.imageShareGroups,
    this.order,
    this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetProducerImageShareGroupsFilter>,
            List<Map<String, dynamic>>
          >(
            filters,
            (value) =>
                pulumi.Input.encodeList<
                  GetProducerImageShareGroupsFilter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'imageShareGroups':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetProducerImageShareGroupsImageShareGroup>,
            List<Map<String, dynamic>>
          >(
            imageShareGroups,
            (value) =>
                pulumi.Input.encodeList<
                  GetProducerImageShareGroupsImageShareGroup,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetProducerImageShareGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetProducerImageShareGroupsArgs(
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetProducerImageShareGroupsFilter>(
            guardedValue,
            (value) => GetProducerImageShareGroupsFilter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      imageShareGroups: (() {
        final guardedValue = map['imageShareGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetProducerImageShareGroupsImageShareGroup>(
            guardedValue,
            (value) => GetProducerImageShareGroupsImageShareGroup.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      order: (() {
        final guardedValue = map['order'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      orderBy: (() {
        final guardedValue = map['orderBy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
