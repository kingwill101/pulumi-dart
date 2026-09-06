// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'install_script_source_response.dart';

/// Server farm install script configuration.
class InstallScriptResponse {
  /// Name of the install script.
  final pulumi.Input<String?>? name;
  /// Source of the install script.
  final pulumi.Input<InstallScriptSourceResponse?>? source;

  /// Creates a new [InstallScriptResponse].
  /// [name] Name of the install script.
  /// [source] Source of the install script.
  const InstallScriptResponse({
    this.name,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'source': ?pulumi.Input.mapOptionalInputValue<InstallScriptSourceResponse, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory InstallScriptResponse.fromMap(Map<String, dynamic> map) {
    return InstallScriptResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstallScriptSourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
