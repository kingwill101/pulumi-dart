// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_connector_principal_info.dart';

/// Result data returned by getAppConnector.
class GetAppConnectorResult {
  final String? deletionPolicy;
  final String? displayName;
  final Map<String, String>? effectiveLabels;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final Map<String, String>? labels;
  final String? name;
  final List<GetAppConnectorPrincipalInfo>? principalInfos;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final String? region;
  final String? state;

  /// Creates a new [GetAppConnectorResult].
  /// [deletionPolicy] Optional.
  /// [displayName] Optional.
  /// [effectiveLabels] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Optional.
  /// [name] Optional.
  /// [principalInfos] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [region] Optional.
  /// [state] Optional.
  const GetAppConnectorResult({
    this.deletionPolicy,
    this.displayName,
    this.effectiveLabels,
    this.id,
    this.labels,
    this.name,
    this.principalInfos,
    this.project,
    this.pulumiLabels,
    this.region,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'id': ?id,
      'labels': ?labels,
      'name': ?name,
      'principalInfos': ?(() { final guardedValue = principalInfos; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAppConnectorPrincipalInfo, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'state': ?state,
    };
  }

  factory GetAppConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetAppConnectorResult(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      principalInfos: (() { final guardedValue = map['principalInfos']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAppConnectorPrincipalInfo>(guardedValue, (value) => GetAppConnectorPrincipalInfo.fromMap((value as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
