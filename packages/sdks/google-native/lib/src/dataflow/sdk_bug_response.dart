// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A bug found in the Dataflow SDK.
class SdkBugResponse {
  /// How severe the SDK bug is.
  final pulumi.Input<String> severity;
  /// Describes the impact of this SDK bug.
  final pulumi.Input<String> type;
  /// Link to more information on the bug.
  final pulumi.Input<String> uri;

  /// Creates a new [SdkBugResponse].
  /// [severity] How severe the SDK bug is.
  /// [type] Describes the impact of this SDK bug.
  /// [uri] Link to more information on the bug.
  const SdkBugResponse({
    required this.severity,
    required this.type,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'severity': severity,
      'type': type,
      'uri': uri,
    };
  }

  factory SdkBugResponse.fromMap(Map<String, dynamic> map) {
    return SdkBugResponse(
      severity: pulumi.Input.fromValue(map['severity'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
