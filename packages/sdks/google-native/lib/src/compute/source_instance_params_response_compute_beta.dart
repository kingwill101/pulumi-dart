// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_instantiation_config_response_compute_beta.dart';

/// A specification of the parameters to use when creating the instance template from a source instance.
class SourceInstanceParamsResponseComputeBeta {
  /// Attached disks configuration. If not provided, defaults are applied: For boot disk and any other R/W disks, the source images for each disk will be used. For read-only disks, they will be attached in read-only mode. Local SSD disks will be created as blank volumes.
  final pulumi.Input<List<DiskInstantiationConfigResponseComputeBeta>> diskConfigs;

  /// Creates a new [SourceInstanceParamsResponseComputeBeta].
  /// [diskConfigs] Attached disks configuration. If not provided, defaults are applied: For boot disk and any other R/W disks, the source images for each disk will be used. For read-only disks, they will be attached in read-only mode. Local SSD disks will be created as blank volumes.
  const SourceInstanceParamsResponseComputeBeta({
    required this.diskConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskConfigs': pulumi.Input.mapInputValue<List<DiskInstantiationConfigResponseComputeBeta>, List<Map<String, dynamic>>>(diskConfigs, (value) => pulumi.Input.encodeList<DiskInstantiationConfigResponseComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SourceInstanceParamsResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return SourceInstanceParamsResponseComputeBeta(
      diskConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<DiskInstantiationConfigResponseComputeBeta>(map['diskConfigs']!, (value) => DiskInstantiationConfigResponseComputeBeta.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

