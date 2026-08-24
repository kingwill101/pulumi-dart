// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerVersionAnnotations {
  /// Human-readable message about the version. Truncated to 1000 bytes if longer.
  final pulumi.Input<String> workersMessage;
  /// User-provided identifier for the version. Maximum 100 bytes.
  final pulumi.Input<String> workersTag;
  /// Operation that triggered the creation of the version.
  final pulumi.Input<String> workersTriggeredBy;

  /// Creates a new [GetWorkerVersionAnnotations].
  /// [workersMessage] Human-readable message about the version. Truncated to 1000 bytes if longer.
  /// [workersTag] User-provided identifier for the version. Maximum 100 bytes.
  /// [workersTriggeredBy] Operation that triggered the creation of the version.
  const GetWorkerVersionAnnotations({
    required this.workersMessage,
    required this.workersTag,
    required this.workersTriggeredBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'workersMessage': workersMessage,
      'workersTag': workersTag,
      'workersTriggeredBy': workersTriggeredBy,
    };
  }

  factory GetWorkerVersionAnnotations.fromMap(Map<String, dynamic> map) {
    return GetWorkerVersionAnnotations(
      workersMessage: pulumi.Input.fromValue(map['workersMessage'] as String),
      workersTag: pulumi.Input.fromValue(map['workersTag'] as String),
      workersTriggeredBy: pulumi.Input.fromValue(map['workersTriggeredBy'] as String),
    );
  }
}
