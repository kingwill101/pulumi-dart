// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_envgroup_args_doc}
/// The set of arguments for Envgroup.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_envgroup_args_doc}
class EnvgroupArgs {
  /// Host names for this environment group.
  final pulumi.Input<List<String>> hostnames;
  /// ID of the environment group.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;

  /// Creates a new [EnvgroupArgs].
  /// [hostnames] Host names for this environment group.
  /// [name] ID of the environment group.
  /// [organizationId] Required.
  const EnvgroupArgs({
    required this.hostnames,
    this.name,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostnames': hostnames,
      'name': ?name,
      'organizationId': organizationId,
    };
  }

  factory EnvgroupArgs.fromMap(Map<String, dynamic> map) {
    return EnvgroupArgs(
      hostnames: pulumi.Input.fromValue((map['hostnames'] as List).cast<String>()),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
    );
  }
}
