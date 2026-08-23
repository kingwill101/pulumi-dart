// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_tls_policy_mtls_policy.dart';
import 'server_tls_policy_server_certificate.dart';

/// {@template pulumi_networksecurity_server_tls_policy_server_tls_policy_args_doc}
/// The set of arguments for ServerTlsPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_server_tls_policy_server_tls_policy_args_doc}
class ServerTlsPolicyArgs {
  /// This field applies only for Traffic Director policies. It is must be set to false for external HTTPS load balancer policies.
  /// Determines if server allows plaintext connections. If set to true, server allows plain text connections. By default, it is set to false. This setting is not exclusive of other encryption modes. For example, if allowOpen and mtlsPolicy are set, server allows both plain text and mTLS connections. See documentation of other encryption modes to confirm compatibility.
  /// Consider using it if you wish to upgrade in place your deployment to TLS while having mixed TLS and non-TLS traffic reaching port :80.
  final pulumi.Input<bool>? allowOpen;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;
  /// Set of label tags associated with the ServerTlsPolicy resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the server tls policy.
  /// The default value is `global`.
  final pulumi.Input<String>? location;
  /// This field is required if the policy is used with external HTTPS load balancers. This field can be empty for Traffic Director.
  /// Defines a mechanism to provision peer validation certificates for peer to peer authentication (Mutual TLS - mTLS). If not specified, client certificate will not be requested. The connection is treated as TLS and not mTLS. If allowOpen and mtlsPolicy are set, server allows both plain text and mTLS connections.
  /// Structure is documented below.
  final pulumi.Input<ServerTlsPolicyMtlsPolicy>? mtlsPolicy;
  /// Name of the ServerTlsPolicy resource.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS.
  /// Structure is documented below.
  final pulumi.Input<ServerTlsPolicyServerCertificate>? serverCertificate;

  /// Creates a new [ServerTlsPolicyArgs].
  /// [allowOpen] This field applies only for Traffic Director policies. It is must be set to false for external HTTPS load balancer policies.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [labels] Set of label tags associated with the ServerTlsPolicy resource.
  /// [location] The location of the server tls policy.
  /// [mtlsPolicy] This field is required if the policy is used with external HTTPS load balancers. This field can be empty for Traffic Director.
  /// [name] Name of the ServerTlsPolicy resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [serverCertificate] Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS.
  const ServerTlsPolicyArgs({
    this.allowOpen,
    this.deletionPolicy,
    this.description,
    this.labels,
    this.location,
    this.mtlsPolicy,
    this.name,
    this.project,
    this.serverCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowOpen': ?allowOpen,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'labels': ?labels,
      'location': ?location,
      'mtlsPolicy': ?pulumi.Input.mapOptionalInputValue<ServerTlsPolicyMtlsPolicy, Map<String, dynamic>>(mtlsPolicy, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'serverCertificate': ?pulumi.Input.mapOptionalInputValue<ServerTlsPolicyServerCertificate, Map<String, dynamic>>(serverCertificate, (value) => value.toMap()),
    };
  }

  factory ServerTlsPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ServerTlsPolicyArgs(
      allowOpen: (() { final guardedValue = map['allowOpen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mtlsPolicy: (() { final guardedValue = map['mtlsPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerTlsPolicyMtlsPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverCertificate: (() { final guardedValue = map['serverCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerTlsPolicyServerCertificate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
