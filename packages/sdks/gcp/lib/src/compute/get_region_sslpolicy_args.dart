// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_region_sslpolicy_get_region_sslpolicy_args_doc}
/// Arguments for getRegionSSLPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_get_region_sslpolicy_get_region_sslpolicy_args_doc}
class GetRegionSSLPolicyArgs {
  final pulumi.Input<String> name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? region;

  /// Creates a new [GetRegionSSLPolicyArgs].
  /// [name] Required.
  /// [project] Optional.
  /// [region] Optional.
  GetRegionSSLPolicyArgs({
    required this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetRegionSSLPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionSSLPolicyArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

