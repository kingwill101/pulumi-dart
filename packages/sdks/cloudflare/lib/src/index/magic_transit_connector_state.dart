// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'magic_transit_connector_device.dart';

/// Input properties used for looking up and filtering MagicTransitConnector resources.
class MagicTransitConnectorState {
  /// Account identifier
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<bool?>? activated;
  final pulumi.Input<MagicTransitConnectorDevice?>? device;
  final pulumi.Input<double?>? interruptWindowDurationHours;
  final pulumi.Input<double?>? interruptWindowHourOfDay;
  /// License key for the connector. This is only returned on creation and will not be available in subsequent reads.
  final pulumi.Input<String?>? licenseKey;
  final pulumi.Input<String?>? notes;
  final pulumi.Input<String?>? timezone;

  /// Creates a new [MagicTransitConnectorState].
  /// [accountId] Account identifier
  /// [activated] Optional.
  /// [device] Optional.
  /// [interruptWindowDurationHours] Optional.
  /// [interruptWindowHourOfDay] Optional.
  /// [licenseKey] License key for the connector. This is only returned on creation and will not be available in subsequent reads.
  /// [notes] Optional.
  /// [timezone] Optional.
  const MagicTransitConnectorState({
    this.accountId,
    this.activated,
    this.device,
    this.interruptWindowDurationHours,
    this.interruptWindowHourOfDay,
    this.licenseKey,
    this.notes,
    this.timezone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'activated': ?activated,
      'device': ?pulumi.Input.mapOptionalInputValue<MagicTransitConnectorDevice, Map<String, dynamic>>(device, (value) => value.toMap()),
      'interruptWindowDurationHours': ?interruptWindowDurationHours,
      'interruptWindowHourOfDay': ?interruptWindowHourOfDay,
      'licenseKey': ?licenseKey,
      'notes': ?notes,
      'timezone': ?timezone,
    };
  }

  factory MagicTransitConnectorState.fromMap(Map<String, dynamic> map) {
    return MagicTransitConnectorState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      activated: (() { final guardedValue = map['activated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      device: (() { final guardedValue = map['device']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MagicTransitConnectorDevice.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      interruptWindowDurationHours: (() { final guardedValue = map['interruptWindowDurationHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      interruptWindowHourOfDay: (() { final guardedValue = map['interruptWindowHourOfDay']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      licenseKey: (() { final guardedValue = map['licenseKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notes: (() { final guardedValue = map['notes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timezone: (() { final guardedValue = map['timezone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
