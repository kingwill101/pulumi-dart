// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'install_script_source.dart';

/// Server farm install script configuration.
class InstallScript {
  /// Name of the install script.
  final pulumi.Input<String>? name;
  /// Source of the install script.
  final pulumi.Input<InstallScriptSource>? source;

  /// Creates a new [InstallScript].
  /// [name] Name of the install script.
  /// [source] Source of the install script.
  const InstallScript({
    this.name,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'source': ?pulumi.Input.mapOptionalInputValue<InstallScriptSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory InstallScript.fromMap(Map<String, dynamic> map) {
    return InstallScript(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstallScriptSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
