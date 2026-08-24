// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_ai_search_namespace_ai_search_namespace_args_doc}
/// The set of arguments for AiSearchNamespace.
/// {@endtemplate}
/// {@macro pulumi_index_ai_search_namespace_ai_search_namespace_args_doc}
class AiSearchNamespaceArgs {
  final pulumi.Input<String> accountId;
  /// Optional description for the namespace. Max 256 characters.
  final pulumi.Input<String?>? description;
  final pulumi.Input<String> name;

  /// Creates a new [AiSearchNamespaceArgs].
  /// [accountId] Required.
  /// [description] Optional description for the namespace. Max 256 characters.
  /// [name] Required.
  const AiSearchNamespaceArgs({
    required this.accountId,
    this.description,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'description': ?description,
      'name': name,
    };
  }

  factory AiSearchNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return AiSearchNamespaceArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
