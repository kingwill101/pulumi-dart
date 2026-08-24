// ignore_for_file: unused_element, unnecessary_cast

import 'get_magic_transit_connector_device.dart';
import 'get_magic_transit_connector_filter.dart';

/// Result data returned by getMagicTransitConnector.
class GetMagicTransitConnectorResult {
  /// Account identifier
  final String? accountId;
  final bool? activated;
  final String? connectorId;
  final GetMagicTransitConnectorDevice? device;
  final GetMagicTransitConnectorFilter? filter;
  /// The ID of this resource.
  final String? id;
  /// Allowed days of the week for upgrades. Default is all days.
  final List<String>? interruptWindowDaysOfWeeks;
  final double? interruptWindowDurationHours;
  /// List of dates (YYYY-MM-DD) when upgrades are blocked.
  final List<String>? interruptWindowEmbargoDates;
  final double? interruptWindowHourOfDay;
  final String? lastHeartbeat;
  final String? lastSeenVersion;
  final String? lastUpdated;
  final String? licenseKey;
  final String? notes;
  final String? timezone;

  /// Creates a new [GetMagicTransitConnectorResult].
  /// [accountId] Account identifier
  /// [activated] Optional.
  /// [connectorId] Optional.
  /// [device] Optional.
  /// [filter] Optional.
  /// [id] The ID of this resource.
  /// [interruptWindowDaysOfWeeks] Allowed days of the week for upgrades. Default is all days.
  /// [interruptWindowDurationHours] Optional.
  /// [interruptWindowEmbargoDates] List of dates (YYYY-MM-DD) when upgrades are blocked.
  /// [interruptWindowHourOfDay] Optional.
  /// [lastHeartbeat] Optional.
  /// [lastSeenVersion] Optional.
  /// [lastUpdated] Optional.
  /// [licenseKey] Optional.
  /// [notes] Optional.
  /// [timezone] Optional.
  const GetMagicTransitConnectorResult({
    this.accountId,
    this.activated,
    this.connectorId,
    this.device,
    this.filter,
    this.id,
    this.interruptWindowDaysOfWeeks,
    this.interruptWindowDurationHours,
    this.interruptWindowEmbargoDates,
    this.interruptWindowHourOfDay,
    this.lastHeartbeat,
    this.lastSeenVersion,
    this.lastUpdated,
    this.licenseKey,
    this.notes,
    this.timezone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'activated': ?activated,
      'connectorId': ?connectorId,
      'device': ?device?.toMap(),
      'filter': ?filter?.toMap(),
      'id': ?id,
      'interruptWindowDaysOfWeeks': ?interruptWindowDaysOfWeeks,
      'interruptWindowDurationHours': ?interruptWindowDurationHours,
      'interruptWindowEmbargoDates': ?interruptWindowEmbargoDates,
      'interruptWindowHourOfDay': ?interruptWindowHourOfDay,
      'lastHeartbeat': ?lastHeartbeat,
      'lastSeenVersion': ?lastSeenVersion,
      'lastUpdated': ?lastUpdated,
      'licenseKey': ?licenseKey,
      'notes': ?notes,
      'timezone': ?timezone,
    };
  }

  factory GetMagicTransitConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitConnectorResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      activated: (() { final guardedValue = map['activated']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      connectorId: (() { final guardedValue = map['connectorId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      device: (() { final guardedValue = map['device']; if (guardedValue == null) return null; return GetMagicTransitConnectorDevice.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetMagicTransitConnectorFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      interruptWindowDaysOfWeeks: (() { final guardedValue = map['interruptWindowDaysOfWeeks']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      interruptWindowDurationHours: (() { final guardedValue = map['interruptWindowDurationHours']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      interruptWindowEmbargoDates: (() { final guardedValue = map['interruptWindowEmbargoDates']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      interruptWindowHourOfDay: (() { final guardedValue = map['interruptWindowHourOfDay']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      lastHeartbeat: (() { final guardedValue = map['lastHeartbeat']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastSeenVersion: (() { final guardedValue = map['lastSeenVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastUpdated: (() { final guardedValue = map['lastUpdated']; if (guardedValue == null) return null; return guardedValue as String; })(),
      licenseKey: (() { final guardedValue = map['licenseKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notes: (() { final guardedValue = map['notes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timezone: (() { final guardedValue = map['timezone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
