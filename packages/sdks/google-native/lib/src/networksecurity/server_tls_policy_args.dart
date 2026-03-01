// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_networksecurity_v1_certificate_provider.dart';
import 'mtlspolicy.dart';

/// {@template pulumi_networksecurity_v1_server_tls_policy_args_doc}
/// The set of arguments for ServerTlsPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1_server_tls_policy_args_doc}
class ServerTlsPolicyArgs {
  /// This field applies only for Traffic Director policies. It is must be set to false for external HTTPS load balancer policies. Determines if server allows plaintext connections. If set to true, server allows plain text connections. By default, it is set to false. This setting is not exclusive of other encryption modes. For example, if `allow_open` and `mtls_policy` are set, server allows both plain text and mTLS connections. See documentation of other encryption modes to confirm compatibility. Consider using it if you wish to upgrade in place your deployment to TLS while having mixed TLS and non-TLS traffic reaching port :80.
  final pulumi.Input<bool>? allowOpen;
  /// Free-text description of the resource.
  final pulumi.Input<String>? description;
  /// Set of label tags associated with the resource.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// This field is required if the policy is used with external HTTPS load balancers. This field can be empty for Traffic Director. Defines a mechanism to provision peer validation certificates for peer to peer authentication (Mutual TLS - mTLS). If not specified, client certificate will not be requested. The connection is treated as TLS and not mTLS. If `allow_open` and `mtls_policy` are set, server allows both plain text and mTLS connections.
  final pulumi.Input<MTLSPolicy>? mtlsPolicy;
  /// Name of the ServerTlsPolicy resource. It matches the pattern `projects/*/locations/{location}/serverTlsPolicies/{server_tls_policy}`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Optional if policy is to be used with Traffic Director. For external HTTPS load balancer must be empty. Defines a mechanism to provision server identity (public and private keys). Cannot be combined with `allow_open` as a permissive mode that allows both plain text and TLS is not supported.
  final pulumi.Input<GoogleCloudNetworksecurityV1CertificateProvider>? serverCertificate;
  /// Required. Short name of the ServerTlsPolicy resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "server_mtls_policy".
  final pulumi.Input<String> serverTlsPolicyId;

  /// Creates a new [ServerTlsPolicyArgs].
  /// [allowOpen] This field applies only for Traffic Director policies. It is must be set to false for external HTTPS load balancer policies. Determines if server allows plaintext connections. If set to true, server allows plain text connections. By default, it is set to false. This setting is not exclusive of other encryption modes. For example, if `allow_open` and `mtls_policy` are set, server allows both plain text and mTLS connections. See documentation of other encryption modes to confirm compatibility. Consider using it if you wish to upgrade in place your deployment to TLS while having mixed TLS and non-TLS traffic reaching port :80.
  /// [description] Free-text description of the resource.
  /// [labels] Set of label tags associated with the resource.
  /// [location] Optional.
  /// [mtlsPolicy] This field is required if the policy is used with external HTTPS load balancers. This field can be empty for Traffic Director. Defines a mechanism to provision peer validation certificates for peer to peer authentication (Mutual TLS - mTLS). If not specified, client certificate will not be requested. The connection is treated as TLS and not mTLS. If `allow_open` and `mtls_policy` are set, server allows both plain text and mTLS connections.
  /// [name] Name of the ServerTlsPolicy resource. It matches the pattern `projects/*/locations/{location}/serverTlsPolicies/{server_tls_policy}`
  /// [project] Optional.
  /// [serverCertificate] Optional if policy is to be used with Traffic Director. For external HTTPS load balancer must be empty. Defines a mechanism to provision server identity (public and private keys). Cannot be combined with `allow_open` as a permissive mode that allows both plain text and TLS is not supported.
  /// [serverTlsPolicyId] Required. Short name of the ServerTlsPolicy resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "server_mtls_policy".
  ServerTlsPolicyArgs({
    pulumi.Output<bool>? allowOpen,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<MTLSPolicy>? mtlsPolicy,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<GoogleCloudNetworksecurityV1CertificateProvider>? serverCertificate,
    required pulumi.Output<String> serverTlsPolicyId,
  }) :
      allowOpen = pulumi.Input.asOptionalInput<bool>(allowOpen),
      description = pulumi.Input.asOptionalInput<String>(description),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      mtlsPolicy = pulumi.Input.asOptionalInput<MTLSPolicy>(mtlsPolicy),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      serverCertificate = pulumi.Input.asOptionalInput<GoogleCloudNetworksecurityV1CertificateProvider>(serverCertificate),
      serverTlsPolicyId = pulumi.Input.asInput<String>(serverTlsPolicyId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowOpen': ?allowOpen,
      'description': ?description,
      'labels': ?labels,
      'location': ?location,
      'mtlsPolicy': ?pulumi.Input.mapOptionalInputValue<MTLSPolicy, Map<String, dynamic>>(mtlsPolicy, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'serverCertificate': ?pulumi.Input.mapOptionalInputValue<GoogleCloudNetworksecurityV1CertificateProvider, Map<String, dynamic>>(serverCertificate, (value) => value.toMap()),
      'serverTlsPolicyId': serverTlsPolicyId,
    };
  }

  factory ServerTlsPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ServerTlsPolicyArgs(
      allowOpen: map['allowOpen'] == null ? null : pulumi.Output.create<bool>(map['allowOpen'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      mtlsPolicy: map['mtlsPolicy'] == null ? null : pulumi.Output.create<MTLSPolicy>(MTLSPolicy.fromMap((map['mtlsPolicy'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      serverCertificate: map['serverCertificate'] == null ? null : pulumi.Output.create<GoogleCloudNetworksecurityV1CertificateProvider>(GoogleCloudNetworksecurityV1CertificateProvider.fromMap((map['serverCertificate'] as Map).cast<String, dynamic>())),
      serverTlsPolicyId: pulumi.Output.create<String>(map['serverTlsPolicyId'] as String),
    );
  }
}

