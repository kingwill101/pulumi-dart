// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_workflows_get_workflows_args_doc}
/// Arguments for getWorkflows.
/// {@endtemplate}
/// {@macro pulumi_index_get_workflows_get_workflows_args_doc}
class GetWorkflowsArgs {
  final pulumi.Input<String?>? accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Allows filtering workflows` name.
  final pulumi.Input<String?>? search;

  /// Creates a new [GetWorkflowsArgs].
  /// [accountId] Optional.
  /// [maxItems] Max items to fetch, default: 1000
  /// [search] Allows filtering workflows` name.
  const GetWorkflowsArgs({
    this.accountId,
    this.maxItems,
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'search': ?search,
    };
  }

  factory GetWorkflowsArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkflowsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
