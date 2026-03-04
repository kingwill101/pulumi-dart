// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_volume_configuration.dart';

/// The Disk Configuration Details.
class DiskConfiguration {
  /// The disk configuration for the db volume. For HANA, Required volumes are: ['hana/data', 'hana/log', hana/shared', 'usr/sap', 'os'], Optional volume : ['backup'].
  final pulumi.Input<Map<String, DiskVolumeConfiguration>>?
  diskVolumeConfigurations;

  /// Creates a new [DiskConfiguration].
  /// [diskVolumeConfigurations] The disk configuration for the db volume. For HANA, Required volumes are: ['hana/data', 'hana/log', hana/shared', 'usr/sap', 'os'], Optional volume : ['backup'].
  DiskConfiguration({this.diskVolumeConfigurations});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskVolumeConfigurations':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, DiskVolumeConfiguration>,
            Map<String, Map<String, dynamic>>
          >(
            diskVolumeConfigurations,
            (value) =>
                pulumi.Input.encodeMapValues<
                  DiskVolumeConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory DiskConfiguration.fromMap(Map<String, dynamic> map) {
    return DiskConfiguration(
      diskVolumeConfigurations: (() {
        final guardedValue = map['diskVolumeConfigurations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<DiskVolumeConfiguration>(
            guardedValue,
            (value) => DiskVolumeConfiguration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
