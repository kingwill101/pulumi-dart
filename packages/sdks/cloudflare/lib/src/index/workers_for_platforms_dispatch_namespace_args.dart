// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_workers_for_platforms_dispatch_namespace_workers_for_platforms_dispatch_namespace_args_doc}
/// The set of arguments for WorkersForPlatformsDispatchNamespace.
/// {@endtemplate}
/// {@macro pulumi_index_workers_for_platforms_dispatch_namespace_workers_for_platforms_dispatch_namespace_args_doc}
class WorkersForPlatformsDispatchNamespaceArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// The name of the dispatch namespace.
  final pulumi.Input<String?>? name;

  /// Creates a new [WorkersForPlatformsDispatchNamespaceArgs].
  /// [accountId] Identifier.
  /// [name] The name of the dispatch namespace.
  const WorkersForPlatformsDispatchNamespaceArgs({
    required this.accountId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'name': ?name,
    };
  }

  factory WorkersForPlatformsDispatchNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return WorkersForPlatformsDispatchNamespaceArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
