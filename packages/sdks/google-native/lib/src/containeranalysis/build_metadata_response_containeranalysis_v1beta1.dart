// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BuildMetadataResponseContaineranalysisV1beta1 {
  final pulumi.Input<String> finishedOn;
  final pulumi.Input<String> invocationId;
  final pulumi.Input<String> startedOn;

  /// Creates a new [BuildMetadataResponseContaineranalysisV1beta1].
  /// [finishedOn] Required.
  /// [invocationId] Required.
  /// [startedOn] Required.
  BuildMetadataResponseContaineranalysisV1beta1({
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

  factory BuildMetadataResponseContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return BuildMetadataResponseContaineranalysisV1beta1(
      finishedOn: (map['finishedOn'] as String).input(),
      invocationId: (map['invocationId'] as String).input(),
      startedOn: (map['startedOn'] as String).input(),
    );
  }
}

