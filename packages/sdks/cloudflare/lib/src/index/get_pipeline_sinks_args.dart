// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_pipeline_sinks_get_pipeline_sinks_args_doc}
/// Arguments for getPipelineSinks.
/// {@endtemplate}
/// {@macro pulumi_index_get_pipeline_sinks_get_pipeline_sinks_args_doc}
class GetPipelineSinksArgs {
  /// Specifies the public ID of the account.
  final pulumi.Input<String?>? accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Filters sinks by name (case-insensitive substring).
  final pulumi.Input<String?>? name;
  final pulumi.Input<String?>? pipelineId;

  /// Creates a new [GetPipelineSinksArgs].
  /// [accountId] Specifies the public ID of the account.
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] Filters sinks by name (case-insensitive substring).
  /// [pipelineId] Optional.
  const GetPipelineSinksArgs({
    this.accountId,
    this.maxItems,
    this.name,
    this.pipelineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'name': ?name,
      'pipelineId': ?pipelineId,
    };
  }

  factory GetPipelineSinksArgs.fromMap(Map<String, dynamic> map) {
    return GetPipelineSinksArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pipelineId: (() { final guardedValue = map['pipelineId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
