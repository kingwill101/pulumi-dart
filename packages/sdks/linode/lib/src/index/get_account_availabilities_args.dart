// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_availabilities_filter.dart';

/// {@template pulumi_index_get_account_availabilities_get_account_availabilities_args_doc}
/// Arguments for getAccountAvailabilities.
/// {@endtemplate}
/// {@macro pulumi_index_get_account_availabilities_get_account_availabilities_args_doc}
class GetAccountAvailabilitiesArgs {
  final pulumi.Input<List<GetAccountAvailabilitiesFilter>>? filters;

  /// Creates a new [GetAccountAvailabilitiesArgs].
  /// [filters] Optional.
  GetAccountAvailabilitiesArgs({
    this.filters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetAccountAvailabilitiesFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetAccountAvailabilitiesFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAccountAvailabilitiesArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountAvailabilitiesArgs(
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<GetAccountAvailabilitiesFilter>(map['filters']!, (value) => GetAccountAvailabilitiesFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

