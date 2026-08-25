// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_region_sslpolicy_get_region_sslpolicy_args_doc}
/// Arguments for getRegionSSLPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_get_region_sslpolicy_get_region_sslpolicy_args_doc}
class GetRegionSSLPolicyArgs {
  /// The name of the SSL Policy.
  ///
  /// - - -
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The region in which the resource belongs. If it
  /// is not provided, the provider region is used.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetRegionSSLPolicyArgs].
  /// [name] The name of the SSL Policy.
  /// [project] The ID of the project in which the resource belongs. If it
  /// [region] The region in which the resource belongs. If it
  const GetRegionSSLPolicyArgs({
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
