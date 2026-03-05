// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DbSystemPropertiesDataCollectionOptions {
  /// Indicates whether to enable data collection for diagnostics.
  final pulumi.Input<bool>? isDiagnosticsEventsEnabled;
  /// Indicates whether to enable incident logs and trace collection.
  final pulumi.Input<bool>? isIncidentLogsEnabled;

  /// Creates a new [DbSystemPropertiesDataCollectionOptions].
  /// [isDiagnosticsEventsEnabled] Indicates whether to enable data collection for diagnostics.
  /// [isIncidentLogsEnabled] Indicates whether to enable incident logs and trace collection.
  DbSystemPropertiesDataCollectionOptions({
    this.isDiagnosticsEventsEnabled,
    this.isIncidentLogsEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isDiagnosticsEventsEnabled': ?isDiagnosticsEventsEnabled,
      'isIncidentLogsEnabled': ?isIncidentLogsEnabled,
    };
  }

  factory DbSystemPropertiesDataCollectionOptions.fromMap(Map<String, dynamic> map) {
    return DbSystemPropertiesDataCollectionOptions(
      isDiagnosticsEventsEnabled: (() { final guardedValue = map['isDiagnosticsEventsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isIncidentLogsEnabled: (() { final guardedValue = map['isIncidentLogsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

