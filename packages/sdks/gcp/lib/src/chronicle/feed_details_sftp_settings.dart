// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_sftp_settings_authentication.dart';

class FeedDetailsSftpSettings {
  /// SFTP Auth.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsSftpSettingsAuthentication>? authentication;
  /// Possible values:
  /// SOURCE_DELETION_NEVER
  /// SOURCE_DELETION_ON_SUCCESS
  /// SOURCE_DELETION_ON_SUCCESS_FILES_ONLY
  final pulumi.Input<String>? sourceDeletionOption;
  /// Possible values:
  /// FILES
  /// FOLDERS
  /// FOLDERS_RECURSIVE
  final pulumi.Input<String>? sourceType;
  /// SFTP URI.
  final pulumi.Input<String>? uri;

  /// Creates a new [FeedDetailsSftpSettings].
  /// [authentication] SFTP Auth.
  /// [sourceDeletionOption] Possible values:
  /// [sourceType] Possible values:
  /// [uri] SFTP URI.
  const FeedDetailsSftpSettings({
    this.authentication,
    this.sourceDeletionOption,
    this.sourceType,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsSftpSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'sourceDeletionOption': ?sourceDeletionOption,
      'sourceType': ?sourceType,
      'uri': ?uri,
    };
  }

  factory FeedDetailsSftpSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsSftpSettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsSftpSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceDeletionOption: (() { final guardedValue = map['sourceDeletionOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceType: (() { final guardedValue = map['sourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
