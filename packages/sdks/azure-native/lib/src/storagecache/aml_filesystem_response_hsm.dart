// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aml_filesystem_archive_response.dart';
import 'aml_filesystem_hsm_settings_response.dart';

/// Hydration and archive settings and status
class AmlFilesystemResponseHsm {
  /// Archive status
  final List<AmlFilesystemArchiveResponse> archiveStatus;
  /// Specifies HSM settings of the AML file system.
  final AmlFilesystemHsmSettingsResponse? settings;

  /// Creates a new [AmlFilesystemResponseHsm].
  /// [archiveStatus] Archive status
  /// [settings] Specifies HSM settings of the AML file system.
  AmlFilesystemResponseHsm({
    required this.archiveStatus,
    this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveStatus': pulumi.Input.encodeList<AmlFilesystemArchiveResponse, Map<String, dynamic>>(archiveStatus, (value) => value.toMap()),
      'settings': ?settings == null ? null : settings!.toMap(),
    };
  }

  factory AmlFilesystemResponseHsm.fromMap(Map<String, dynamic> map) {
    return AmlFilesystemResponseHsm(
      archiveStatus: pulumi.Input.decodeList<AmlFilesystemArchiveResponse>(map['archiveStatus'], (value) => AmlFilesystemArchiveResponse.fromMap((value as Map).cast<String, dynamic>())),
      settings: map['settings'] == null ? null : AmlFilesystemHsmSettingsResponse.fromMap((map['settings'] as Map).cast<String, dynamic>()),
    );
  }
}

