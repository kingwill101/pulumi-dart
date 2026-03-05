// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_instantiation_config.dart';

/// A specification of the parameters to use when creating the instance template from a source instance.
class SourceInstanceParams {
  /// Attached disks configuration. If not provided, defaults are applied: For boot disk and any other R/W disks, the source images for each disk will be used. For read-only disks, they will be attached in read-only mode. Local SSD disks will be created as blank volumes.
  final pulumi.Input<List<DiskInstantiationConfig>>? diskConfigs;

  /// Creates a new [SourceInstanceParams].
  /// [diskConfigs] Attached disks configuration. If not provided, defaults are applied: For boot disk and any other R/W disks, the source images for each disk will be used. For read-only disks, they will be attached in read-only mode. Local SSD disks will be created as blank volumes.
  SourceInstanceParams({
    this.diskConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskConfigs': ?pulumi.Input.mapOptionalInputValue<List<DiskInstantiationConfig>, List<Map<String, dynamic>>>(diskConfigs, (value) => pulumi.Input.encodeList<DiskInstantiationConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SourceInstanceParams.fromMap(Map<String, dynamic> map) {
    return SourceInstanceParams(
      diskConfigs: (() { final guardedValue = map['diskConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DiskInstantiationConfig>(guardedValue, (value) => DiskInstantiationConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

