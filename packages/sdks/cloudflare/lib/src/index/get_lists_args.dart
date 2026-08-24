// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_lists_get_lists_args_doc}
/// Arguments for getLists.
/// {@endtemplate}
/// {@macro pulumi_index_get_lists_get_lists_args_doc}
class GetListsArgs {
  /// The Account ID for this resource.
  final pulumi.Input<String?>? accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;

  /// Creates a new [GetListsArgs].
  /// [accountId] The Account ID for this resource.
  /// [maxItems] Max items to fetch, default: 1000
  const GetListsArgs({
    this.accountId,
    this.maxItems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
    };
  }

  factory GetListsArgs.fromMap(Map<String, dynamic> map) {
    return GetListsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
