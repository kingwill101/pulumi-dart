// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RegionTargetTcpProxy resources.
class RegionTargetTcpProxyState {
  /// A reference to the BackendService resource. This field is optional when
  /// the loadBalancingScheme (available in beta) is specified.
  final pulumi.Input<String?>? backendService;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String?>? creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// An optional description of this resource.
  final pulumi.Input<String?>? description;
  /// (Optional, Beta)
  /// Specifies the load balancer type. A target TCP proxy created for one type
  /// of load balancer cannot be used with another. For more information, refer
  /// to [Summary of types of Google Cloud load balancers](https://docs.cloud.google.com/load-balancing/docs/load-balancing-overview#summary-gclb).
  /// Possible values are: `EXTERNAL_MANAGED`, `INTERNAL_MANAGED`.
  final pulumi.Input<String?>? loadBalancingScheme;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// This field only applies when the forwarding rule that references
  /// this target proxy has a loadBalancingScheme set to INTERNAL_SELF_MANAGED.
  final pulumi.Input<bool?>? proxyBind;
  /// Specifies the type of proxy header to append before sending data to
  /// the backend.
  /// Default value is `NONE`.
  /// Possible values are: `NONE`, `PROXY_V1`.
  final pulumi.Input<String?>? proxyHeader;
  /// The unique identifier for the resource.
  final pulumi.Input<int?>? proxyId;
  /// The Region in which the created target TCP proxy should reside.
  /// If it is not provided, the provider region is used.
  final pulumi.Input<String?>? region;
  /// The URI of the created resource.
  final pulumi.Input<String?>? selfLink;

  /// Creates a new [RegionTargetTcpProxyState].
  /// [backendService] A reference to the BackendService resource. This field is optional when
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource.
  /// [loadBalancingScheme] (Optional, Beta)
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [project] The ID of the project in which the resource belongs.
  /// [proxyBind] This field only applies when the forwarding rule that references
  /// [proxyHeader] Specifies the type of proxy header to append before sending data to
  /// [proxyId] The unique identifier for the resource.
  /// [region] The Region in which the created target TCP proxy should reside.
  /// [selfLink] The URI of the created resource.
  const RegionTargetTcpProxyState({
    this.backendService,
    this.creationTimestamp,
    this.deletionPolicy,
    this.description,
    this.loadBalancingScheme,
    this.name,
    this.project,
    this.proxyBind,
    this.proxyHeader,
    this.proxyId,
    this.region,
    this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendService': ?backendService,
      'creationTimestamp': ?creationTimestamp,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'loadBalancingScheme': ?loadBalancingScheme,
      'name': ?name,
      'project': ?project,
      'proxyBind': ?proxyBind,
      'proxyHeader': ?proxyHeader,
      'proxyId': ?proxyId,
      'region': ?region,
      'selfLink': ?selfLink,
    };
  }

  factory RegionTargetTcpProxyState.fromMap(Map<String, dynamic> map) {
    return RegionTargetTcpProxyState(
      backendService: (() { final guardedValue = map['backendService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancingScheme: (() { final guardedValue = map['loadBalancingScheme']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxyBind: (() { final guardedValue = map['proxyBind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      proxyHeader: (() { final guardedValue = map['proxyHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxyId: (() { final guardedValue = map['proxyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
