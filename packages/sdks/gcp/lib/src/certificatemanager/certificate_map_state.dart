// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_map_gclb_target.dart';

/// Input properties used for looking up and filtering CertificateMap resources.
class CertificateMapState {
  /// Creation timestamp of a Certificate Map. Timestamp is in RFC3339 UTC "Zulu" format,
  /// accurate to nanoseconds with up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? createTime;
  /// A human-readable description of the resource.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// A list of target proxies that use this Certificate Map
  /// Structure is documented below.
  final pulumi.Input<List<CertificateMapGclbTarget>>? gclbTargets;
  /// Set of labels associated with a Certificate Map resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// A user-defined name of the Certificate Map. Certificate Map names must be unique
  /// globally and match the pattern `projects/*/locations/*/certificateMaps/*`.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Update timestamp of a Certificate Map. Timestamp is in RFC3339 UTC "Zulu" format,
  /// accurate to nanoseconds with up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? updateTime;

  /// Creates a new [CertificateMapState].
  /// [createTime] Creation timestamp of a Certificate Map. Timestamp is in RFC3339 UTC "Zulu" format,
  /// [description] A human-readable description of the resource.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [gclbTargets] A list of target proxies that use this Certificate Map
  /// [labels] Set of labels associated with a Certificate Map resource.
  /// [name] A user-defined name of the Certificate Map. Certificate Map names must be unique
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [updateTime] Update timestamp of a Certificate Map. Timestamp is in RFC3339 UTC "Zulu" format,
  CertificateMapState({
    this.createTime,
    this.description,
    this.effectiveLabels,
    this.gclbTargets,
    this.labels,
    this.name,
    this.project,
    this.pulumiLabels,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'gclbTargets': ?pulumi.Input.mapOptionalInputValue<List<CertificateMapGclbTarget>, List<Map<String, dynamic>>>(gclbTargets, (value) => pulumi.Input.encodeList<CertificateMapGclbTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'updateTime': ?updateTime,
    };
  }

  factory CertificateMapState.fromMap(Map<String, dynamic> map) {
    return CertificateMapState(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      gclbTargets: map['gclbTargets'] == null ? null : (pulumi.Input.decodeList<CertificateMapGclbTarget>(map['gclbTargets']!, (value) => CertificateMapGclbTarget.fromMap((value as Map).cast<String, dynamic>()))).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

