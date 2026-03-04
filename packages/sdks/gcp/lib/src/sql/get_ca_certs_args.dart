// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_ca_certs_get_ca_certs_args_doc}
/// Arguments for getCaCerts.
/// {@endtemplate}
/// {@macro pulumi_sql_get_ca_certs_get_ca_certs_args_doc}
class GetCaCertsArgs {
  /// The name or self link of the instance.
  final pulumi.Input<String> instance;

  /// The ID of the project in which the resource belongs. If `project` is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetCaCertsArgs].
  /// [instance] The name or self link of the instance.
  /// [project] The ID of the project in which the resource belongs. If `project` is not provided, the provider project is used.
  GetCaCertsArgs({required this.instance, this.project});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'instance': instance, 'project': ?project};
  }

  factory GetCaCertsArgs.fromMap(Map<String, dynamic> map) {
    return GetCaCertsArgs(
      instance: pulumi.Input.fromValue(map['instance'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
