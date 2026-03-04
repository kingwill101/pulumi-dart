// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_backing_store_source_vhost_user_file_sec_label.dart';

class DomainDevicesDiskMirrorBackingStoreSourceVhostUserFile {
  /// Specifies if data should be appended to the file used as a source.
  final pulumi.Input<String>? append;

  /// Sets the file path for the RNG source in the EGD backend.
  final pulumi.Input<String> path;

  /// Configures security label settings for the file source in the EGD backend.
  final pulumi.Input<
    List<DomainDevicesDiskMirrorBackingStoreSourceVhostUserFileSecLabel>
  >?
  secLabels;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceVhostUserFile].
  /// [append] Specifies if data should be appended to the file used as a source.
  /// [path] Sets the file path for the RNG source in the EGD backend.
  /// [secLabels] Configures security label settings for the file source in the EGD backend.
  DomainDevicesDiskMirrorBackingStoreSourceVhostUserFile({
    this.append,
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'append': ?append,
      'path': path,
      'secLabels':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              DomainDevicesDiskMirrorBackingStoreSourceVhostUserFileSecLabel
            >,
            List<Map<String, dynamic>>
          >(
            secLabels,
            (value) =>
                pulumi.Input.encodeList<
                  DomainDevicesDiskMirrorBackingStoreSourceVhostUserFileSecLabel,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceVhostUserFile.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDevicesDiskMirrorBackingStoreSourceVhostUserFile(
      append: (() {
        final guardedValue = map['append'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      path: pulumi.Input.fromValue(map['path'] as String),
      secLabels: (() {
        final guardedValue = map['secLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            DomainDevicesDiskMirrorBackingStoreSourceVhostUserFileSecLabel
          >(
            guardedValue,
            (value) =>
                DomainDevicesDiskMirrorBackingStoreSourceVhostUserFileSecLabel.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
