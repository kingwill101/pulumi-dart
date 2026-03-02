// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpcs_filter.dart';

/// {@template pulumi_index_get_vpcs_get_vpcs_args_doc}
/// Arguments for getVpcs.
/// {@endtemplate}
/// {@macro pulumi_index_get_vpcs_get_vpcs_args_doc}
class GetVpcsArgs {
  final pulumi.Input<List<GetVpcsFilter>>? filters;

  /// Creates a new [GetVpcsArgs].
  /// [filters] Optional.
  GetVpcsArgs({
    this.filters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetVpcsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetVpcsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVpcsArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcsArgs(
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<GetVpcsFilter>(map['filters'], (value) => GetVpcsFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

