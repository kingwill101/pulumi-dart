// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RegionTargetHttpProxy resources.
class RegionTargetHttpProxyState {
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
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
  /// The unique identifier for the resource.
  final pulumi.Input<int>? proxyId;
  /// The Region in which the created target https proxy should reside.
  /// If it is not provided, the provider region is used.
  final pulumi.Input<String>? region;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// A reference to the RegionUrlMap resource that defines the mapping from URL
  /// to the BackendService.
  final pulumi.Input<String>? urlMap;

  /// Creates a new [RegionTargetHttpProxyState].
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource.
  /// [httpKeepAliveTimeoutSec] Specifies how long to keep a connection open, after completing a response,
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [project] The ID of the project in which the resource belongs.
  /// [proxyId] The unique identifier for the resource.
  /// [region] The Region in which the created target https proxy should reside.
  /// [selfLink] The URI of the created resource.
  /// [urlMap] A reference to the RegionUrlMap resource that defines the mapping from URL
  RegionTargetHttpProxyState({
    pulumi.Output<String>? creationTimestamp,
    pulumi.Output<String>? description,
    pulumi.Output<int>? httpKeepAliveTimeoutSec,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<int>? proxyId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? selfLink,
    pulumi.Output<String>? urlMap,
  }) :
      creationTimestamp = pulumi.Input.asOptionalInput<String>(creationTimestamp),
      description = pulumi.Input.asOptionalInput<String>(description),
      httpKeepAliveTimeoutSec = pulumi.Input.asOptionalInput<int>(httpKeepAliveTimeoutSec),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      proxyId = pulumi.Input.asOptionalInput<int>(proxyId),
      region = pulumi.Input.asOptionalInput<String>(region),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      urlMap = pulumi.Input.asOptionalInput<String>(urlMap);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'httpKeepAliveTimeoutSec': ?httpKeepAliveTimeoutSec,
      'name': ?name,
      'project': ?project,
      'proxyId': ?proxyId,
      'region': ?region,
      'selfLink': ?selfLink,
      'urlMap': ?urlMap,
    };
  }

  factory RegionTargetHttpProxyState.fromMap(Map<String, dynamic> map) {
    return RegionTargetHttpProxyState(
      creationTimestamp: map['creationTimestamp'] == null ? null : pulumi.Output.create<String>(map['creationTimestamp'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      httpKeepAliveTimeoutSec: map['httpKeepAliveTimeoutSec'] == null ? null : pulumi.Output.create<int>(map['httpKeepAliveTimeoutSec'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      proxyId: map['proxyId'] == null ? null : pulumi.Output.create<int>(map['proxyId'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      urlMap: map['urlMap'] == null ? null : pulumi.Output.create<String>(map['urlMap'] as String),
    );
  }
}

