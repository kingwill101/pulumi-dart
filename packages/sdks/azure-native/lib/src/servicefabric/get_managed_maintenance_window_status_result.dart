// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getManagedMaintenanceWindowStatus.
class GetManagedMaintenanceWindowStatusResult {
  /// If updates can be applied.
  final bool canApplyUpdates;
  /// Indicates if the region is ready to configure maintenance windows.
  final bool isRegionReady;
  /// If maintenance window is active.
  final bool isWindowActive;
  /// If maintenance window is enabled on this cluster.
  final bool isWindowEnabled;
  /// Last window end time in UTC.
  final String lastWindowEndTimeUTC;
  /// Last window start time in UTC.
  final String lastWindowStartTimeUTC;
  /// Last window update time in UTC.
  final String lastWindowStatusUpdateAtUTC;

  /// Creates a new [GetManagedMaintenanceWindowStatusResult].
  /// [canApplyUpdates] If updates can be applied.
  /// [isRegionReady] Indicates if the region is ready to configure maintenance windows.
  /// [isWindowActive] If maintenance window is active.
  /// [isWindowEnabled] If maintenance window is enabled on this cluster.
  /// [lastWindowEndTimeUTC] Last window end time in UTC.
  /// [lastWindowStartTimeUTC] Last window start time in UTC.
  /// [lastWindowStatusUpdateAtUTC] Last window update time in UTC.
  GetManagedMaintenanceWindowStatusResult({
    required this.canApplyUpdates,
    required this.isRegionReady,
    required this.isWindowActive,
    required this.isWindowEnabled,
    required this.lastWindowEndTimeUTC,
    required this.lastWindowStartTimeUTC,
    required this.lastWindowStatusUpdateAtUTC,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canApplyUpdates': canApplyUpdates,
      'isRegionReady': isRegionReady,
      'isWindowActive': isWindowActive,
      'isWindowEnabled': isWindowEnabled,
      'lastWindowEndTimeUTC': lastWindowEndTimeUTC,
      'lastWindowStartTimeUTC': lastWindowStartTimeUTC,
      'lastWindowStatusUpdateAtUTC': lastWindowStatusUpdateAtUTC,
    };
  }

  factory GetManagedMaintenanceWindowStatusResult.fromMap(Map<String, dynamic> map) {
    return GetManagedMaintenanceWindowStatusResult(
      canApplyUpdates: map['canApplyUpdates'] as bool,
      isRegionReady: map['isRegionReady'] as bool,
      isWindowActive: map['isWindowActive'] as bool,
      isWindowEnabled: map['isWindowEnabled'] as bool,
      lastWindowEndTimeUTC: map['lastWindowEndTimeUTC'] as String,
      lastWindowStartTimeUTC: map['lastWindowStartTimeUTC'] as String,
      lastWindowStatusUpdateAtUTC: map['lastWindowStatusUpdateAtUTC'] as String,
    );
  }
}

