/// Maintenance timing setting: `canary` (Earlier) or `stable` (Later). [Learn more](https://cloud.google.com/sql/docs/mysql/instance-settings#maintenance-timing-2ndgen).
enum MaintenanceWindowUpdateTrackSqladminV1beta4 {
  sqlUpdateTrackUnspecified("SQL_UPDATE_TRACK_UNSPECIFIED"),
  canary("canary"),
  stable("stable"),
  week5("week5");

  const MaintenanceWindowUpdateTrackSqladminV1beta4(this.wireValue);
  final String wireValue;

  static MaintenanceWindowUpdateTrackSqladminV1beta4 fromValue(String value) {
    for (final item in MaintenanceWindowUpdateTrackSqladminV1beta4.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MaintenanceWindowUpdateTrackSqladminV1beta4 value: $value');
  }
}
