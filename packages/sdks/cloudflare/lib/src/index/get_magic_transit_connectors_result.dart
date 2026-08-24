// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_magic_transit_connectors_result_device.dart';

class GetMagicTransitConnectorsResult {
  final pulumi.Input<bool> activated;
  final pulumi.Input<GetMagicTransitConnectorsResultDevice> device;
  final pulumi.Input<String> id;
  /// Allowed days of the week for upgrades. Default is all days.
  final pulumi.Input<List<String>> interruptWindowDaysOfWeeks;
  final pulumi.Input<double> interruptWindowDurationHours;
  /// List of dates (YYYY-MM-DD) when upgrades are blocked.
  final pulumi.Input<List<String>> interruptWindowEmbargoDates;
  final pulumi.Input<double> interruptWindowHourOfDay;
  final pulumi.Input<String> lastHeartbeat;
  final pulumi.Input<String> lastSeenVersion;
  final pulumi.Input<String> lastUpdated;
  final pulumi.Input<String> licenseKey;
  final pulumi.Input<String> notes;
  final pulumi.Input<String> timezone;

  /// Creates a new [GetMagicTransitConnectorsResult].
  /// [activated] Required.
  /// [device] Required.
  /// [id] Required.
  /// [interruptWindowDaysOfWeeks] Allowed days of the week for upgrades. Default is all days.
  /// [interruptWindowDurationHours] Required.
  /// [interruptWindowEmbargoDates] List of dates (YYYY-MM-DD) when upgrades are blocked.
  /// [interruptWindowHourOfDay] Required.
  /// [lastHeartbeat] Required.
  /// [lastSeenVersion] Required.
  /// [lastUpdated] Required.
  /// [licenseKey] Required.
  /// [notes] Required.
  /// [timezone] Required.
  const GetMagicTransitConnectorsResult({
    required this.activated,
    required this.device,
    required this.id,
    required this.interruptWindowDaysOfWeeks,
    required this.interruptWindowDurationHours,
    required this.interruptWindowEmbargoDates,
    required this.interruptWindowHourOfDay,
    required this.lastHeartbeat,
    required this.lastSeenVersion,
    required this.lastUpdated,
    required this.licenseKey,
    required this.notes,
    required this.timezone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activated': activated,
      'device': pulumi.Input.mapInputValue<GetMagicTransitConnectorsResultDevice, Map<String, dynamic>>(device, (value) => value.toMap()),
      'id': id,
      'interruptWindowDaysOfWeeks': interruptWindowDaysOfWeeks,
      'interruptWindowDurationHours': interruptWindowDurationHours,
      'interruptWindowEmbargoDates': interruptWindowEmbargoDates,
      'interruptWindowHourOfDay': interruptWindowHourOfDay,
      'lastHeartbeat': lastHeartbeat,
      'lastSeenVersion': lastSeenVersion,
      'lastUpdated': lastUpdated,
      'licenseKey': licenseKey,
      'notes': notes,
      'timezone': timezone,
    };
  }

  factory GetMagicTransitConnectorsResult.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitConnectorsResult(
      activated: pulumi.Input.fromValue(map['activated'] as bool),
      device: pulumi.Input.fromValue(GetMagicTransitConnectorsResultDevice.fromMap((map['device']! as Map).cast<String, dynamic>())),
      id: pulumi.Input.fromValue(map['id'] as String),
      interruptWindowDaysOfWeeks: pulumi.Input.fromValue((map['interruptWindowDaysOfWeeks'] as List).cast<String>()),
      interruptWindowDurationHours: pulumi.Input.fromValue((map['interruptWindowDurationHours'] as num).toDouble()),
      interruptWindowEmbargoDates: pulumi.Input.fromValue((map['interruptWindowEmbargoDates'] as List).cast<String>()),
      interruptWindowHourOfDay: pulumi.Input.fromValue((map['interruptWindowHourOfDay'] as num).toDouble()),
      lastHeartbeat: pulumi.Input.fromValue(map['lastHeartbeat'] as String),
      lastSeenVersion: pulumi.Input.fromValue(map['lastSeenVersion'] as String),
      lastUpdated: pulumi.Input.fromValue(map['lastUpdated'] as String),
      licenseKey: pulumi.Input.fromValue(map['licenseKey'] as String),
      notes: pulumi.Input.fromValue(map['notes'] as String),
      timezone: pulumi.Input.fromValue(map['timezone'] as String),
    );
  }
}
