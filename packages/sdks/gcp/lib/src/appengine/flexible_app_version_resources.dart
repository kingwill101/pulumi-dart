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
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      diskGb: (() { final guardedValue = map['diskGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      memoryGb: (() { final guardedValue = map['memoryGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FlexibleAppVersionResourcesVolume>(guardedValue, (value) => FlexibleAppVersionResourcesVolume.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

