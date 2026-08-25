// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_map_gclb_target.dart';

/// Result data returned by getCertificateMap.
class GetCertificateMapResult {
  final String? createTime;
  final String? deletionPolicy;
  final String? description;
  final Map<String, String>? effectiveLabels;
  final List<GetCertificateMapGclbTarget>? gclbTargets;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final Map<String, String>? labels;
  final String? name;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final String? updateTime;

  /// Creates a new [GetCertificateMapResult].
  /// [createTime] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [effectiveLabels] Optional.
  /// [gclbTargets] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [updateTime] Optional.
  const GetCertificateMapResult({
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.effectiveLabels,
    this.gclbTargets,
    this.id,
    this.labels,
    this.name,
    this.project,
    this.pulumiLabels,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'gclbTargets': ?(() { final guardedValue = gclbTargets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCertificateMapGclbTarget, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'updateTime': ?updateTime,
    };
  }

  factory GetCertificateMapResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateMapResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      gclbTargets: (() { final guardedValue = map['gclbTargets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCertificateMapGclbTarget>(guardedValue, (value) => GetCertificateMapGclbTarget.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
