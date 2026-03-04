// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BuildMetadataResponseContaineranalysisV1alpha1 {
  final pulumi.Input<String> finishedOn;
  final pulumi.Input<String> invocationId;
  final pulumi.Input<String> startedOn;

  /// Creates a new [BuildMetadataResponseContaineranalysisV1alpha1].
  /// [finishedOn] Required.
  /// [invocationId] Required.
  /// [startedOn] Required.
  BuildMetadataResponseContaineranalysisV1alpha1({
    required this.finishedOn,
    required this.invocationId,
    required this.startedOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'finishedOn': finishedOn,
      'invocationId': invocationId,
      'startedOn': startedOn,
    };
  }

  factory BuildMetadataResponseContaineranalysisV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return BuildMetadataResponseContaineranalysisV1alpha1(
      finishedOn: pulumi.Input.fromValue(map['finishedOn'] as String),
      invocationId: pulumi.Input.fromValue(map['invocationId'] as String),
      startedOn: pulumi.Input.fromValue(map['startedOn'] as String),
    );
  }
}
