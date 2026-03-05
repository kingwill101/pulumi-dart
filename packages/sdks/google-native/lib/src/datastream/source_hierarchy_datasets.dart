// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_template.dart';

/// Destination datasets are created so that hierarchy of the destination data objects matches the source hierarchy.
class SourceHierarchyDatasets {
  /// The dataset template to use for dynamic dataset creation.
  final pulumi.Input<DatasetTemplate>? datasetTemplate;

  /// Creates a new [SourceHierarchyDatasets].
  /// [datasetTemplate] The dataset template to use for dynamic dataset creation.
  SourceHierarchyDatasets({
    this.datasetTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetTemplate': ?pulumi.Input.mapOptionalInputValue<DatasetTemplate, Map<String, dynamic>>(datasetTemplate, (value) => value.toMap()),
    };
  }

  factory SourceHierarchyDatasets.fromMap(Map<String, dynamic> map) {
    return SourceHierarchyDatasets(
      datasetTemplate: (() { final guardedValue = map['datasetTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetTemplate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

