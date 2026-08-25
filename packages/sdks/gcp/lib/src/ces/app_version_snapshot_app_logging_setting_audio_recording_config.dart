// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotAppLoggingSettingAudioRecordingConfig {
  /// (Output)
  /// The [Cloud Storage](https://cloud.google.com/storage) bucket to store the
  /// session audio recordings. The URI must start with "gs://".
  /// Note: If the Cloud Storage bucket is in a different project from the app,
  /// you should grant `storage.objects.create` permission to the CES service
  /// agent `service-@gcp-sa-ces.iam.gserviceaccount.com`.
  final pulumi.Input<String?>? gcsBucket;
  /// (Output)
  /// The Cloud Storage path prefix for audio recordings.
  /// This prefix can include the following placeholders, which will be
  /// dynamically substituted at serving time:
  /// - $project:   project ID
  /// - $location:  app location
  /// - $app:       app ID
  /// - $date:      session date in YYYY-MM-DD format
  /// - $session:   session ID
  /// If the path prefix is not specified, the default prefix
  /// `$project/$location/$app/$date/$session/` will be used.
  final pulumi.Input<String?>? gcsPathPrefix;

  /// Creates a new [AppVersionSnapshotAppLoggingSettingAudioRecordingConfig].
  /// [gcsBucket] (Output)
  /// [gcsPathPrefix] (Output)
  const AppVersionSnapshotAppLoggingSettingAudioRecordingConfig({
    this.gcsBucket,
    this.gcsPathPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcsBucket': ?gcsBucket,
      'gcsPathPrefix': ?gcsPathPrefix,
    };
  }

  factory AppVersionSnapshotAppLoggingSettingAudioRecordingConfig.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAppLoggingSettingAudioRecordingConfig(
      gcsBucket: (() { final guardedValue = map['gcsBucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gcsPathPrefix: (() { final guardedValue = map['gcsPathPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
