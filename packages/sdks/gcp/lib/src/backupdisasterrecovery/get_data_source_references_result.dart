// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_source_references_data_source_reference.dart';

/// Result data returned by getDataSourceReferences.
class GetDataSourceReferencesResult {
  final List<GetDataSourceReferencesDataSourceReference> dataSourceReferences;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String project;
  final String? resourceType;

  /// Creates a new [GetDataSourceReferencesResult].
  /// [dataSourceReferences] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [project] Required.
  /// [resourceType] Optional.
  GetDataSourceReferencesResult({
    required this.dataSourceReferences,
    required this.id,
    required this.location,
    required this.project,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceReferences': pulumi.Input.encodeList<GetDataSourceReferencesDataSourceReference, Map<String, dynamic>>(dataSourceReferences, (value) => value.toMap()),
      'id': id,
      'location': location,
      'project': project,
      'resourceType': ?resourceType,
    };
  }

  factory GetDataSourceReferencesResult.fromMap(Map<String, dynamic> map) {
    return GetDataSourceReferencesResult(
      dataSourceReferences: pulumi.Input.decodeList<GetDataSourceReferencesDataSourceReference>(map['dataSourceReferences']!, (value) => GetDataSourceReferencesDataSourceReference.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: map['location'] as String,
      project: map['project'] as String,
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

