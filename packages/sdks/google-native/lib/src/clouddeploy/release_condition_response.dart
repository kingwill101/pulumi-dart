// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'release_ready_condition_response.dart';
import 'skaffold_supported_condition_response.dart';

/// ReleaseCondition contains all conditions relevant to a Release.
class ReleaseConditionResponse {
  /// Details around the Releases's overall status.
  final pulumi.Input<ReleaseReadyConditionResponse> releaseReadyCondition;

  /// Details around the support state of the release's skaffold version.
  final pulumi.Input<SkaffoldSupportedConditionResponse>
  skaffoldSupportedCondition;

  /// Creates a new [ReleaseConditionResponse].
  /// [releaseReadyCondition] Details around the Releases's overall status.
  /// [skaffoldSupportedCondition] Details around the support state of the release's skaffold version.
  ReleaseConditionResponse({
    required this.releaseReadyCondition,
    required this.skaffoldSupportedCondition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'releaseReadyCondition':
          pulumi.Input.mapInputValue<
            ReleaseReadyConditionResponse,
            Map<String, dynamic>
          >(releaseReadyCondition, (value) => value.toMap()),
      'skaffoldSupportedCondition':
          pulumi.Input.mapInputValue<
            SkaffoldSupportedConditionResponse,
            Map<String, dynamic>
          >(skaffoldSupportedCondition, (value) => value.toMap()),
    };
  }

  factory ReleaseConditionResponse.fromMap(Map<String, dynamic> map) {
    return ReleaseConditionResponse(
      releaseReadyCondition: pulumi.Input.fromValue(
        ReleaseReadyConditionResponse.fromMap(
          (map['releaseReadyCondition']! as Map).cast<String, dynamic>(),
        ),
      ),
      skaffoldSupportedCondition: pulumi.Input.fromValue(
        SkaffoldSupportedConditionResponse.fromMap(
          (map['skaffoldSupportedCondition']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
