// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_exadata_infrastructures_cloud_exadata_infrastructure.dart';

/// Result data returned by getCloudExadataInfrastructures.
class GetCloudExadataInfrastructuresResult {
  final List<GetCloudExadataInfrastructuresCloudExadataInfrastructure>? cloudExadataInfrastructures;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? project;

  /// Creates a new [GetCloudExadataInfrastructuresResult].
  /// [cloudExadataInfrastructures] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [project] Optional.
  const GetCloudExadataInfrastructuresResult({
    this.cloudExadataInfrastructures,
    this.id,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudExadataInfrastructures': ?(() { final guardedValue = cloudExadataInfrastructures; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCloudExadataInfrastructuresCloudExadataInfrastructure, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetCloudExadataInfrastructuresResult.fromMap(Map<String, dynamic> map) {
    return GetCloudExadataInfrastructuresResult(
      cloudExadataInfrastructures: (() { final guardedValue = map['cloudExadataInfrastructures']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCloudExadataInfrastructuresCloudExadataInfrastructure>(guardedValue, (value) => GetCloudExadataInfrastructuresCloudExadataInfrastructure.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
