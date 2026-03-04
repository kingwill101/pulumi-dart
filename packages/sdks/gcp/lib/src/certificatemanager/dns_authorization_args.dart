// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_certificatemanager_dns_authorization_dns_authorization_args_doc}
/// The set of arguments for DnsAuthorization.
/// {@endtemplate}
/// {@macro pulumi_certificatemanager_dns_authorization_dns_authorization_args_doc}
class DnsAuthorizationArgs {
  /// A human-readable description of the resource.
  final pulumi.Input<String>? description;

  /// A domain which is being authorized. A DnsAuthorization resource covers a
  /// single domain and its wildcard, e.g. authorization for "example.com" can
  /// be used to issue certificates for "example.com" and "*.example.com".
  final pulumi.Input<String> domain;

  /// Set of label tags associated with the DNS Authorization resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The Certificate Manager location. If not specified, "global" is used.
  final pulumi.Input<String>? location;

  /// Name of the resource; provided by the client when the resource is created.
  /// The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
  /// and all following characters must be a dash, underscore, letter or digit.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// type of DNS authorization. If unset during the resource creation, FIXED_RECORD will
  /// be used for global resources, and PER_PROJECT_RECORD will be used for other locations.
  /// FIXED_RECORD DNS authorization uses DNS-01 validation method
  /// PER_PROJECT_RECORD DNS authorization allows for independent management
  /// of Google-managed certificates with DNS authorization across multiple
  /// projects.
  /// Possible values are: `FIXED_RECORD`, `PER_PROJECT_RECORD`.
  final pulumi.Input<String>? type;

  /// Creates a new [DnsAuthorizationArgs].
  /// [description] A human-readable description of the resource.
  /// [domain] A domain which is being authorized. A DnsAuthorization resource covers a
  /// [labels] Set of label tags associated with the DNS Authorization resource.
  /// [location] The Certificate Manager location. If not specified, "global" is used.
  /// [name] Name of the resource; provided by the client when the resource is created.
  /// [project] The ID of the project in which the resource belongs.
  /// [type] type of DNS authorization. If unset during the resource creation, FIXED_RECORD will
  DnsAuthorizationArgs({
    this.description,
    required this.domain,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'domain': domain,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'type': ?type,
    };
  }

  factory DnsAuthorizationArgs.fromMap(Map<String, dynamic> map) {
    return DnsAuthorizationArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      domain: pulumi.Input.fromValue(map['domain'] as String),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
