// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_ai_search_instances_get_ai_search_instances_args_doc}
/// Arguments for getAiSearchInstances.
/// {@endtemplate}
/// {@macro pulumi_index_get_ai_search_instances_get_ai_search_instances_args_doc}
class GetAiSearchInstancesArgs {
  final pulumi.Input<String?>? accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Filter by namespace.
  final pulumi.Input<String?>? namespace;
  /// Field to order results by.
  /// Available values: "createdAt".
  final pulumi.Input<String?>? orderBy;
  /// Order direction.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? orderByDirection;
  /// Filter instances whose id contains this string (case-insensitive).
  final pulumi.Input<String?>? search;

  /// Creates a new [GetAiSearchInstancesArgs].
  /// [accountId] Optional.
  /// [maxItems] Max items to fetch, default: 1000
  /// [namespace] Filter by namespace.
  /// [orderBy] Field to order results by.
  /// [orderByDirection] Order direction.
  /// [search] Filter instances whose id contains this string (case-insensitive).
  const GetAiSearchInstancesArgs({
    this.accountId,
    this.maxItems,
    this.namespace,
    this.orderBy,
    this.orderByDirection,
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'namespace': ?namespace,
      'orderBy': ?orderBy,
      'orderByDirection': ?orderByDirection,
      'search': ?search,
    };
  }

  factory GetAiSearchInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstancesArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orderByDirection: (() { final guardedValue = map['orderByDirection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
