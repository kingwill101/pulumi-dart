// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_instantiation_config_compute_v1.dart';

/// A specification of the parameters to use when creating the instance template from a source instance.
class SourceInstanceParamsComputeV1 {
  /// Attached disks configuration. If not provided, defaults are applied: For boot disk and any other R/W disks, the source images for each disk will be used. For read-only disks, they will be attached in read-only mode. Local SSD disks will be created as blank volumes.
  final pulumi.Input<List<DiskInstantiationConfigComputeV1>>? diskConfigs;

  /// Creates a new [SourceInstanceParamsComputeV1].
  /// [diskConfigs] Attached disks configuration. If not provided, defaults are applied: For boot disk and any other R/W disks, the source images for each disk will be used. For read-only disks, they will be attached in read-only mode. Local SSD disks will be created as blank volumes.
  SourceInstanceParamsComputeV1({
    this.diskConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskConfigs': ?pulumi.Input.mapOptionalInputValue<List<DiskInstantiationConfigComputeV1>, List<Map<String, dynamic>>>(diskConfigs, (value) => pulumi.Input.encodeList<DiskInstantiationConfigComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SourceInstanceParamsComputeV1.fromMap(Map<String, dynamic> map) {
    return SourceInstanceParamsComputeV1(
      diskConfigs: map['diskConfigs'] == null ? null : (pulumi.Input.decodeList<DiskInstantiationConfigComputeV1>(map['diskConfigs']!, (value) => DiskInstantiationConfigComputeV1.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

