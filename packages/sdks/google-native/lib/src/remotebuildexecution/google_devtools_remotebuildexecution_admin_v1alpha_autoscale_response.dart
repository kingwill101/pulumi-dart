// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Autoscale defines the autoscaling policy of a worker pool.
class GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscaleResponse {
  /// The maximal number of workers. Must be equal to or greater than min_size.
  final pulumi.Input<String> maxSize;
  /// The minimal number of workers. Must be greater than 0.
  final pulumi.Input<String> minSize;

  /// Creates a new [GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscaleResponse].
  /// [maxSize] The maximal number of workers. Must be equal to or greater than min_size.
  /// [minSize] The minimal number of workers. Must be greater than 0.
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscaleResponse({
    required this.maxSize,
    required this.minSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxSize': maxSize,
      'minSize': minSize,
    };
  }

  factory GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscaleResponse.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscaleResponse(
      maxSize: (map['maxSize'] as String).input(),
      minSize: (map['minSize'] as String).input(),
    );
  }
}

