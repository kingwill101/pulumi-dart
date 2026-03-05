// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aml_filesystem_archive_response.dart';
import 'aml_filesystem_hsm_settings_response.dart';

/// Hydration and archive settings and status
class AmlFilesystemResponseHsm {
  /// Archive status
  final pulumi.Input<List<AmlFilesystemArchiveResponse>> archiveStatus;
  /// Specifies HSM settings of the AML file system.
  final pulumi.Input<AmlFilesystemHsmSettingsResponse>? settings;

  /// Creates a new [AmlFilesystemResponseHsm].
  /// [archiveStatus] Archive status
  /// [settings] Specifies HSM settings of the AML file system.
  AmlFilesystemResponseHsm({
    required this.archiveStatus,
    this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveStatus': pulumi.Input.mapInputValue<List<AmlFilesystemArchiveResponse>, List<Map<String, dynamic>>>(archiveStatus, (value) => pulumi.Input.encodeList<AmlFilesystemArchiveResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'settings': ?pulumi.Input.mapOptionalInputValue<AmlFilesystemHsmSettingsResponse, Map<String, dynamic>>(settings, (value) => value.toMap()),
    };
  }

  factory AmlFilesystemResponseHsm.fromMap(Map<String, dynamic> map) {
    return AmlFilesystemResponseHsm(
      archiveStatus: pulumi.Input.fromValue(pulumi.Input.decodeList<AmlFilesystemArchiveResponse>(map['archiveStatus']!, (value) => AmlFilesystemArchiveResponse.fromMap((value as Map).cast<String, dynamic>()))),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AmlFilesystemHsmSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

