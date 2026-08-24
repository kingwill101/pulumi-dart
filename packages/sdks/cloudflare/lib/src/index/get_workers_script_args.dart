// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workers_script_filter.dart';

/// {@template pulumi_index_get_workers_script_get_workers_script_args_doc}
/// Arguments for getWorkersScript.
/// {@endtemplate}
/// {@macro pulumi_index_get_workers_script_get_workers_script_args_doc}
class GetWorkersScriptArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetWorkersScriptFilter?>? filter;
  /// Name of the script, used in URLs and route configuration.
  final pulumi.Input<String?>? scriptName;

  /// Creates a new [GetWorkersScriptArgs].
  /// [accountId] Identifier.
  /// [filter] Optional.
  /// [scriptName] Name of the script, used in URLs and route configuration.
  const GetWorkersScriptArgs({
    this.accountId,
    this.filter,
    this.scriptName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetWorkersScriptFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'scriptName': ?scriptName,
    };
  }

  factory GetWorkersScriptArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkersScriptArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetWorkersScriptFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scriptName: (() { final guardedValue = map['scriptName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
