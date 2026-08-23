// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_authorization_dns_resource_record.dart';

/// Input properties used for looking up and filtering DnsAuthorization resources.
class DnsAuthorizationState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
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
  const DnsAuthorizationState({
    this.deletionPolicy,
    this.description,
    this.dnsResourceRecords,
    this.domain,
    this.effectiveLabels,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsResourceRecords: (() { final guardedValue = map['dnsResourceRecords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DnsAuthorizationDnsResourceRecord>(guardedValue, (value) => DnsAuthorizationDnsResourceRecord.fromMap((value as Map).cast<String, dynamic>()))); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
