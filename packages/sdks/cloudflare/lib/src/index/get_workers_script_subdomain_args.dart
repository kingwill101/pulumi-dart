// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_workers_script_subdomain_get_workers_script_subdomain_args_doc}
/// Arguments for getWorkersScriptSubdomain.
/// {@endtemplate}
/// {@macro pulumi_index_get_workers_script_subdomain_get_workers_script_subdomain_args_doc}
class GetWorkersScriptSubdomainArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// Name of the script, used in URLs and route configuration.
  final pulumi.Input<String> scriptName;

  /// Creates a new [GetWorkersScriptSubdomainArgs].
  /// [accountId] Identifier.
  /// [scriptName] Name of the script, used in URLs and route configuration.
  const GetWorkersScriptSubdomainArgs({
    required this.accountId,
    required this.scriptName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'scriptName': scriptName,
    };
  }

  factory GetWorkersScriptSubdomainArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkersScriptSubdomainArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      scriptName: pulumi.Input.fromValue(map['scriptName'] as String),
    );
  }
}
