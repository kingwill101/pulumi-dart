// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Fields specific for BigQuery routines.
class GoogleCloudDatacatalogV1BigQueryRoutineSpec {
  /// Paths of the imported libraries.
  final pulumi.Input<List<String>>? importedLibraries;

  /// Creates a new [GoogleCloudDatacatalogV1BigQueryRoutineSpec].
  /// [importedLibraries] Paths of the imported libraries.
  GoogleCloudDatacatalogV1BigQueryRoutineSpec({this.importedLibraries});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'importedLibraries': ?importedLibraries};
  }

  factory GoogleCloudDatacatalogV1BigQueryRoutineSpec.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatacatalogV1BigQueryRoutineSpec(
      importedLibraries: (() {
        final guardedValue = map['importedLibraries'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
