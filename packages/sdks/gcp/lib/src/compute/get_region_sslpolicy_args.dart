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
    required pulumi.Output<String> name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
  }) :
      name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetRegionSSLPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionSSLPolicyArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

