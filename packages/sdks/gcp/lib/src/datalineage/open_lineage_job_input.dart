// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_lineage_job_input_catalog.dart';
import 'open_lineage_job_input_symlink.dart';

class OpenLineageJobInput {
  /// Catalog information for the dataset.
  /// Structure is documented below.
  final pulumi.Input<OpenLineageJobInputCatalog?>? catalog;
  /// Name of the source dataset.
  final pulumi.Input<String> name;
  /// Namespace of the source dataset.
  final pulumi.Input<String> namespace;
  /// Symlink targets for the dataset.
  /// Structure is documented below.
  final pulumi.Input<List<OpenLineageJobInputSymlink>?>? symlinks;

  /// Creates a new [OpenLineageJobInput].
  /// [catalog] Catalog information for the dataset.
  /// [name] Name of the source dataset.
  /// [namespace] Namespace of the source dataset.
  /// [symlinks] Symlink targets for the dataset.
  const OpenLineageJobInput({
    this.catalog,
    required this.name,
    required this.namespace,
    this.symlinks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalog': ?pulumi.Input.mapOptionalInputValue<OpenLineageJobInputCatalog, Map<String, dynamic>>(catalog, (value) => value.toMap()),
      'name': name,
      'namespace': namespace,
      'symlinks': ?pulumi.Input.mapOptionalInputValue<List<OpenLineageJobInputSymlink>, List<Map<String, dynamic>>>(symlinks, (value) => pulumi.Input.encodeList<OpenLineageJobInputSymlink, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OpenLineageJobInput.fromMap(Map<String, dynamic> map) {
    return OpenLineageJobInput(
      catalog: (() { final guardedValue = map['catalog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OpenLineageJobInputCatalog.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      symlinks: (() { final guardedValue = map['symlinks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OpenLineageJobInputSymlink>(guardedValue, (value) => OpenLineageJobInputSymlink.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
