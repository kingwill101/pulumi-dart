// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventarc_v1beta1_get_trigger_eventarc_v1beta1_args_doc}
/// Arguments for getTrigger.
/// {@endtemplate}
/// {@macro pulumi_eventarc_v1beta1_get_trigger_eventarc_v1beta1_args_doc}
class GetTriggerEventarcV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> triggerId;

  /// Creates a new [GetTriggerEventarcV1beta1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [triggerId] Required.
  GetTriggerEventarcV1beta1Args({
    required this.location,
    this.project,
    required this.triggerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'triggerId': triggerId,
    };
  }

  factory GetTriggerEventarcV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetTriggerEventarcV1beta1Args(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      triggerId: pulumi.Input.fromValue(map['triggerId'] as String),
    );
  }
}
