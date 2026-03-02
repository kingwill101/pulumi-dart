// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_map_entry_matcher.dart';

/// {@template pulumi_certificatemanager_v1_certificate_map_entry_args_doc}
/// The set of arguments for CertificateMapEntry.
/// {@endtemplate}
/// {@macro pulumi_certificatemanager_v1_certificate_map_entry_args_doc}
class CertificateMapEntryArgs {
  /// Required. A user-provided name of the certificate map entry.
  final pulumi.Input<String> certificateMapEntryId;
  final pulumi.Input<String> certificateMapId;
  /// A set of Certificates defines for the given `hostname`. There can be defined up to four certificates in each Certificate Map Entry. Each certificate must match pattern `projects/*/locations/*/certificates/*`.
  final pulumi.Input<List<String>>? certificates;
  /// One or more paragraphs of text description of a certificate map entry.
  final pulumi.Input<String>? description;
  /// A Hostname (FQDN, e.g. `example.com`) or a wildcard hostname expression (`*.example.com`) for a set of hostnames with common suffix. Used as Server Name Indication (SNI) for selecting a proper certificate.
  final pulumi.Input<String>? hostname;
  /// Set of labels associated with a Certificate Map Entry.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// A predefined matcher for particular cases, other than SNI selection.
  final pulumi.Input<CertificateMapEntryMatcher>? matcher;
  /// A user-defined name of the Certificate Map Entry. Certificate Map Entry names must be unique globally and match pattern `projects/*/locations/*/certificateMaps/*/certificateMapEntries/*`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [CertificateMapEntryArgs].
  /// [certificateMapEntryId] Required. A user-provided name of the certificate map entry.
  /// [certificateMapId] Required.
  /// [certificates] A set of Certificates defines for the given `hostname`. There can be defined up to four certificates in each Certificate Map Entry. Each certificate must match pattern `projects/*/locations/*/certificates/*`.
  /// [description] One or more paragraphs of text description of a certificate map entry.
  /// [hostname] A Hostname (FQDN, e.g. `example.com`) or a wildcard hostname expression (`*.example.com`) for a set of hostnames with common suffix. Used as Server Name Indication (SNI) for selecting a proper certificate.
  /// [labels] Set of labels associated with a Certificate Map Entry.
  /// [location] Optional.
  /// [matcher] A predefined matcher for particular cases, other than SNI selection.
  /// [name] A user-defined name of the Certificate Map Entry. Certificate Map Entry names must be unique globally and match pattern `projects/*/locations/*/certificateMaps/*/certificateMapEntries/*`.
  /// [project] Optional.
  CertificateMapEntryArgs({
    required this.certificateMapEntryId,
    required this.certificateMapId,
    this.certificates,
    this.description,
    this.hostname,
    this.labels,
    this.location,
    this.matcher,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateMapEntryId': certificateMapEntryId,
      'certificateMapId': certificateMapId,
      'certificates': ?certificates,
      'description': ?description,
      'hostname': ?hostname,
      'labels': ?labels,
      'location': ?location,
      'matcher': ?pulumi.Input.mapOptionalInputValue<CertificateMapEntryMatcher, String>(matcher, (value) => value.value),
      'name': ?name,
      'project': ?project,
    };
  }

  factory CertificateMapEntryArgs.fromMap(Map<String, dynamic> map) {
    return CertificateMapEntryArgs(
      certificateMapEntryId: (map['certificateMapEntryId'] as String).input(),
      certificateMapId: (map['certificateMapId'] as String).input(),
      certificates: map['certificates'] == null ? null : ((map['certificates'] as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      hostname: map['hostname'] == null ? null : (map['hostname'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      matcher: map['matcher'] == null ? null : (CertificateMapEntryMatcher.fromValue(map['matcher'] as String)).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

