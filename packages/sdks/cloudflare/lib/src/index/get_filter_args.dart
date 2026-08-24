// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_filter_filter.dart';

/// {@template pulumi_index_get_filter_get_filter_args_doc}
/// Arguments for getFilter.
/// {@endtemplate}
/// {@macro pulumi_index_get_filter_get_filter_args_doc}
class GetFilterArgs {
  final pulumi.Input<GetFilterFilter?>? filter;
  /// The unique identifier of the filter.
  final pulumi.Input<String?>? filterId;
  /// Defines an identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetFilterArgs].
  /// [filter] Optional.
  /// [filterId] The unique identifier of the filter.
  /// [zoneId] Defines an identifier.
  const GetFilterArgs({
    this.filter,
    this.filterId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?pulumi.Input.mapOptionalInputValue<GetFilterFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'filterId': ?filterId,
      'zoneId': ?zoneId,
    };
  }

  factory GetFilterArgs.fromMap(Map<String, dynamic> map) {
    return GetFilterArgs(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetFilterFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      filterId: (() { final guardedValue = map['filterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
