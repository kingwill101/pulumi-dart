// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flexible_app_version_resources_volume.dart';

class FlexibleAppVersionResources {
  /// Number of CPU cores needed.
  final pulumi.Input<int>? cpu;
  /// Disk size (GB) needed.
  final pulumi.Input<int>? diskGb;
  /// Memory (GB) needed.
  final pulumi.Input<double>? memoryGb;
  /// List of ports, or port pairs, to forward from the virtual machine to the application container.
  /// Structure is documented below.
  final pulumi.Input<List<FlexibleAppVersionResourcesVolume>>? volumes;

  /// Creates a new [FlexibleAppVersionResources].
  /// [cpu] Number of CPU cores needed.
  /// [diskGb] Disk size (GB) needed.
  /// [memoryGb] Memory (GB) needed.
  /// [volumes] List of ports, or port pairs, to forward from the virtual machine to the application container.
  FlexibleAppVersionResources({
    this.cpu,
    this.diskGb,
    this.memoryGb,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'diskGb': ?diskGb,
      'memoryGb': ?memoryGb,
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<FlexibleAppVersionResourcesVolume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<FlexibleAppVersionResourcesVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FlexibleAppVersionResources.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionResources(
      cpu: map['cpu'] == null ? null : (map['cpu']! as int).input(),
      diskGb: map['diskGb'] == null ? null : (map['diskGb']! as int).input(),
      memoryGb: map['memoryGb'] == null ? null : (map['memoryGb']! as double).input(),
      volumes: map['volumes'] == null ? null : (pulumi.Input.decodeList<FlexibleAppVersionResourcesVolume>(map['volumes']!, (value) => FlexibleAppVersionResourcesVolume.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

