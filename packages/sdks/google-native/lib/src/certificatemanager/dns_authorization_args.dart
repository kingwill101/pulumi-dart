// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_certificatemanager_v1_dns_authorization_args_doc}
/// The set of arguments for DnsAuthorization.
/// {@endtemplate}
/// {@macro pulumi_certificatemanager_v1_dns_authorization_args_doc}
class DnsAuthorizationArgs {
  /// One or more paragraphs of text description of a DnsAuthorization.
  final pulumi.Input<String>? description;
  /// Required. A user-provided name of the dns authorization.
  final pulumi.Input<String> dnsAuthorizationId;
  /// Immutable. A domain that is being authorized. A DnsAuthorization resource covers a single domain and its wildcard, e.g. authorization for `example.com` can be used to issue certificates for `example.com` and `*.example.com`.
  final pulumi.Input<String> domain;
  /// Set of labels associated with a DnsAuthorization.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// A user-defined name of the dns authorization. DnsAuthorization names must be unique globally and match pattern `projects/*/locations/*/dnsAuthorizations/*`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [DnsAuthorizationArgs].
  /// [description] One or more paragraphs of text description of a DnsAuthorization.
  /// [dnsAuthorizationId] Required. A user-provided name of the dns authorization.
  /// [domain] Immutable. A domain that is being authorized. A DnsAuthorization resource covers a single domain and its wildcard, e.g. authorization for `example.com` can be used to issue certificates for `example.com` and `*.example.com`.
  /// [labels] Set of labels associated with a DnsAuthorization.
  /// [location] Optional.
  /// [name] A user-defined name of the dns authorization. DnsAuthorization names must be unique globally and match pattern `projects/*/locations/*/dnsAuthorizations/*`.
  /// [project] Optional.
  DnsAuthorizationArgs({
    pulumi.Output<String>? description,
    required pulumi.Output<String> dnsAuthorizationId,
    required pulumi.Output<String> domain,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      dnsAuthorizationId = pulumi.Input.asInput<String>(dnsAuthorizationId),
      domain = pulumi.Input.asInput<String>(domain),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'dnsAuthorizationId': dnsAuthorizationId,
      'domain': domain,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory DnsAuthorizationArgs.fromMap(Map<String, dynamic> map) {
    return DnsAuthorizationArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dnsAuthorizationId: pulumi.Output.create<String>(map['dnsAuthorizationId'] as String),
      domain: pulumi.Output.create<String>(map['domain'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

