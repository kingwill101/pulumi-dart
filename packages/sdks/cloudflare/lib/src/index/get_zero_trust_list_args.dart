// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_list_filter.dart';

/// {@template pulumi_index_get_zero_trust_list_get_zero_trust_list_args_doc}
/// Arguments for getZeroTrustList.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_list_get_zero_trust_list_args_doc}
class GetZeroTrustListArgs {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetZeroTrustListFilter?>? filter;
  /// Identify the API resource with a UUID.
  final pulumi.Input<String?>? listId;

  /// Creates a new [GetZeroTrustListArgs].
  /// [accountId] Optional.
  /// [filter] Optional.
  /// [listId] Identify the API resource with a UUID.
  const GetZeroTrustListArgs({
    this.accountId,
    this.filter,
    this.listId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetZeroTrustListFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'listId': ?listId,
    };
  }

  factory GetZeroTrustListArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustListArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetZeroTrustListFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      listId: (() { final guardedValue = map['listId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
