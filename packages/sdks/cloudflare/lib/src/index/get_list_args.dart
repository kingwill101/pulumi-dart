// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_list_get_list_args_doc}
/// Arguments for getList.
/// {@endtemplate}
/// {@macro pulumi_index_get_list_get_list_args_doc}
class GetListArgs {
  /// The Account ID for this resource.
  final pulumi.Input<String?>? accountId;
  /// The unique ID of the list.
  final pulumi.Input<String> listId;
  /// A search query to filter returned items. Its meaning depends on the list type: IP addresses must start with the provided string, hostnames and bulk redirects must contain the string, and ASNs must match the string exactly.
  final pulumi.Input<String?>? search;

  /// Creates a new [GetListArgs].
  /// [accountId] The Account ID for this resource.
  /// [listId] The unique ID of the list.
  /// [search] A search query to filter returned items. Its meaning depends on the list type: IP addresses must start with the provided string, hostnames and bulk redirects must contain the string, and ASNs must match the string exactly.
  const GetListArgs({
    this.accountId,
    required this.listId,
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'listId': listId,
      'search': ?search,
    };
  }

  factory GetListArgs.fromMap(Map<String, dynamic> map) {
    return GetListArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      listId: pulumi.Input.fromValue(map['listId'] as String),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
