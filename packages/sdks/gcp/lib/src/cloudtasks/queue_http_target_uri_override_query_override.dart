// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QueueHttpTargetUriOverrideQueryOverride {
  /// The query parameters (e.g., qparam1=123&qparam2=456). Default is an empty string.
  final pulumi.Input<String>? queryParams;

  /// Creates a new [QueueHttpTargetUriOverrideQueryOverride].
  /// [queryParams] The query parameters (e.g., qparam1=123&qparam2=456). Default is an empty string.
  const QueueHttpTargetUriOverrideQueryOverride({
    this.queryParams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queryParams': ?queryParams,
    };
  }

  factory QueueHttpTargetUriOverrideQueryOverride.fromMap(Map<String, dynamic> map) {
    return QueueHttpTargetUriOverrideQueryOverride(
      queryParams: (() { final guardedValue = map['queryParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

