// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_region_target_http_proxy_region_target_http_proxy_args_doc}
/// The set of arguments for RegionTargetHttpProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_region_target_http_proxy_region_target_http_proxy_args_doc}
class RegionTargetHttpProxyArgs {
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Specifies how long to keep a connection open, after completing a response,
  /// while there is no matching traffic (in seconds). If an HTTP keepalive is
  /// not specified, a default value (600 seconds) will be used. For Regional
  /// HTTP(S) load balancer, the minimum allowed value is 5 seconds and the
  /// maximum allowed value is 600 seconds.
  final pulumi.Input<int>? httpKeepAliveTimeoutSec;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The Region in which the created target https proxy should reside.
  /// If it is not provided, the provider region is used.
  final pulumi.Input<String>? region;
  /// A reference to the RegionUrlMap resource that defines the mapping from URL
  /// to the BackendService.
  final pulumi.Input<String> urlMap;

  /// Creates a new [RegionTargetHttpProxyArgs].
  /// [description] An optional description of this resource.
  /// [httpKeepAliveTimeoutSec] Specifies how long to keep a connection open, after completing a response,
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The Region in which the created target https proxy should reside.
  /// [urlMap] A reference to the RegionUrlMap resource that defines the mapping from URL
  RegionTargetHttpProxyArgs({
    pulumi.Output<String>? description,
    pulumi.Output<int>? httpKeepAliveTimeoutSec,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    required pulumi.Output<String> urlMap,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      httpKeepAliveTimeoutSec = pulumi.Input.asOptionalInput<int>(httpKeepAliveTimeoutSec),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      urlMap = pulumi.Input.asInput<String>(urlMap);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'httpKeepAliveTimeoutSec': ?httpKeepAliveTimeoutSec,
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'urlMap': urlMap,
    };
  }

  factory RegionTargetHttpProxyArgs.fromMap(Map<String, dynamic> map) {
    return RegionTargetHttpProxyArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      httpKeepAliveTimeoutSec: map['httpKeepAliveTimeoutSec'] == null ? null : pulumi.Output.create<int>(map['httpKeepAliveTimeoutSec'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      urlMap: pulumi.Output.create<String>(map['urlMap'] as String),
    );
  }
}

