// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CertificateMapEntry resources.
class CertificateMapEntryState {
  /// A set of Certificates defines for the given hostname.
  /// There can be defined up to fifteen certificates in each Certificate Map Entry.
  /// Each certificate must match pattern projects/*/locations/*/certificates/*.
  final pulumi.Input<List<String>>? certificates;
  /// Creation timestamp of a Certificate Map Entry. Timestamp in RFC3339 UTC "Zulu" format,
  /// with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? createTime;
  /// A human-readable description of the resource.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
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
  final pulumi.Input<String>? map;
  /// A predefined matcher for particular cases, other than SNI selection
  final pulumi.Input<String>? matcher;
  /// A user-defined name of the Certificate Map Entry. Certificate Map Entry
  /// names must be unique globally and match pattern
  /// 'projects/*/locations/*/certificateMaps/*/certificateMapEntries/*'
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// A serving state of this Certificate Map Entry.
  final pulumi.Input<String>? state;
  /// Update timestamp of a Certificate Map Entry. Timestamp in RFC3339 UTC "Zulu" format,
  /// with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? updateTime;

  /// Creates a new [CertificateMapEntryState].
  /// [certificates] A set of Certificates defines for the given hostname.
  /// [createTime] Creation timestamp of a Certificate Map Entry. Timestamp in RFC3339 UTC "Zulu" format,
  /// [description] A human-readable description of the resource.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [hostname] A Hostname (FQDN, e.g. example.com) or a wildcard hostname expression (*.example.com)
  /// [labels] Set of labels associated with a Certificate Map Entry.
  /// [map] A map entry that is inputted into the certificate map
  /// [matcher] A predefined matcher for particular cases, other than SNI selection
  /// [name] A user-defined name of the Certificate Map Entry. Certificate Map Entry
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [state] A serving state of this Certificate Map Entry.
  /// [updateTime] Update timestamp of a Certificate Map Entry. Timestamp in RFC3339 UTC "Zulu" format,
  CertificateMapEntryState({
    pulumi.Output<List<String>>? certificates,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? hostname,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? map,
    pulumi.Output<String>? matcher,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? state,
    pulumi.Output<String>? updateTime,
  }) :
      certificates = pulumi.Input.asOptionalInput<List<String>>(certificates),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      hostname = pulumi.Input.asOptionalInput<String>(hostname),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      map = pulumi.Input.asOptionalInput<String>(map),
      matcher = pulumi.Input.asOptionalInput<String>(matcher),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      state = pulumi.Input.asOptionalInput<String>(state),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': ?certificates,
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'hostname': ?hostname,
      'labels': ?labels,
      'map': ?map,
      'matcher': ?matcher,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory CertificateMapEntryState.fromMap(Map<String, dynamic> map) {
    return CertificateMapEntryState(
      certificates: map['certificates'] == null ? null : pulumi.Output.create<List<String>>((map['certificates'] as List).cast<String>()),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      hostname: map['hostname'] == null ? null : pulumi.Output.create<String>(map['hostname'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      map: map['map'] == null ? null : pulumi.Output.create<String>(map['map'] as String),
      matcher: map['matcher'] == null ? null : pulumi.Output.create<String>(map['matcher'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

