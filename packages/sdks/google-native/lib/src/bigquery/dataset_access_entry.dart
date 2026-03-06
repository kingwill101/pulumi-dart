// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_access_entry_target_types_item.dart';
import 'dataset_reference.dart';

class DatasetAccessEntry {
  /// [Required] The dataset this entry applies to.
  final pulumi.Input<DatasetReference>? dataset;
  final pulumi.Input<List<DatasetAccessEntryTargetTypesItem>>? targetTypes;

  /// Creates a new [DatasetAccessEntry].
  /// [dataset] [Required] The dataset this entry applies to.
  /// [targetTypes] Optional.
  const DatasetAccessEntry({
    this.dataset,
    this.targetTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': ?pulumi.Input.mapOptionalInputValue<DatasetReference, Map<String, dynamic>>(dataset, (value) => value.toMap()),
      'targetTypes': ?pulumi.Input.mapOptionalInputValue<List<DatasetAccessEntryTargetTypesItem>, List<String>>(targetTypes, (value) => pulumi.Input.encodeList<DatasetAccessEntryTargetTypesItem, String>(value, (value) => value.wireValue)),
    };
  }

  factory DatasetAccessEntry.fromMap(Map<String, dynamic> map) {
    return DatasetAccessEntry(
      dataset: (() { final guardedValue = map['dataset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetTypes: (() { final guardedValue = map['targetTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DatasetAccessEntryTargetTypesItem>(guardedValue, (value) => DatasetAccessEntryTargetTypesItem.fromValue(value as String))); })(),
    );
  }
}

