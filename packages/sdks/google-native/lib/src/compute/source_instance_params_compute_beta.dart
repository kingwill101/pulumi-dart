// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_instantiation_config_compute_beta.dart';

/// A specification of the parameters to use when creating the instance template from a source instance.
class SourceInstanceParamsComputeBeta {
  /// Attached disks configuration. If not provided, defaults are applied: For boot disk and any other R/W disks, the source images for each disk will be used. For read-only disks, they will be attached in read-only mode. Local SSD disks will be created as blank volumes.
  final pulumi.Input<List<DiskInstantiationConfigComputeBeta>>? diskConfigs;

  /// Creates a new [SourceInstanceParamsComputeBeta].
  /// [diskConfigs] Attached disks configuration. If not provided, defaults are applied: For boot disk and any other R/W disks, the source images for each disk will be used. For read-only disks, they will be attached in read-only mode. Local SSD disks will be created as blank volumes.
  const SourceInstanceParamsComputeBeta({
    this.diskConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskConfigs': ?pulumi.Input.mapOptionalInputValue<List<DiskInstantiationConfigComputeBeta>, List<Map<String, dynamic>>>(diskConfigs, (value) => pulumi.Input.encodeList<DiskInstantiationConfigComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SourceInstanceParamsComputeBeta.fromMap(Map<String, dynamic> map) {
    return SourceInstanceParamsComputeBeta(
      diskConfigs: (() { final guardedValue = map['diskConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DiskInstantiationConfigComputeBeta>(guardedValue, (value) => DiskInstantiationConfigComputeBeta.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
