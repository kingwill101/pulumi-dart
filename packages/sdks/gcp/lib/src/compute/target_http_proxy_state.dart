// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TargetHttpProxy resources.
class TargetHttpProxyState {
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
  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking.
  /// This field will be ignored when inserting a TargetHttpProxy. An up-to-date fingerprint must be provided in order to
  /// patch/update the TargetHttpProxy; otherwise, the request will fail with error 412 conditionNotMet.
  /// To see the latest fingerprint, make a get() request to retrieve the TargetHttpProxy.
  /// A base64-encoded string.
  final pulumi.Input<String?>? fingerprint;
  /// Specifies how long to keep a connection open, after completing a response,
  /// while there is no matching traffic (in seconds). If an HTTP keepalive is
  /// not specified, a default value will be used. For Global
  /// external HTTP(S) load balancer, the default value is 610 seconds, the
  /// minimum allowed value is 5 seconds and the maximum allowed value is 1200
  /// seconds. For cross-region internal HTTP(S) load balancer, the default
  /// value is 600 seconds, the minimum allowed value is 5 seconds, and the
  /// maximum allowed value is 600 seconds. For Global external HTTP(S) load
  /// balancer (classic), this option is not available publicly.
  final pulumi.Input<int?>? httpKeepAliveTimeoutSec;
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
  /// The unique identifier for the resource.
  final pulumi.Input<int?>? proxyId;
  /// The URI of the created resource.
  final pulumi.Input<String?>? selfLink;
  /// A reference to the UrlMap resource that defines the mapping from URL
  /// to the BackendService.
  final pulumi.Input<String?>? urlMap;

  /// Creates a new [TargetHttpProxyState].
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource.
  /// [fingerprint] Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking.
  /// [httpKeepAliveTimeoutSec] Specifies how long to keep a connection open, after completing a response,
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [project] The ID of the project in which the resource belongs.
  /// [proxyBind] This field only applies when the forwarding rule that references
  /// [proxyId] The unique identifier for the resource.
  /// [selfLink] The URI of the created resource.
  /// [urlMap] A reference to the UrlMap resource that defines the mapping from URL
  const TargetHttpProxyState({
    this.creationTimestamp,
    this.deletionPolicy,
    this.description,
    this.fingerprint,
    this.httpKeepAliveTimeoutSec,
    this.name,
    this.project,
    this.proxyBind,
    this.proxyId,
    this.selfLink,
    this.urlMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': ?creationTimestamp,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'fingerprint': ?fingerprint,
      'httpKeepAliveTimeoutSec': ?httpKeepAliveTimeoutSec,
      'name': ?name,
      'project': ?project,
      'proxyBind': ?proxyBind,
      'proxyId': ?proxyId,
      'selfLink': ?selfLink,
      'urlMap': ?urlMap,
    };
  }

  factory TargetHttpProxyState.fromMap(Map<String, dynamic> map) {
    return TargetHttpProxyState(
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpKeepAliveTimeoutSec: (() { final guardedValue = map['httpKeepAliveTimeoutSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxyBind: (() { final guardedValue = map['proxyBind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      proxyId: (() { final guardedValue = map['proxyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      urlMap: (() { final guardedValue = map['urlMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
