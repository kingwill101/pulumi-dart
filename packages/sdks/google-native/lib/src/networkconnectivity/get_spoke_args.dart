// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkconnectivity_v1_get_spoke_args_doc}
/// Arguments for getSpoke.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_v1_get_spoke_args_doc}
class GetSpokeArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> spokeId;

  /// Creates a new [GetSpokeArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [spokeId] Required.
  const GetSpokeArgs({
    required this.location,
    this.project,
    required this.spokeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'spokeId': spokeId,
    };
  }

  factory GetSpokeArgs.fromMap(Map<String, dynamic> map) {
    return GetSpokeArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spokeId: pulumi.Input.fromValue(map['spokeId'] as String),
    );
  }
}
