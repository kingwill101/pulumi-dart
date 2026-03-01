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
  GetInternalRangeArgs({
    required pulumi.Output<String> internalRangeId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      internalRangeId = pulumi.Input.asInput<String>(internalRangeId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internalRangeId': internalRangeId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetInternalRangeArgs.fromMap(Map<String, dynamic> map) {
    return GetInternalRangeArgs(
      internalRangeId: pulumi.Output.create<String>(map['internalRangeId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

