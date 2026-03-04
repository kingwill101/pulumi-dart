// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_volume_types_filter.dart';

/// {@template pulumi_index_get_volume_types_get_volume_types_args_doc}
/// Arguments for getVolumeTypes.
/// {@endtemplate}
/// {@macro pulumi_index_get_volume_types_get_volume_types_args_doc}
class GetVolumeTypesArgs {
  final pulumi.Input<List<GetVolumeTypesFilter>>? filters;

  /// The order in which results should be returned. (`asc`, `desc`; default `asc`)
  final pulumi.Input<String>? order;

  /// The attribute to order the results by. See the Filterable Fields section for a list of valid fields.
  final pulumi.Input<String>? orderBy;

  /// Creates a new [GetVolumeTypesArgs].
  /// [filters] Optional.
  /// [order] The order in which results should be returned. (`asc`, `desc`; default `asc`)
  /// [orderBy] The attribute to order the results by. See the Filterable Fields section for a list of valid fields.
  GetVolumeTypesArgs({this.filters, this.order, this.orderBy});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetVolumeTypesFilter>,
            List<Map<String, dynamic>>
          >(
            filters,
            (value) =>
                pulumi.Input.encodeList<
                  GetVolumeTypesFilter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetVolumeTypesArgs.fromMap(Map<String, dynamic> map) {
    return GetVolumeTypesArgs(
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetVolumeTypesFilter>(
            guardedValue,
            (value) => GetVolumeTypesFilter.fromMap(
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
