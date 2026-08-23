// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_target_sslproxy_target_sslproxy_args_doc}
/// The set of arguments for TargetSSLProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_target_sslproxy_target_sslproxy_args_doc}
class TargetSSLProxyArgs {
  /// A reference to the BackendService resource.
  final pulumi.Input<String> backendService;
  /// A reference to the CertificateMap resource uri that identifies a certificate map
  /// associated with the given target proxy. This field can only be set for global target proxies.
  /// Accepted format is `//certificatemanager.googleapis.com/projects/{project}/locations/{location}/certificateMaps/{resourceName}`.
  final pulumi.Input<String>? certificateMap;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// Specifies the type of proxy header to append before sending data to
  /// the backend.
  /// Default value is `NONE`.
  /// Possible values are: `NONE`, `PROXY_V1`.
  final pulumi.Input<String>? proxyHeader;
  /// A list of SslCertificate resources that are used to authenticate
  /// connections between users and the load balancer. At least one
  /// SSL certificate must be specified.
  final pulumi.Input<List<String>>? sslCertificates;
  /// A reference to the SslPolicy resource that will be associated with
  /// the TargetSslProxy resource. If not set, the TargetSslProxy
  /// resource will not have any SSL policy configured.
  final pulumi.Input<String>? sslPolicy;

  /// Creates a new [TargetSSLProxyArgs].
  /// [backendService] A reference to the BackendService resource.
  /// [certificateMap] A reference to the CertificateMap resource uri that identifies a certificate map
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource.
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [project] The ID of the project in which the resource belongs.
  /// [proxyHeader] Specifies the type of proxy header to append before sending data to
  /// [sslCertificates] A list of SslCertificate resources that are used to authenticate
  /// [sslPolicy] A reference to the SslPolicy resource that will be associated with
  const TargetSSLProxyArgs({
    required this.backendService,
    this.certificateMap,
    this.deletionPolicy,
    this.description,
    this.name,
    this.project,
    this.proxyHeader,
    this.sslCertificates,
    this.sslPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendService': backendService,
      'certificateMap': ?certificateMap,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'name': ?name,
      'project': ?project,
      'proxyHeader': ?proxyHeader,
      'sslCertificates': ?sslCertificates,
      'sslPolicy': ?sslPolicy,
    };
  }

  factory TargetSSLProxyArgs.fromMap(Map<String, dynamic> map) {
    return TargetSSLProxyArgs(
      backendService: pulumi.Input.fromValue(map['backendService'] as String),
      certificateMap: (() { final guardedValue = map['certificateMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxyHeader: (() { final guardedValue = map['proxyHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslCertificates: (() { final guardedValue = map['sslCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sslPolicy: (() { final guardedValue = map['sslPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
