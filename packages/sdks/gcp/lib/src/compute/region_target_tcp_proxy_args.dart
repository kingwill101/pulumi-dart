// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_region_target_tcp_proxy_region_target_tcp_proxy_args_doc}
/// The set of arguments for RegionTargetTcpProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_region_target_tcp_proxy_region_target_tcp_proxy_args_doc}
class RegionTargetTcpProxyArgs {
  /// A reference to the BackendService resource.
  final pulumi.Input<String> backendService;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
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
  /// This field only applies when the forwarding rule that references
  /// this target proxy has a loadBalancingScheme set to INTERNAL_SELF_MANAGED.
  final pulumi.Input<bool>? proxyBind;
  /// Specifies the type of proxy header to append before sending data to
  /// the backend.
  /// Default value is `NONE`.
  /// Possible values are: `NONE`, `PROXY_V1`.
  final pulumi.Input<String>? proxyHeader;
  /// The Region in which the created target TCP proxy should reside.
  /// If it is not provided, the provider region is used.
  final pulumi.Input<String>? region;

  /// Creates a new [RegionTargetTcpProxyArgs].
  /// [backendService] A reference to the BackendService resource.
  /// [description] An optional description of this resource.
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [project] The ID of the project in which the resource belongs.
  /// [proxyBind] This field only applies when the forwarding rule that references
  /// [proxyHeader] Specifies the type of proxy header to append before sending data to
  /// [region] The Region in which the created target TCP proxy should reside.
  const RegionTargetTcpProxyArgs({
    required this.backendService,
    this.description,
    this.name,
    this.project,
    this.proxyBind,
    this.proxyHeader,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendService': backendService,
      'description': ?description,
      'name': ?name,
      'project': ?project,
      'proxyBind': ?proxyBind,
      'proxyHeader': ?proxyHeader,
      'region': ?region,
    };
  }

  factory RegionTargetTcpProxyArgs.fromMap(Map<String, dynamic> map) {
    return RegionTargetTcpProxyArgs(
      backendService: pulumi.Input.fromValue(map['backendService'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxyBind: (() { final guardedValue = map['proxyBind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      proxyHeader: (() { final guardedValue = map['proxyHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

