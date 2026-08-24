// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_page_shield_scripts_get_page_shield_scripts_args_doc}
/// Arguments for getPageShieldScripts.
/// {@endtemplate}
/// {@macro pulumi_index_get_page_shield_scripts_get_page_shield_scripts_args_doc}
class GetPageShieldScriptsArgs {
  /// Identifier
  final pulumi.Input<String> scriptId;
  /// Identifier
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetPageShieldScriptsArgs].
  /// [scriptId] Identifier
  /// [zoneId] Identifier
  const GetPageShieldScriptsArgs({
    required this.scriptId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scriptId': scriptId,
      'zoneId': ?zoneId,
    };
  }

  factory GetPageShieldScriptsArgs.fromMap(Map<String, dynamic> map) {
    return GetPageShieldScriptsArgs(
      scriptId: pulumi.Input.fromValue(map['scriptId'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
