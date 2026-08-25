// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_engine_service_telemetry.dart';

/// Result data returned by getAppEngineService.
class GetAppEngineServiceResult {
  final String? deletionPolicy;
  /// Name used for UI elements listing this (Monitoring) Service.
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? moduleId;
  /// The full REST resource name for this channel. The syntax is:
  /// `projects/[PROJECT_ID]/services/[SERVICE_ID]`.
  final String? name;
  final String? project;
  final String? serviceId;
  /// Configuration for how to query telemetry on the Service. Structure is documented below.
  final List<GetAppEngineServiceTelemetry>? telemetries;
  final Map<String, String>? userLabels;

  /// Creates a new [GetAppEngineServiceResult].
  /// [deletionPolicy] Optional.
  /// [displayName] Name used for UI elements listing this (Monitoring) Service.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [moduleId] Optional.
  /// [name] The full REST resource name for this channel. The syntax is:
  /// [project] Optional.
  /// [serviceId] Optional.
  /// [telemetries] Configuration for how to query telemetry on the Service. Structure is documented below.
  /// [userLabels] Optional.
  const GetAppEngineServiceResult({
    this.deletionPolicy,
    this.displayName,
    this.id,
    this.moduleId,
    this.name,
    this.project,
    this.serviceId,
    this.telemetries,
    this.userLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'id': ?id,
      'moduleId': ?moduleId,
      'name': ?name,
      'project': ?project,
      'serviceId': ?serviceId,
      'telemetries': ?(() { final guardedValue = telemetries; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAppEngineServiceTelemetry, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'userLabels': ?userLabels,
    };
  }

  factory GetAppEngineServiceResult.fromMap(Map<String, dynamic> map) {
    return GetAppEngineServiceResult(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      moduleId: (() { final guardedValue = map['moduleId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceId: (() { final guardedValue = map['serviceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      telemetries: (() { final guardedValue = map['telemetries']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAppEngineServiceTelemetry>(guardedValue, (value) => GetAppEngineServiceTelemetry.fromMap((value as Map).cast<String, dynamic>())); })(),
      userLabels: (() { final guardedValue = map['userLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
