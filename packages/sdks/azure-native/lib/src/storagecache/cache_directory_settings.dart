// ignore_for_file: unused_element, unnecessary_cast

import 'cache_active_directory_settings.dart';
import 'cache_username_download_settings.dart';

/// Cache Directory Services settings.
class CacheDirectorySettings {
  /// Specifies settings for joining the HPC Cache to an Active Directory domain.
  final CacheActiveDirectorySettings? activeDirectory;
  /// Specifies settings for Extended Groups. Extended Groups allows users to be members of more than 16 groups.
  final CacheUsernameDownloadSettings? usernameDownload;

  /// Creates a new [CacheDirectorySettings].
  /// [activeDirectory] Specifies settings for joining the HPC Cache to an Active Directory domain.
  /// [usernameDownload] Specifies settings for Extended Groups. Extended Groups allows users to be members of more than 16 groups.
  CacheDirectorySettings({
    this.activeDirectory,
    this.usernameDownload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectory': ?activeDirectory == null ? null : activeDirectory!.toMap(),
      'usernameDownload': ?usernameDownload == null ? null : usernameDownload!.toMap(),
    };
  }

  factory CacheDirectorySettings.fromMap(Map<String, dynamic> map) {
    return CacheDirectorySettings(
      activeDirectory: map['activeDirectory'] == null ? null : CacheActiveDirectorySettings.fromMap((map['activeDirectory'] as Map).cast<String, dynamic>()),
      usernameDownload: map['usernameDownload'] == null ? null : CacheUsernameDownloadSettings.fromMap((map['usernameDownload'] as Map).cast<String, dynamic>()),
    );
  }
}

