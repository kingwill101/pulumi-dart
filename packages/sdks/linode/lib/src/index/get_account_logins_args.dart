// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_logins_filter.dart';

/// {@template pulumi_index_get_account_logins_get_account_logins_args_doc}
/// Arguments for getAccountLogins.
/// {@endtemplate}
/// {@macro pulumi_index_get_account_logins_get_account_logins_args_doc}
class GetAccountLoginsArgs {
  final pulumi.Input<List<GetAccountLoginsFilter>>? filters;

  /// Creates a new [GetAccountLoginsArgs].
  /// [filters] Optional.
  GetAccountLoginsArgs({
    pulumi.Output<List<GetAccountLoginsFilter>>? filters,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetAccountLoginsFilter>>(filters);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetAccountLoginsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetAccountLoginsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAccountLoginsArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountLoginsArgs(
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetAccountLoginsFilter>>(pulumi.Input.decodeList<GetAccountLoginsFilter>(map['filters'], (value) => GetAccountLoginsFilter.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

