// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BuildMetadata {
  final pulumi.Input<String>? finishedOn;
  final pulumi.Input<String>? invocationId;
  final pulumi.Input<String>? startedOn;

  /// Creates a new [BuildMetadata].
  /// [finishedOn] Optional.
  /// [invocationId] Optional.
  /// [startedOn] Optional.
  BuildMetadata({
    this.finishedOn,
    this.invocationId,
    this.startedOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'finishedOn': ?finishedOn,
      'invocationId': ?invocationId,
      'startedOn': ?startedOn,
    };
  }

  factory BuildMetadata.fromMap(Map<String, dynamic> map) {
    return BuildMetadata(
      finishedOn: map['finishedOn'] == null ? null : (map['finishedOn']! as String).input(),
      invocationId: map['invocationId'] == null ? null : (map['invocationId']! as String).input(),
      startedOn: map['startedOn'] == null ? null : (map['startedOn']! as String).input(),
    );
  }
}

