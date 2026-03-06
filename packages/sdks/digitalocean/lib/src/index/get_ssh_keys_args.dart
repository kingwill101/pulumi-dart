// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ssh_keys_filter.dart';
import 'get_ssh_keys_sort.dart';

/// {@template pulumi_index_get_ssh_keys_get_ssh_keys_args_doc}
/// Arguments for getSshKeys.
/// {@endtemplate}
/// {@macro pulumi_index_get_ssh_keys_get_ssh_keys_args_doc}
class GetSshKeysArgs {
  /// Filter the results.
  /// The `filter` block is documented below.
  final pulumi.Input<List<GetSshKeysFilter>>? filters;
  /// Sort the results.
  /// The `sort` block is documented below.
  final pulumi.Input<List<GetSshKeysSort>>? sorts;

  /// Creates a new [GetSshKeysArgs].
  /// [filters] Filter the results.
  /// [sorts] Sort the results.
  const GetSshKeysArgs({
    this.filters,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetSshKeysFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetSshKeysFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetSshKeysSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetSshKeysSort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetSshKeysArgs.fromMap(Map<String, dynamic> map) {
    return GetSshKeysArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetSshKeysFilter>(guardedValue, (value) => GetSshKeysFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetSshKeysSort>(guardedValue, (value) => GetSshKeysSort.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

