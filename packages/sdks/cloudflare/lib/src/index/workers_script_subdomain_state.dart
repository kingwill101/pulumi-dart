// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkersScriptSubdomain resources.
class WorkersScriptSubdomainState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Whether the Worker should be available on the workers.dev subdomain.
  final pulumi.Input<bool?>? enabled;
  /// Whether the Worker's Preview URLs should be available on the workers.dev subdomain.
  final pulumi.Input<bool?>? previewsEnabled;
  /// Name of the script, used in URLs and route configuration.
  final pulumi.Input<String?>? scriptName;

  /// Creates a new [WorkersScriptSubdomainState].
  /// [accountId] Identifier.
  /// [enabled] Whether the Worker should be available on the workers.dev subdomain.
  /// [previewsEnabled] Whether the Worker's Preview URLs should be available on the workers.dev subdomain.
  /// [scriptName] Name of the script, used in URLs and route configuration.
  const WorkersScriptSubdomainState({
    this.accountId,
    this.enabled,
    this.previewsEnabled,
    this.scriptName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'enabled': ?enabled,
      'previewsEnabled': ?previewsEnabled,
      'scriptName': ?scriptName,
    };
  }

  factory WorkersScriptSubdomainState.fromMap(Map<String, dynamic> map) {
    return WorkersScriptSubdomainState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      previewsEnabled: (() { final guardedValue = map['previewsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      scriptName: (() { final guardedValue = map['scriptName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
