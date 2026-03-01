// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_tls_policy_mtls_policy.dart';
import 'server_tls_policy_server_certificate.dart';

/// Input properties used for looking up and filtering ServerTlsPolicy resources.
class ServerTlsPolicyState {
  /// This field applies only for Traffic Director policies. It is must be set to false for external HTTPS load balancer policies.
  /// Determines if server allows plaintext connections. If set to true, server allows plain text connections. By default, it is set to false. This setting is not exclusive of other encryption modes. For example, if allowOpen and mtlsPolicy are set, server allows both plain text and mTLS connections. See documentation of other encryption modes to confirm compatibility.
  /// Consider using it if you wish to upgrade in place your deployment to TLS while having mixed TLS and non-TLS traffic reaching port :80.
  final pulumi.Input<bool>? allowOpen;
  /// Time the ServerTlsPolicy was created in UTC.
  final pulumi.Input<String>? createTime;
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Set of label tags associated with the ServerTlsPolicy resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
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
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS.
  /// Structure is documented below.
  final pulumi.Input<ServerTlsPolicyServerCertificate>? serverCertificate;
  /// Time the ServerTlsPolicy was updated in UTC.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ServerTlsPolicyState].
  /// [allowOpen] This field applies only for Traffic Director policies. It is must be set to false for external HTTPS load balancer policies.
  /// [createTime] Time the ServerTlsPolicy was created in UTC.
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Set of label tags associated with the ServerTlsPolicy resource.
  /// [location] The location of the server tls policy.
  /// [mtlsPolicy] This field is required if the policy is used with external HTTPS load balancers. This field can be empty for Traffic Director.
  /// [name] Name of the ServerTlsPolicy resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [serverCertificate] Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS.
  /// [updateTime] Time the ServerTlsPolicy was updated in UTC.
  ServerTlsPolicyState({
    pulumi.Output<bool>? allowOpen,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<ServerTlsPolicyMtlsPolicy>? mtlsPolicy,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<ServerTlsPolicyServerCertificate>? serverCertificate,
    pulumi.Output<String>? updateTime,
  }) :
      allowOpen = pulumi.Input.asOptionalInput<bool>(allowOpen),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      mtlsPolicy = pulumi.Input.asOptionalInput<ServerTlsPolicyMtlsPolicy>(mtlsPolicy),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      serverCertificate = pulumi.Input.asOptionalInput<ServerTlsPolicyServerCertificate>(serverCertificate),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowOpen': ?allowOpen,
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'mtlsPolicy': ?pulumi.Input.mapOptionalInputValue<ServerTlsPolicyMtlsPolicy, Map<String, dynamic>>(mtlsPolicy, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'serverCertificate': ?pulumi.Input.mapOptionalInputValue<ServerTlsPolicyServerCertificate, Map<String, dynamic>>(serverCertificate, (value) => value.toMap()),
      'updateTime': ?updateTime,
    };
  }

  factory ServerTlsPolicyState.fromMap(Map<String, dynamic> map) {
    return ServerTlsPolicyState(
      allowOpen: map['allowOpen'] == null ? null : pulumi.Output.create<bool>(map['allowOpen'] as bool),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      mtlsPolicy: map['mtlsPolicy'] == null ? null : pulumi.Output.create<ServerTlsPolicyMtlsPolicy>(ServerTlsPolicyMtlsPolicy.fromMap((map['mtlsPolicy'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      serverCertificate: map['serverCertificate'] == null ? null : pulumi.Output.create<ServerTlsPolicyServerCertificate>(ServerTlsPolicyServerCertificate.fromMap((map['serverCertificate'] as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

