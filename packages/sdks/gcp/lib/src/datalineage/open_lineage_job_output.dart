// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_lineage_job_output_catalog.dart';
import 'open_lineage_job_output_column_lineage.dart';
import 'open_lineage_job_output_symlink.dart';

class OpenLineageJobOutput {
  /// Catalog information for the dataset.
  /// Structure is documented below.
  final pulumi.Input<OpenLineageJobOutputCatalog?>? catalog;
  /// Column-level lineage information for the output dataset.
  /// Structure is documented below.
  final pulumi.Input<OpenLineageJobOutputColumnLineage?>? columnLineage;
  /// Name of the dataset.
  final pulumi.Input<String> name;
  /// Namespace of the dataset.
  final pulumi.Input<String> namespace;
  /// Symlink targets for the dataset.
  /// Structure is documented below.
  final pulumi.Input<List<OpenLineageJobOutputSymlink>?>? symlinks;

  /// Creates a new [OpenLineageJobOutput].
  /// [catalog] Catalog information for the dataset.
  /// [columnLineage] Column-level lineage information for the output dataset.
  /// [name] Name of the dataset.
  /// [namespace] Namespace of the dataset.
  /// [symlinks] Symlink targets for the dataset.
  const OpenLineageJobOutput({
    this.catalog,
    this.columnLineage,
    required this.name,
    required this.namespace,
    this.symlinks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalog': ?pulumi.Input.mapOptionalInputValue<OpenLineageJobOutputCatalog, Map<String, dynamic>>(catalog, (value) => value.toMap()),
      'columnLineage': ?pulumi.Input.mapOptionalInputValue<OpenLineageJobOutputColumnLineage, Map<String, dynamic>>(columnLineage, (value) => value.toMap()),
      'name': name,
      'namespace': namespace,
      'symlinks': ?pulumi.Input.mapOptionalInputValue<List<OpenLineageJobOutputSymlink>, List<Map<String, dynamic>>>(symlinks, (value) => pulumi.Input.encodeList<OpenLineageJobOutputSymlink, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OpenLineageJobOutput.fromMap(Map<String, dynamic> map) {
    return OpenLineageJobOutput(
      catalog: (() { final guardedValue = map['catalog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OpenLineageJobOutputCatalog.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      columnLineage: (() { final guardedValue = map['columnLineage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OpenLineageJobOutputColumnLineage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      symlinks: (() { final guardedValue = map['symlinks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OpenLineageJobOutputSymlink>(guardedValue, (value) => OpenLineageJobOutputSymlink.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
