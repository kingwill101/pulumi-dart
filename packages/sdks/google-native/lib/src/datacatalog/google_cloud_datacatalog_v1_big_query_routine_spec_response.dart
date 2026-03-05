// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Fields specific for BigQuery routines.
class GoogleCloudDatacatalogV1BigQueryRoutineSpecResponse {
  /// Paths of the imported libraries.
  final pulumi.Input<List<String>> importedLibraries;

  /// Creates a new [GoogleCloudDatacatalogV1BigQueryRoutineSpecResponse].
  /// [importedLibraries] Paths of the imported libraries.
  GoogleCloudDatacatalogV1BigQueryRoutineSpecResponse({
    required this.importedLibraries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'importedLibraries': importedLibraries,
    };
  }

  factory GoogleCloudDatacatalogV1BigQueryRoutineSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1BigQueryRoutineSpecResponse(
      importedLibraries: pulumi.Input.fromValue((map['importedLibraries'] as List).cast<String>()),
    );
  }
}

