// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Autoscale defines the autoscaling policy of a worker pool.
class GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale {
  /// The maximal number of workers. Must be equal to or greater than min_size.
  final pulumi.Input<String>? maxSize;
  /// The minimal number of workers. Must be greater than 0.
  final pulumi.Input<String>? minSize;

  /// Creates a new [GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale].
  /// [maxSize] The maximal number of workers. Must be equal to or greater than min_size.
  /// [minSize] The minimal number of workers. Must be greater than 0.
  const GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale({
    this.maxSize,
    this.minSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxSize': ?maxSize,
      'minSize': ?minSize,
    };
  }

  factory GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale(
      maxSize: (() { final guardedValue = map['maxSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minSize: (() { final guardedValue = map['minSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

