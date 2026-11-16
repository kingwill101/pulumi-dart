// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_search_namespace_filter.dart';

/// {@template pulumi_index_get_ai_search_namespace_get_ai_search_namespace_args_doc}
/// Arguments for getAiSearchNamespace.
/// {@endtemplate}
/// {@macro pulumi_index_get_ai_search_namespace_get_ai_search_namespace_args_doc}
class GetAiSearchNamespaceArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<GetAiSearchNamespaceFilter?>? filter;
  final pulumi.Input<String?>? name;

  /// Creates a new [GetAiSearchNamespaceArgs].
  /// [accountId] Required.
  /// [filter] Optional.
  /// [name] Optional.
  const GetAiSearchNamespaceArgs({
    required this.accountId,
    this.filter,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetAiSearchNamespaceFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'name': ?name,
    };
  }

  factory GetAiSearchNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return GetAiSearchNamespaceArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAiSearchNamespaceFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
