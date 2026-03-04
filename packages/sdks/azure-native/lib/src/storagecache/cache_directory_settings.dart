// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_active_directory_settings.dart';
import 'cache_username_download_settings.dart';

/// Cache Directory Services settings.
class CacheDirectorySettings {
  /// Specifies settings for joining the HPC Cache to an Active Directory domain.
  final pulumi.Input<CacheActiveDirectorySettings>? activeDirectory;

  /// Specifies settings for Extended Groups. Extended Groups allows users to be members of more than 16 groups.
  final pulumi.Input<CacheUsernameDownloadSettings>? usernameDownload;

  /// Creates a new [CacheDirectorySettings].
  /// [activeDirectory] Specifies settings for joining the HPC Cache to an Active Directory domain.
  /// [usernameDownload] Specifies settings for Extended Groups. Extended Groups allows users to be members of more than 16 groups.
  CacheDirectorySettings({this.activeDirectory, this.usernameDownload});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectory':
          ?pulumi.Input.mapOptionalInputValue<
            CacheActiveDirectorySettings,
            Map<String, dynamic>
          >(activeDirectory, (value) => value.toMap()),
      'usernameDownload':
          ?pulumi.Input.mapOptionalInputValue<
            CacheUsernameDownloadSettings,
            Map<String, dynamic>
          >(usernameDownload, (value) => value.toMap()),
    };
  }

  factory CacheDirectorySettings.fromMap(Map<String, dynamic> map) {
    return CacheDirectorySettings(
      activeDirectory: (() {
        final guardedValue = map['activeDirectory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CacheActiveDirectorySettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      usernameDownload: (() {
        final guardedValue = map['usernameDownload'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CacheUsernameDownloadSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
