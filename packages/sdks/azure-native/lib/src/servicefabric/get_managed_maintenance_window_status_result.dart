// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getManagedMaintenanceWindowStatus.
class GetManagedMaintenanceWindowStatusResult {
  /// If updates can be applied.
  final bool? canApplyUpdates;
  /// Indicates if the region is ready to configure maintenance windows.
  final bool? isRegionReady;
  /// If maintenance window is active.
  final bool? isWindowActive;
  /// If maintenance window is enabled on this cluster.
  final bool? isWindowEnabled;
  /// Last window end time in UTC.
  final String? lastWindowEndTimeUTC;
  /// Last window start time in UTC.
  final String? lastWindowStartTimeUTC;
  /// Last window update time in UTC.
  final String? lastWindowStatusUpdateAtUTC;

  /// Creates a new [GetManagedMaintenanceWindowStatusResult].
  /// [canApplyUpdates] If updates can be applied.
  /// [isRegionReady] Indicates if the region is ready to configure maintenance windows.
  /// [isWindowActive] If maintenance window is active.
  /// [isWindowEnabled] If maintenance window is enabled on this cluster.
  /// [lastWindowEndTimeUTC] Last window end time in UTC.
  /// [lastWindowStartTimeUTC] Last window start time in UTC.
  /// [lastWindowStatusUpdateAtUTC] Last window update time in UTC.
  const GetManagedMaintenanceWindowStatusResult({
    this.canApplyUpdates,
    this.isRegionReady,
    this.isWindowActive,
    this.isWindowEnabled,
    this.lastWindowEndTimeUTC,
    this.lastWindowStartTimeUTC,
    this.lastWindowStatusUpdateAtUTC,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canApplyUpdates': ?canApplyUpdates,
      'isRegionReady': ?isRegionReady,
      'isWindowActive': ?isWindowActive,
      'isWindowEnabled': ?isWindowEnabled,
      'lastWindowEndTimeUTC': ?lastWindowEndTimeUTC,
      'lastWindowStartTimeUTC': ?lastWindowStartTimeUTC,
      'lastWindowStatusUpdateAtUTC': ?lastWindowStatusUpdateAtUTC,
    };
  }

  factory GetManagedMaintenanceWindowStatusResult.fromMap(Map<String, dynamic> map) {
    return GetManagedMaintenanceWindowStatusResult(
      canApplyUpdates: (() { final guardedValue = map['canApplyUpdates']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isRegionReady: (() { final guardedValue = map['isRegionReady']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isWindowActive: (() { final guardedValue = map['isWindowActive']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isWindowEnabled: (() { final guardedValue = map['isWindowEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      lastWindowEndTimeUTC: (() { final guardedValue = map['lastWindowEndTimeUTC']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastWindowStartTimeUTC: (() { final guardedValue = map['lastWindowStartTimeUTC']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastWindowStatusUpdateAtUTC: (() { final guardedValue = map['lastWindowStatusUpdateAtUTC']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
