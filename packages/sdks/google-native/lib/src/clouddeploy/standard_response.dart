// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'postdeploy_response.dart';
import 'predeploy_response.dart';

/// Standard represents the standard deployment strategy.
class StandardResponse {
  /// Optional. Configuration for the postdeploy job. If this is not configured, postdeploy job will not be present.
  final pulumi.Input<PostdeployResponse> postdeploy;
  /// Optional. Configuration for the predeploy job. If this is not configured, predeploy job will not be present.
  final pulumi.Input<PredeployResponse> predeploy;
  /// Whether to verify a deployment.
  final pulumi.Input<bool> verify;

  /// Creates a new [StandardResponse].
  /// [postdeploy] Optional. Configuration for the postdeploy job. If this is not configured, postdeploy job will not be present.
  /// [predeploy] Optional. Configuration for the predeploy job. If this is not configured, predeploy job will not be present.
  /// [verify] Whether to verify a deployment.
  const StandardResponse({
    required this.postdeploy,
    required this.predeploy,
    required this.verify,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postdeploy': pulumi.Input.mapInputValue<PostdeployResponse, Map<String, dynamic>>(postdeploy, (value) => value.toMap()),
      'predeploy': pulumi.Input.mapInputValue<PredeployResponse, Map<String, dynamic>>(predeploy, (value) => value.toMap()),
      'verify': verify,
    };
  }

  factory StandardResponse.fromMap(Map<String, dynamic> map) {
    return StandardResponse(
      postdeploy: pulumi.Input.fromValue(PostdeployResponse.fromMap((map['postdeploy']! as Map).cast<String, dynamic>())),
      predeploy: pulumi.Input.fromValue(PredeployResponse.fromMap((map['predeploy']! as Map).cast<String, dynamic>())),
      verify: pulumi.Input.fromValue(map['verify'] as bool),
    );
  }
}
