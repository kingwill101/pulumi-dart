// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkconnectivity_v1_get_internal_range_args_doc}
/// Arguments for getInternalRange.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_v1_get_internal_range_args_doc}
class GetInternalRangeArgs {
  final pulumi.Input<String> internalRangeId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetInternalRangeArgs].
  /// [internalRangeId] Required.
  /// [location] Required.
  /// [project] Optional.
  const GetInternalRangeArgs({
    required this.internalRangeId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internalRangeId': internalRangeId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetInternalRangeArgs.fromMap(Map<String, dynamic> map) {
    return GetInternalRangeArgs(
      internalRangeId: pulumi.Input.fromValue(map['internalRangeId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

