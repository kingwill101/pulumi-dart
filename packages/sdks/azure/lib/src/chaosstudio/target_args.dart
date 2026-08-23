// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_chaosstudio_target_target_args_doc}
/// The set of arguments for Target.
/// {@endtemplate}
/// {@macro pulumi_chaosstudio_target_target_args_doc}
class TargetArgs {
  /// The Azure Region where the Chaos Studio Target should exist. Changing this forces a new Chaos Studio Target to be created.
  final pulumi.Input<String>? location;
  /// Specifies the Target Resource Id within which this Chaos Studio Target should exist. Changing this forces a new Chaos Studio Target to be created.
  final pulumi.Input<String> targetResourceId;
  /// The name of the Chaos Studio Target. This has the format of [publisher]-[targetType] e.g. `Microsoft-StorageAccount`. For supported values please see this Target Type column in [this table](https://learn.microsoft.com/azure/chaos-studio/chaos-studio-fault-providers). Changing this forces a new Chaos Studio Target to be created.
  final pulumi.Input<String> targetType;

  /// Creates a new [TargetArgs].
  /// [location] The Azure Region where the Chaos Studio Target should exist. Changing this forces a new Chaos Studio Target to be created.
  /// [targetResourceId] Specifies the Target Resource Id within which this Chaos Studio Target should exist. Changing this forces a new Chaos Studio Target to be created.
  /// [targetType] The name of the Chaos Studio Target. This has the format of [publisher]-[targetType] e.g. `Microsoft-StorageAccount`. For supported values please see this Target Type column in [this table](https://learn.microsoft.com/azure/chaos-studio/chaos-studio-fault-providers). Changing this forces a new Chaos Studio Target to be created.
  const TargetArgs({
    this.location,
    required this.targetResourceId,
    required this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'targetResourceId': targetResourceId,
      'targetType': targetType,
    };
  }

  factory TargetArgs.fromMap(Map<String, dynamic> map) {
    return TargetArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetResourceId: pulumi.Input.fromValue(map['targetResourceId'] as String),
      targetType: pulumi.Input.fromValue(map['targetType'] as String),
    );
  }
}
