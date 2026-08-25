// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_metadata.dart';
import 'get_service_status.dart';
import 'get_service_template.dart';
import 'get_service_traffic.dart';

/// Result data returned by getService.
class GetServiceResult {
  final bool? autogenerateRevisionName;
  final String? deletionPolicy;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final List<GetServiceMetadata>? metadatas;
  final String? name;
  final String? project;
  final List<GetServiceStatus>? statuses;
  final List<GetServiceTemplate>? templates;
  final List<GetServiceTraffic>? traffics;

  /// Creates a new [GetServiceResult].
  /// [autogenerateRevisionName] Optional.
  /// [deletionPolicy] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [metadatas] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [statuses] Optional.
  /// [templates] Optional.
  /// [traffics] Optional.
  const GetServiceResult({
    this.autogenerateRevisionName,
    this.deletionPolicy,
    this.id,
    this.location,
    this.metadatas,
    this.name,
    this.project,
    this.statuses,
    this.templates,
    this.traffics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autogenerateRevisionName': ?autogenerateRevisionName,
      'deletionPolicy': ?deletionPolicy,
      'id': ?id,
      'location': ?location,
      'metadatas': ?(() { final guardedValue = metadatas; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceMetadata, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'project': ?project,
      'statuses': ?(() { final guardedValue = statuses; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceStatus, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'templates': ?(() { final guardedValue = templates; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceTemplate, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'traffics': ?(() { final guardedValue = traffics; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceTraffic, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      autogenerateRevisionName: (() { final guardedValue = map['autogenerateRevisionName']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadatas: (() { final guardedValue = map['metadatas']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceMetadata>(guardedValue, (value) => GetServiceMetadata.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statuses: (() { final guardedValue = map['statuses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceStatus>(guardedValue, (value) => GetServiceStatus.fromMap((value as Map).cast<String, dynamic>())); })(),
      templates: (() { final guardedValue = map['templates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceTemplate>(guardedValue, (value) => GetServiceTemplate.fromMap((value as Map).cast<String, dynamic>())); })(),
      traffics: (() { final guardedValue = map['traffics']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceTraffic>(guardedValue, (value) => GetServiceTraffic.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
