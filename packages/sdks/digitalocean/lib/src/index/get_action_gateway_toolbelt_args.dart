// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_action_gateway_toolbelt_get_action_gateway_toolbelt_args_doc}
/// Arguments for getActionGatewayToolbelt.
/// {@endtemplate}
/// {@macro pulumi_index_get_action_gateway_toolbelt_get_action_gateway_toolbelt_args_doc}
class GetActionGatewayToolbeltArgs {
  /// The name of the toolbelt.
  final pulumi.Input<String> name;
  /// The version to read. Defaults to the latest version. A deleted toolbelt can only be read by an explicit version.
  final pulumi.Input<String?>? version;

  /// Creates a new [GetActionGatewayToolbeltArgs].
  /// [name] The name of the toolbelt.
  /// [version] The version to read. Defaults to the latest version. A deleted toolbelt can only be read by an explicit version.
  const GetActionGatewayToolbeltArgs({
    required this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'version': ?version,
    };
  }

  factory GetActionGatewayToolbeltArgs.fromMap(Map<String, dynamic> map) {
    return GetActionGatewayToolbeltArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
