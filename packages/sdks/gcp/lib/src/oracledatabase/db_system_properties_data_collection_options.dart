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
      isDiagnosticsEventsEnabled: map['isDiagnosticsEventsEnabled'] == null ? null : (map['isDiagnosticsEventsEnabled'] as bool).input(),
      isIncidentLogsEnabled: map['isIncidentLogsEnabled'] == null ? null : (map['isIncidentLogsEnabled'] as bool).input(),
    );
  }
}

