// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nb_types_filter.dart';

/// {@template pulumi_index_get_nb_types_get_nb_types_args_doc}
/// Arguments for getNbTypes.
/// {@endtemplate}
/// {@macro pulumi_index_get_nb_types_get_nb_types_args_doc}
class GetNbTypesArgs {
  final pulumi.Input<List<GetNbTypesFilter>>? filters;
  final pulumi.Input<String>? order;
  final pulumi.Input<String>? orderBy;

  /// Creates a new [GetNbTypesArgs].
  /// [filters] Optional.
  /// [order] Optional.
  /// [orderBy] Optional.
  GetNbTypesArgs({this.filters, this.order, this.orderBy});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetNbTypesFilter>,
            List<Map<String, dynamic>>
          >(
            filters,
            (value) =>
                pulumi.Input.encodeList<GetNbTypesFilter, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetNbTypesArgs.fromMap(Map<String, dynamic> map) {
    return GetNbTypesArgs(
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetNbTypesFilter>(
            guardedValue,
            (value) => GetNbTypesFilter.fromMap(
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
