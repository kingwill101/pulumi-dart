// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_certificatemanager_certificate_map_entry_certificate_map_entry_args_doc}
/// The set of arguments for CertificateMapEntry.
/// {@endtemplate}
/// {@macro pulumi_certificatemanager_certificate_map_entry_certificate_map_entry_args_doc}
class CertificateMapEntryArgs {
  /// A set of Certificates defines for the given hostname.
  /// There can be defined up to fifteen certificates in each Certificate Map Entry.
  /// Each certificate must match pattern projects/*/locations/*/certificates/*.
  final pulumi.Input<List<String>> certificates;

  /// A human-readable description of the resource.
  final pulumi.Input<String>? description;

  /// A Hostname (FQDN, e.g. example.com) or a wildcard hostname expression (*.example.com)
  /// for a set of hostnames with common suffix. Used as Server Name Indication (SNI) for
  /// selecting a proper certificate.
  final pulumi.Input<String>? hostname;

  /// Set of labels associated with a Certificate Map Entry.
  /// An object containing a list of "key": value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// A map entry that is inputted into the certificate map
  final pulumi.Input<String> map;

  /// A predefined matcher for particular cases, other than SNI selection
  final pulumi.Input<String>? matcher;

  /// A user-defined name of the Certificate Map Entry. Certificate Map Entry
  /// names must be unique globally and match pattern
  /// 'projects/*/locations/*/certificateMaps/*/certificateMapEntries/*'
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [CertificateMapEntryArgs].
  /// [certificates] A set of Certificates defines for the given hostname.
  /// [description] A human-readable description of the resource.
  /// [hostname] A Hostname (FQDN, e.g. example.com) or a wildcard hostname expression (*.example.com)
  /// [labels] Set of labels associated with a Certificate Map Entry.
  /// [map] A map entry that is inputted into the certificate map
  /// [matcher] A predefined matcher for particular cases, other than SNI selection
  /// [name] A user-defined name of the Certificate Map Entry. Certificate Map Entry
  /// [project] The ID of the project in which the resource belongs.
  CertificateMapEntryArgs({
    required this.certificates,
    this.description,
    this.hostname,
    this.labels,
    required this.map,
    this.matcher,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': certificates,
      'description': ?description,
      'hostname': ?hostname,
      'labels': ?labels,
      'map': map,
      'matcher': ?matcher,
      'name': ?name,
      'project': ?project,
    };
  }

  factory CertificateMapEntryArgs.fromMap(Map<String, dynamic> map) {
    return CertificateMapEntryArgs(
      certificates: pulumi.Input.fromValue(
        (map['certificates'] as List).cast<String>(),
      ),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hostname: (() {
        final guardedValue = map['hostname'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      map: pulumi.Input.fromValue(map['map'] as String),
      matcher: (() {
        final guardedValue = map['matcher'];
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
    );
  }
}
