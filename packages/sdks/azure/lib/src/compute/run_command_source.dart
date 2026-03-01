// ignore_for_file: unused_element, unnecessary_cast

import 'run_command_source_script_uri_managed_identity.dart';

class RunCommandSource {
  final String? commandId;
  final String? script;
  final String? scriptUri;
  /// A `script_uri_managed_identity` block as defined above.
  final RunCommandSourceScriptUriManagedIdentity? scriptUriManagedIdentity;

  /// Creates a new [RunCommandSource].
  /// [commandId] Optional.
  /// [script] Optional.
  /// [scriptUri] Optional.
  /// [scriptUriManagedIdentity] A `script_uri_managed_identity` block as defined above.
  RunCommandSource({
    this.commandId,
    this.script,
    this.scriptUri,
    this.scriptUriManagedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commandId': ?commandId,
      'script': ?script,
      'scriptUri': ?scriptUri,
      'scriptUriManagedIdentity': ?scriptUriManagedIdentity == null ? null : scriptUriManagedIdentity!.toMap(),
    };
  }

  factory RunCommandSource.fromMap(Map<String, dynamic> map) {
    return RunCommandSource(
      commandId: map['commandId'] == null ? null : map['commandId'] as String,
      script: map['script'] == null ? null : map['script'] as String,
      scriptUri: map['scriptUri'] == null ? null : map['scriptUri'] as String,
      scriptUriManagedIdentity: map['scriptUriManagedIdentity'] == null ? null : RunCommandSourceScriptUriManagedIdentity.fromMap((map['scriptUriManagedIdentity'] as Map).cast<String, dynamic>()),
    );
  }
}

