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
  const BuildMetadata({
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
      finishedOn: (() { final guardedValue = map['finishedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      invocationId: (() { final guardedValue = map['invocationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startedOn: (() { final guardedValue = map['startedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
