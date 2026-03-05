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
      commandId: (() { final guardedValue = map['commandId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      script: (() { final guardedValue = map['script']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scriptUri: (() { final guardedValue = map['scriptUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scriptUriManagedIdentity: (() { final guardedValue = map['scriptUriManagedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RunCommandSourceScriptUriManagedIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

