// ignore_for_file: unused_element, unnecessary_cast

import 'get_workers_script_filter.dart';

/// Result data returned by getWorkersScript.
class GetWorkersScriptResult {
  /// Identifier.
  final String? accountId;
  final GetWorkersScriptFilter? filter;
  /// Name of the script, used in URLs and route configuration.
  final String? id;
  final String? script;
  /// Name of the script, used in URLs and route configuration.
  final String? scriptName;

  /// Creates a new [GetWorkersScriptResult].
  /// [accountId] Identifier.
  /// [filter] Optional.
  /// [id] Name of the script, used in URLs and route configuration.
  /// [script] Optional.
  /// [scriptName] Name of the script, used in URLs and route configuration.
  const GetWorkersScriptResult({
    this.accountId,
    this.filter,
    this.id,
    this.script,
    this.scriptName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'script': ?script,
      'scriptName': ?scriptName,
    };
  }

  factory GetWorkersScriptResult.fromMap(Map<String, dynamic> map) {
    return GetWorkersScriptResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetWorkersScriptFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      script: (() { final guardedValue = map['script']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scriptName: (() { final guardedValue = map['scriptName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
