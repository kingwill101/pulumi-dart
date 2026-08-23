// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_map_gclb_target.dart';

/// Result data returned by getCertificateMap.
class GetCertificateMapResult {
  final String createTime;
  final String deletionPolicy;
  final String description;
  final Map<String, String> effectiveLabels;
  final List<GetCertificateMapGclbTarget> gclbTargets;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final Map<String, String> labels;
  final String name;
  final String? project;
  final Map<String, String> pulumiLabels;
  final String updateTime;

  /// Creates a new [GetCertificateMapResult].
  /// [createTime] Required.
  /// [deletionPolicy] Required.
  /// [description] Required.
  /// [effectiveLabels] Required.
  /// [gclbTargets] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Required.
  /// [name] Required.
  /// [project] Optional.
  /// [pulumiLabels] Required.
  /// [updateTime] Required.
  const GetCertificateMapResult({
    required this.createTime,
    required this.deletionPolicy,
    required this.description,
    required this.effectiveLabels,
    required this.gclbTargets,
    required this.id,
    required this.labels,
    required this.name,
    this.project,
    required this.pulumiLabels,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'deletionPolicy': deletionPolicy,
      'description': description,
      'effectiveLabels': effectiveLabels,
      'gclbTargets': pulumi.Input.encodeList<GetCertificateMapGclbTarget, Map<String, dynamic>>(gclbTargets, (value) => value.toMap()),
      'id': id,
      'labels': labels,
      'name': name,
      'project': ?project,
      'pulumiLabels': pulumiLabels,
      'updateTime': updateTime,
    };
  }

  factory GetCertificateMapResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateMapResult(
      createTime: map['createTime'] as String,
      deletionPolicy: map['deletionPolicy'] as String,
      description: map['description'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      gclbTargets: pulumi.Input.decodeList<GetCertificateMapGclbTarget>(map['gclbTargets']!, (value) => GetCertificateMapGclbTarget.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      updateTime: map['updateTime'] as String,
    );
  }
}
