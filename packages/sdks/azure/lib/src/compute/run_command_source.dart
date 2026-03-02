// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'run_command_source_script_uri_managed_identity.dart';

class RunCommandSource {
  final pulumi.Input<String>? commandId;
  final pulumi.Input<String>? script;
  final pulumi.Input<String>? scriptUri;
  /// A `script_uri_managed_identity` block as defined above.
  final pulumi.Input<RunCommandSourceScriptUriManagedIdentity>? scriptUriManagedIdentity;

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
      'scriptUriManagedIdentity': ?pulumi.Input.mapOptionalInputValue<RunCommandSourceScriptUriManagedIdentity, Map<String, dynamic>>(scriptUriManagedIdentity, (value) => value.toMap()),
    };
  }

  factory RunCommandSource.fromMap(Map<String, dynamic> map) {
    return RunCommandSource(
      commandId: map['commandId'] == null ? null : (map['commandId'] as String).input(),
      script: map['script'] == null ? null : (map['script'] as String).input(),
      scriptUri: map['scriptUri'] == null ? null : (map['scriptUri'] as String).input(),
      scriptUriManagedIdentity: map['scriptUriManagedIdentity'] == null ? null : (RunCommandSourceScriptUriManagedIdentity.fromMap((map['scriptUriManagedIdentity'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

