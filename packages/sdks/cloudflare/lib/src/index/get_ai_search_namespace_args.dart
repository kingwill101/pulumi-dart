// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_ai_search_namespace_get_ai_search_namespace_args_doc}
/// Arguments for getAiSearchNamespace.
/// {@endtemplate}
/// {@macro pulumi_index_get_ai_search_namespace_get_ai_search_namespace_args_doc}
class GetAiSearchNamespaceArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> name;

  /// Creates a new [GetAiSearchNamespaceArgs].
  /// [accountId] Required.
  /// [name] Required.
  const GetAiSearchNamespaceArgs({
    required this.accountId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'name': name,
    };
  }

  factory GetAiSearchNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return GetAiSearchNamespaceArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
