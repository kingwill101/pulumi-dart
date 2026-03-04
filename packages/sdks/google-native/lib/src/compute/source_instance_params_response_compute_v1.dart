// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_instantiation_config_response_compute_v1.dart';

/// A specification of the parameters to use when creating the instance template from a source instance.
class SourceInstanceParamsResponseComputeV1 {
  /// Attached disks configuration. If not provided, defaults are applied: For boot disk and any other R/W disks, the source images for each disk will be used. For read-only disks, they will be attached in read-only mode. Local SSD disks will be created as blank volumes.
  final pulumi.Input<List<DiskInstantiationConfigResponseComputeV1>>
  diskConfigs;

  /// Creates a new [SourceInstanceParamsResponseComputeV1].
  /// [diskConfigs] Attached disks configuration. If not provided, defaults are applied: For boot disk and any other R/W disks, the source images for each disk will be used. For read-only disks, they will be attached in read-only mode. Local SSD disks will be created as blank volumes.
  SourceInstanceParamsResponseComputeV1({required this.diskConfigs});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskConfigs':
          pulumi.Input.mapInputValue<
            List<DiskInstantiationConfigResponseComputeV1>,
            List<Map<String, dynamic>>
          >(
            diskConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  DiskInstantiationConfigResponseComputeV1,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory SourceInstanceParamsResponseComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return SourceInstanceParamsResponseComputeV1(
      diskConfigs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<DiskInstantiationConfigResponseComputeV1>(
          map['diskConfigs']!,
          (value) => DiskInstantiationConfigResponseComputeV1.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
