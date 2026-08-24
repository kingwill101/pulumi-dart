// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_workers_for_platforms_dispatch_namespace_get_workers_for_platforms_dispatch_namespace_args_doc}
/// Arguments for getWorkersForPlatformsDispatchNamespace.
/// {@endtemplate}
/// {@macro pulumi_index_get_workers_for_platforms_dispatch_namespace_get_workers_for_platforms_dispatch_namespace_args_doc}
class GetWorkersForPlatformsDispatchNamespaceArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Name of the Workers for Platforms dispatch namespace.
  final pulumi.Input<String> dispatchNamespace;

  /// Creates a new [GetWorkersForPlatformsDispatchNamespaceArgs].
  /// [accountId] Identifier.
  /// [dispatchNamespace] Name of the Workers for Platforms dispatch namespace.
  const GetWorkersForPlatformsDispatchNamespaceArgs({
    this.accountId,
    required this.dispatchNamespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'dispatchNamespace': dispatchNamespace,
    };
  }

  factory GetWorkersForPlatformsDispatchNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkersForPlatformsDispatchNamespaceArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dispatchNamespace: pulumi.Input.fromValue(map['dispatchNamespace'] as String),
    );
  }
}
