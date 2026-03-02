// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_data_store_settings_engine.dart';

class AppDataStoreSettings {
  /// (Output)
  /// The engines for the app.
  /// Structure is documented below.
  ///
  ///
  /// <a name="nested_data_store_settings_engines"></a>The `engines` block contains:
  final pulumi.Input<List<AppDataStoreSettingsEngine>>? engines;

  /// Creates a new [AppDataStoreSettings].
  /// [engines] (Output)
  AppDataStoreSettings({
    this.engines,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engines': ?pulumi.Input.mapOptionalInputValue<List<AppDataStoreSettingsEngine>, List<Map<String, dynamic>>>(engines, (value) => pulumi.Input.encodeList<AppDataStoreSettingsEngine, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AppDataStoreSettings.fromMap(Map<String, dynamic> map) {
    return AppDataStoreSettings(
      engines: map['engines'] == null ? null : (pulumi.Input.decodeList<AppDataStoreSettingsEngine>(map['engines'], (value) => AppDataStoreSettingsEngine.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

