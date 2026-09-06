// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Object to hold install script reference.
class InstallScriptSource {
  /// Install script source URI where the install script file will be fetched from.
  final pulumi.Input<String?>? sourceUri;
  /// Type of the install script.
  final pulumi.Input<dynamic>? type;

  /// Creates a new [InstallScriptSource].
  /// [sourceUri] Install script source URI where the install script file will be fetched from.
  /// [type] Type of the install script.
  const InstallScriptSource({
    this.sourceUri,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceUri': ?sourceUri,
      'type': ?type,
    };
  }

  factory InstallScriptSource.fromMap(Map<String, dynamic> map) {
    return InstallScriptSource(
      sourceUri: (() { final guardedValue = map['sourceUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
