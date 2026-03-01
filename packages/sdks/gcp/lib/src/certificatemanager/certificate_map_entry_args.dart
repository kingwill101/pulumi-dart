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
    required pulumi.Output<List<String>> certificates,
    pulumi.Output<String>? description,
    pulumi.Output<String>? hostname,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> map,
    pulumi.Output<String>? matcher,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
  }) :
      certificates = pulumi.Input.asInput<List<String>>(certificates),
      description = pulumi.Input.asOptionalInput<String>(description),
      hostname = pulumi.Input.asOptionalInput<String>(hostname),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      map = pulumi.Input.asInput<String>(map),
      matcher = pulumi.Input.asOptionalInput<String>(matcher),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

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
      certificates: pulumi.Output.create<List<String>>((map['certificates'] as List).cast<String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      hostname: map['hostname'] == null ? null : pulumi.Output.create<String>(map['hostname'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      map: pulumi.Output.create<String>(map['map'] as String),
      matcher: map['matcher'] == null ? null : pulumi.Output.create<String>(map['matcher'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

