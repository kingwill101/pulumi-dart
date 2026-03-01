// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrationcenter_v1_get_preference_set_args_doc}
/// Arguments for getPreferenceSet.
/// {@endtemplate}
/// {@macro pulumi_migrationcenter_v1_get_preference_set_args_doc}
class GetPreferenceSetArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> preferenceSetId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPreferenceSetArgs].
  /// [location] Required.
  /// [preferenceSetId] Required.
  /// [project] Optional.
  GetPreferenceSetArgs({
    required pulumi.Output<String> location,
    required pulumi.Output<String> preferenceSetId,
    pulumi.Output<String>? project,
  }) :
      location = pulumi.Input.asInput<String>(location),
      preferenceSetId = pulumi.Input.asInput<String>(preferenceSetId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'preferenceSetId': preferenceSetId,
      'project': ?project,
    };
  }

  factory GetPreferenceSetArgs.fromMap(Map<String, dynamic> map) {
    return GetPreferenceSetArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      preferenceSetId: pulumi.Output.create<String>(map['preferenceSetId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

