// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_data_store_settings_engine.dart';

class AppDataStoreSettings {
  /// (Output)
  /// The engines for the app.
  /// Structure is documented below.
  ///
  ///
  /// &lt;a name="nestedDataStoreSettingsEngines"&gt;&lt;/a&gt;The `engines` block contains:
  final pulumi.Input<List<AppDataStoreSettingsEngine>?>? engines;

  /// Creates a new [AppDataStoreSettings].
  /// [engines] (Output)
  const AppDataStoreSettings({
    this.engines,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engines': ?pulumi.Input.mapOptionalInputValue<List<AppDataStoreSettingsEngine>, List<Map<String, dynamic>>>(engines, (value) => pulumi.Input.encodeList<AppDataStoreSettingsEngine, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AppDataStoreSettings.fromMap(Map<String, dynamic> map) {
    return AppDataStoreSettings(
      engines: (() { final guardedValue = map['engines']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppDataStoreSettingsEngine>(guardedValue, (value) => AppDataStoreSettingsEngine.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
