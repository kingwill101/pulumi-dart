// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'magic_transit_connector_device.dart';

/// {@template pulumi_index_magic_transit_connector_magic_transit_connector_args_doc}
/// The set of arguments for MagicTransitConnector.
/// {@endtemplate}
/// {@macro pulumi_index_magic_transit_connector_magic_transit_connector_args_doc}
class MagicTransitConnectorArgs {
  /// Account identifier
  final pulumi.Input<String> accountId;
  final pulumi.Input<bool?>? activated;
  final pulumi.Input<MagicTransitConnectorDevice> device;
  final pulumi.Input<double?>? interruptWindowDurationHours;
  final pulumi.Input<double?>? interruptWindowHourOfDay;
  final pulumi.Input<String?>? notes;
  final pulumi.Input<String?>? timezone;

  /// Creates a new [MagicTransitConnectorArgs].
  /// [accountId] Account identifier
  /// [activated] Optional.
  /// [device] Required.
  /// [interruptWindowDurationHours] Optional.
  /// [interruptWindowHourOfDay] Optional.
  /// [notes] Optional.
  /// [timezone] Optional.
  const MagicTransitConnectorArgs({
    required this.accountId,
    this.activated,
    required this.device,
    this.interruptWindowDurationHours,
    this.interruptWindowHourOfDay,
    this.notes,
    this.timezone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'activated': ?activated,
      'device': pulumi.Input.mapInputValue<MagicTransitConnectorDevice, Map<String, dynamic>>(device, (value) => value.toMap()),
      'interruptWindowDurationHours': ?interruptWindowDurationHours,
      'interruptWindowHourOfDay': ?interruptWindowHourOfDay,
      'notes': ?notes,
      'timezone': ?timezone,
    };
  }

  factory MagicTransitConnectorArgs.fromMap(Map<String, dynamic> map) {
    return MagicTransitConnectorArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      activated: (() { final guardedValue = map['activated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      device: pulumi.Input.fromValue(MagicTransitConnectorDevice.fromMap((map['device']! as Map).cast<String, dynamic>())),
      interruptWindowDurationHours: (() { final guardedValue = map['interruptWindowDurationHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      interruptWindowHourOfDay: (() { final guardedValue = map['interruptWindowHourOfDay']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      notes: (() { final guardedValue = map['notes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timezone: (() { final guardedValue = map['timezone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
