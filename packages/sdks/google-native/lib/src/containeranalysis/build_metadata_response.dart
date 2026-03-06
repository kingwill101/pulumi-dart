// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BuildMetadataResponse {
  final pulumi.Input<String> finishedOn;
  final pulumi.Input<String> invocationId;
  final pulumi.Input<String> startedOn;

  /// Creates a new [BuildMetadataResponse].
  /// [finishedOn] Required.
  /// [invocationId] Required.
  /// [startedOn] Required.
  const BuildMetadataResponse({
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

  factory BuildMetadataResponse.fromMap(Map<String, dynamic> map) {
    return BuildMetadataResponse(
      finishedOn: pulumi.Input.fromValue(map['finishedOn'] as String),
      invocationId: pulumi.Input.fromValue(map['invocationId'] as String),
      startedOn: pulumi.Input.fromValue(map['startedOn'] as String),
    );
  }
}

