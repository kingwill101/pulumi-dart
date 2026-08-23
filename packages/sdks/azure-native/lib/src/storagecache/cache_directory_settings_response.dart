// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_active_directory_settings_response.dart';
import 'cache_username_download_settings_response.dart';

/// Cache Directory Services settings.
class CacheDirectorySettingsResponse {
  /// Specifies settings for joining the HPC Cache to an Active Directory domain.
  final pulumi.Input<CacheActiveDirectorySettingsResponse>? activeDirectory;
  /// Specifies settings for Extended Groups. Extended Groups allows users to be members of more than 16 groups.
  final pulumi.Input<CacheUsernameDownloadSettingsResponse>? usernameDownload;

  /// Creates a new [CacheDirectorySettingsResponse].
  /// [activeDirectory] Specifies settings for joining the HPC Cache to an Active Directory domain.
  /// [usernameDownload] Specifies settings for Extended Groups. Extended Groups allows users to be members of more than 16 groups.
  const CacheDirectorySettingsResponse({
    this.activeDirectory,
    this.usernameDownload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectory': ?pulumi.Input.mapOptionalInputValue<CacheActiveDirectorySettingsResponse, Map<String, dynamic>>(activeDirectory, (value) => value.toMap()),
      'usernameDownload': ?pulumi.Input.mapOptionalInputValue<CacheUsernameDownloadSettingsResponse, Map<String, dynamic>>(usernameDownload, (value) => value.toMap()),
    };
  }

  factory CacheDirectorySettingsResponse.fromMap(Map<String, dynamic> map) {
    return CacheDirectorySettingsResponse(
      activeDirectory: (() { final guardedValue = map['activeDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CacheActiveDirectorySettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      usernameDownload: (() { final guardedValue = map['usernameDownload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CacheUsernameDownloadSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
