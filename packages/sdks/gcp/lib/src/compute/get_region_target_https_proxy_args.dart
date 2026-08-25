// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_region_target_https_proxy_get_region_target_https_proxy_args_doc}
/// Arguments for getRegionTargetHttpsProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_get_region_target_https_proxy_get_region_target_https_proxy_args_doc}
class GetRegionTargetHttpsProxyArgs {
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The Region in which the created target https proxy should reside.
  /// If it is not provided, the provider region is used.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetRegionTargetHttpsProxyArgs].
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The Region in which the created target https proxy should reside.
  const GetRegionTargetHttpsProxyArgs({
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

  factory GetRegionTargetHttpsProxyArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionTargetHttpsProxyArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
