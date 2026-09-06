// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Object to hold install script reference.
class InstallScriptSourceResponse {
  /// Install script source URI where the install script file will be fetched from.
  final pulumi.Input<String?>? sourceUri;
  /// Type of the install script.
  final pulumi.Input<String?>? type;

  /// Creates a new [InstallScriptSourceResponse].
  /// [sourceUri] Install script source URI where the install script file will be fetched from.
  /// [type] Type of the install script.
  const InstallScriptSourceResponse({
    this.sourceUri,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceUri': ?sourceUri,
      'type': ?type,
    };
  }

  factory InstallScriptSourceResponse.fromMap(Map<String, dynamic> map) {
    return InstallScriptSourceResponse(
      sourceUri: (() { final guardedValue = map['sourceUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
