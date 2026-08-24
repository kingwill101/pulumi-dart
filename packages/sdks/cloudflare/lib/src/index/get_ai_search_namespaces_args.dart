// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_ai_search_namespaces_get_ai_search_namespaces_args_doc}
/// Arguments for getAiSearchNamespaces.
/// {@endtemplate}
/// {@macro pulumi_index_get_ai_search_namespaces_get_ai_search_namespaces_args_doc}
class GetAiSearchNamespacesArgs {
  final pulumi.Input<String> accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Filter namespaces whose name or description contains this string (case-insensitive).
  final pulumi.Input<String?>? search;

  /// Creates a new [GetAiSearchNamespacesArgs].
  /// [accountId] Required.
  /// [maxItems] Max items to fetch, default: 1000
  /// [search] Filter namespaces whose name or description contains this string (case-insensitive).
  const GetAiSearchNamespacesArgs({
    required this.accountId,
    this.maxItems,
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'maxItems': ?maxItems,
      'search': ?search,
    };
  }

  factory GetAiSearchNamespacesArgs.fromMap(Map<String, dynamic> map) {
    return GetAiSearchNamespacesArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
