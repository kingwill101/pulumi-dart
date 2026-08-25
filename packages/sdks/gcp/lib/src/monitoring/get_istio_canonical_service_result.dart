// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_istio_canonical_service_telemetry.dart';

/// Result data returned by getIstioCanonicalService.
class GetIstioCanonicalServiceResult {
  final String? canonicalService;
  final String? canonicalServiceNamespace;
  final String? deletionPolicy;
  /// Name used for UI elements listing this (Monitoring) Service.
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? meshUid;
  /// The full REST resource name for this channel. The syntax is:
  /// `projects/[PROJECT_ID]/services/[SERVICE_ID]`.
  final String? name;
  final String? project;
  final String? serviceId;
  /// Configuration for how to query telemetry on the Service. Structure is documented below.
  final List<GetIstioCanonicalServiceTelemetry>? telemetries;
  final Map<String, String>? userLabels;

  /// Creates a new [GetIstioCanonicalServiceResult].
  /// [canonicalService] Optional.
  /// [canonicalServiceNamespace] Optional.
  /// [deletionPolicy] Optional.
  /// [displayName] Name used for UI elements listing this (Monitoring) Service.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [meshUid] Optional.
  /// [name] The full REST resource name for this channel. The syntax is:
  /// [project] Optional.
  /// [serviceId] Optional.
  /// [telemetries] Configuration for how to query telemetry on the Service. Structure is documented below.
  /// [userLabels] Optional.
  const GetIstioCanonicalServiceResult({
    this.canonicalService,
    this.canonicalServiceNamespace,
    this.deletionPolicy,
    this.displayName,
    this.id,
    this.meshUid,
    this.name,
    this.project,
    this.serviceId,
    this.telemetries,
    this.userLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canonicalService': ?canonicalService,
      'canonicalServiceNamespace': ?canonicalServiceNamespace,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'id': ?id,
      'meshUid': ?meshUid,
      'name': ?name,
      'project': ?project,
      'serviceId': ?serviceId,
      'telemetries': ?(() { final guardedValue = telemetries; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetIstioCanonicalServiceTelemetry, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'userLabels': ?userLabels,
    };
  }

  factory GetIstioCanonicalServiceResult.fromMap(Map<String, dynamic> map) {
    return GetIstioCanonicalServiceResult(
      canonicalService: (() { final guardedValue = map['canonicalService']; if (guardedValue == null) return null; return guardedValue as String; })(),
      canonicalServiceNamespace: (() { final guardedValue = map['canonicalServiceNamespace']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      meshUid: (() { final guardedValue = map['meshUid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceId: (() { final guardedValue = map['serviceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      telemetries: (() { final guardedValue = map['telemetries']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetIstioCanonicalServiceTelemetry>(guardedValue, (value) => GetIstioCanonicalServiceTelemetry.fromMap((value as Map).cast<String, dynamic>())); })(),
      userLabels: (() { final guardedValue = map['userLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
