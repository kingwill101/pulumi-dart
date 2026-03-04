// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_trigger_build_artifact_object_timing.dart';

class GetTriggerBuildArtifactObject {
  /// The Cloud Build location for the trigger.
  ///
  /// - - -
  final pulumi.Input<String> location;

  /// Path globs used to match files in the build's workspace.
  final pulumi.Input<List<String>> paths;

  /// Output only. Stores timing information for pushing all artifact objects.
  final pulumi.Input<List<GetTriggerBuildArtifactObjectTiming>> timings;

  /// Creates a new [GetTriggerBuildArtifactObject].
  /// [location] The Cloud Build location for the trigger.
  /// [paths] Path globs used to match files in the build's workspace.
  /// [timings] Output only. Stores timing information for pushing all artifact objects.
  GetTriggerBuildArtifactObject({
    required this.location,
    required this.paths,
    required this.timings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'paths': paths,
      'timings':
          pulumi.Input.mapInputValue<
            List<GetTriggerBuildArtifactObjectTiming>,
            List<Map<String, dynamic>>
          >(
            timings,
            (value) =>
                pulumi.Input.encodeList<
                  GetTriggerBuildArtifactObjectTiming,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetTriggerBuildArtifactObject.fromMap(Map<String, dynamic> map) {
    return GetTriggerBuildArtifactObject(
      location: pulumi.Input.fromValue(map['location'] as String),
      paths: pulumi.Input.fromValue((map['paths'] as List).cast<String>()),
      timings: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetTriggerBuildArtifactObjectTiming>(
          map['timings']!,
          (value) => GetTriggerBuildArtifactObjectTiming.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
