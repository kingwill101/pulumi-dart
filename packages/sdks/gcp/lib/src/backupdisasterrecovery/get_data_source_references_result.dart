// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_source_references_data_source_reference.dart';

/// Result data returned by getDataSourceReferences.
class GetDataSourceReferencesResult {
  final List<GetDataSourceReferencesDataSourceReference>? dataSourceReferences;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? project;
  final String? resourceType;

  /// Creates a new [GetDataSourceReferencesResult].
  /// [dataSourceReferences] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [project] Optional.
  /// [resourceType] Optional.
  const GetDataSourceReferencesResult({
    this.dataSourceReferences,
    this.id,
    this.location,
    this.project,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceReferences': ?(() { final guardedValue = dataSourceReferences; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDataSourceReferencesDataSourceReference, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'project': ?project,
      'resourceType': ?resourceType,
    };
  }

  factory GetDataSourceReferencesResult.fromMap(Map<String, dynamic> map) {
    return GetDataSourceReferencesResult(
      dataSourceReferences: (() { final guardedValue = map['dataSourceReferences']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDataSourceReferencesDataSourceReference>(guardedValue, (value) => GetDataSourceReferencesDataSourceReference.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
