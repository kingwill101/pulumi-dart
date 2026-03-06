// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkloadWorkloadReference {
  /// (Output)
  /// Output only. The underlying compute resource uri.
  final pulumi.Input<String>? uri;

  /// Creates a new [WorkloadWorkloadReference].
  /// [uri] (Output)
  const WorkloadWorkloadReference({
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': ?uri,
    };
  }

  factory WorkloadWorkloadReference.fromMap(Map<String, dynamic> map) {
    return WorkloadWorkloadReference(
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

