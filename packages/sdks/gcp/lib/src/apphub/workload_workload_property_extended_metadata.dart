// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_workload_property_extended_metadata_value.dart';

class WorkloadWorkloadPropertyExtendedMetadata {
  /// (Output)
  /// The key of the extended metadata.
  final pulumi.Input<String>? key;
  /// (Output)
  /// The value of the extended metadata.
  /// Structure is documented below.
  final pulumi.Input<List<WorkloadWorkloadPropertyExtendedMetadataValue>>? values;

  /// Creates a new [WorkloadWorkloadPropertyExtendedMetadata].
  /// [key] (Output)
  /// [values] (Output)
  const WorkloadWorkloadPropertyExtendedMetadata({
    this.key,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'values': ?pulumi.Input.mapOptionalInputValue<List<WorkloadWorkloadPropertyExtendedMetadataValue>, List<Map<String, dynamic>>>(values, (value) => pulumi.Input.encodeList<WorkloadWorkloadPropertyExtendedMetadataValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WorkloadWorkloadPropertyExtendedMetadata.fromMap(Map<String, dynamic> map) {
    return WorkloadWorkloadPropertyExtendedMetadata(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkloadWorkloadPropertyExtendedMetadataValue>(guardedValue, (value) => WorkloadWorkloadPropertyExtendedMetadataValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

