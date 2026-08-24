// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_workers_for_platforms_namespace_workers_for_platforms_namespace_args_doc}
/// The set of arguments for WorkersForPlatformsNamespace.
/// {@endtemplate}
/// {@macro pulumi_index_workers_for_platforms_namespace_workers_for_platforms_namespace_args_doc}
class WorkersForPlatformsNamespaceArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// The name of the dispatch namespace.
  final pulumi.Input<String?>? name;

  /// Creates a new [WorkersForPlatformsNamespaceArgs].
  /// [accountId] Identifier.
  /// [name] The name of the dispatch namespace.
  const WorkersForPlatformsNamespaceArgs({
    required this.accountId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'name': ?name,
    };
  }

  factory WorkersForPlatformsNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return WorkersForPlatformsNamespaceArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
