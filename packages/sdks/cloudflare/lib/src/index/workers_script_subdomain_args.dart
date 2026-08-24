// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_workers_script_subdomain_workers_script_subdomain_args_doc}
/// The set of arguments for WorkersScriptSubdomain.
/// {@endtemplate}
/// {@macro pulumi_index_workers_script_subdomain_workers_script_subdomain_args_doc}
class WorkersScriptSubdomainArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// Whether the Worker should be available on the workers.dev subdomain.
  final pulumi.Input<bool> enabled;
  /// Whether the Worker's Preview URLs should be available on the workers.dev subdomain.
  final pulumi.Input<bool?>? previewsEnabled;
  /// Name of the script, used in URLs and route configuration.
  final pulumi.Input<String> scriptName;

  /// Creates a new [WorkersScriptSubdomainArgs].
  /// [accountId] Identifier.
  /// [enabled] Whether the Worker should be available on the workers.dev subdomain.
  /// [previewsEnabled] Whether the Worker's Preview URLs should be available on the workers.dev subdomain.
  /// [scriptName] Name of the script, used in URLs and route configuration.
  const WorkersScriptSubdomainArgs({
    required this.accountId,
    required this.enabled,
    this.previewsEnabled,
    required this.scriptName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'enabled': enabled,
      'previewsEnabled': ?previewsEnabled,
      'scriptName': scriptName,
    };
  }

  factory WorkersScriptSubdomainArgs.fromMap(Map<String, dynamic> map) {
    return WorkersScriptSubdomainArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      previewsEnabled: (() { final guardedValue = map['previewsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      scriptName: pulumi.Input.fromValue(map['scriptName'] as String),
    );
  }
}
