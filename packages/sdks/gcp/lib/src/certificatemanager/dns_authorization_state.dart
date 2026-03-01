// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_authorization_dns_resource_record.dart';

/// Input properties used for looking up and filtering DnsAuthorization resources.
class DnsAuthorizationState {
  /// A human-readable description of the resource.
  final pulumi.Input<String>? description;
  /// The structure describing the DNS Resource Record that needs to be added
  /// to DNS configuration for the authorization to be usable by
  /// certificate.
  /// Structure is documented below.
  final pulumi.Input<List<DnsAuthorizationDnsResourceRecord>>? dnsResourceRecords;
  /// A domain which is being authorized. A DnsAuthorization resource covers a
  /// single domain and its wildcard, e.g. authorization for "example.com" can
  /// be used to issue certificates for "example.com" and "*.example.com".
  final pulumi.Input<String>? domain;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
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
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// type of DNS authorization. If unset during the resource creation, FIXED_RECORD will
  /// be used for global resources, and PER_PROJECT_RECORD will be used for other locations.
  /// FIXED_RECORD DNS authorization uses DNS-01 validation method
  /// PER_PROJECT_RECORD DNS authorization allows for independent management
  /// of Google-managed certificates with DNS authorization across multiple
  /// projects.
  /// Possible values are: `FIXED_RECORD`, `PER_PROJECT_RECORD`.
  final pulumi.Input<String>? type;

  /// Creates a new [DnsAuthorizationState].
  /// [description] A human-readable description of the resource.
  /// [dnsResourceRecords] The structure describing the DNS Resource Record that needs to be added
  /// [domain] A domain which is being authorized. A DnsAuthorization resource covers a
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Set of label tags associated with the DNS Authorization resource.
  /// [location] The Certificate Manager location. If not specified, "global" is used.
  /// [name] Name of the resource; provided by the client when the resource is created.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [type] type of DNS authorization. If unset during the resource creation, FIXED_RECORD will
  DnsAuthorizationState({
    pulumi.Output<String>? description,
    pulumi.Output<List<DnsAuthorizationDnsResourceRecord>>? dnsResourceRecords,
    pulumi.Output<String>? domain,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? type,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      dnsResourceRecords = pulumi.Input.asOptionalInput<List<DnsAuthorizationDnsResourceRecord>>(dnsResourceRecords),
      domain = pulumi.Input.asOptionalInput<String>(domain),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'dnsResourceRecords': ?pulumi.Input.mapOptionalInputValue<List<DnsAuthorizationDnsResourceRecord>, List<Map<String, dynamic>>>(dnsResourceRecords, (value) => pulumi.Input.encodeList<DnsAuthorizationDnsResourceRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'domain': ?domain,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'type': ?type,
    };
  }

  factory DnsAuthorizationState.fromMap(Map<String, dynamic> map) {
    return DnsAuthorizationState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dnsResourceRecords: map['dnsResourceRecords'] == null ? null : pulumi.Output.create<List<DnsAuthorizationDnsResourceRecord>>(pulumi.Input.decodeList<DnsAuthorizationDnsResourceRecord>(map['dnsResourceRecords'], (value) => DnsAuthorizationDnsResourceRecord.fromMap((value as Map).cast<String, dynamic>()))),
      domain: map['domain'] == null ? null : pulumi.Output.create<String>(map['domain'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

