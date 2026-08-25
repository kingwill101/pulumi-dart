// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_app_data_store_setting_engine.dart';

class AppVersionSnapshotAppDataStoreSetting {
  /// (Output)
  /// The engines for the app.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotAppDataStoreSettingEngine>?>? engines;

  /// Creates a new [AppVersionSnapshotAppDataStoreSetting].
  /// [engines] (Output)
  const AppVersionSnapshotAppDataStoreSetting({
    this.engines,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engines': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotAppDataStoreSettingEngine>, List<Map<String, dynamic>>>(engines, (value) => pulumi.Input.encodeList<AppVersionSnapshotAppDataStoreSettingEngine, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AppVersionSnapshotAppDataStoreSetting.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAppDataStoreSetting(
      engines: (() { final guardedValue = map['engines']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotAppDataStoreSettingEngine>(guardedValue, (value) => AppVersionSnapshotAppDataStoreSettingEngine.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
