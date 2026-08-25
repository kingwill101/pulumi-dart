// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dns_authorization_dns_resource_record.dart';

/// Result data returned by getDnsAuthorization.
class GetDnsAuthorizationResult {
  final String? deletionPolicy;
  final String? description;
  final List<GetDnsAuthorizationDnsResourceRecord>? dnsResourceRecords;
  final String? domain;
  final Map<String, String>? effectiveLabels;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final Map<String, String>? labels;
  final String? location;
  final String? name;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final String? type;

  /// Creates a new [GetDnsAuthorizationResult].
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [dnsResourceRecords] Optional.
  /// [domain] Optional.
  /// [effectiveLabels] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Optional.
  /// [location] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [type] Optional.
  const GetDnsAuthorizationResult({
    this.deletionPolicy,
    this.description,
    this.dnsResourceRecords,
    this.domain,
    this.effectiveLabels,
    this.id,
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
      'dnsResourceRecords': ?(() { final guardedValue = dnsResourceRecords; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDnsAuthorizationDnsResourceRecord, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'domain': ?domain,
      'effectiveLabels': ?effectiveLabels,
      'id': ?id,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'type': ?type,
    };
  }

  factory GetDnsAuthorizationResult.fromMap(Map<String, dynamic> map) {
    return GetDnsAuthorizationResult(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsResourceRecords: (() { final guardedValue = map['dnsResourceRecords']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDnsAuthorizationDnsResourceRecord>(guardedValue, (value) => GetDnsAuthorizationDnsResourceRecord.fromMap((value as Map).cast<String, dynamic>())); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
