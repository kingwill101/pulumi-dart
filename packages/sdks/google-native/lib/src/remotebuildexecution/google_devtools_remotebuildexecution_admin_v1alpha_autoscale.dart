// ignore_for_file: unused_element, unnecessary_cast


/// Autoscale defines the autoscaling policy of a worker pool.
class GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale {
  /// The maximal number of workers. Must be equal to or greater than min_size.
  final String? maxSize;
  /// The minimal number of workers. Must be greater than 0.
  final String? minSize;

  /// Creates a new [GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale].
  /// [maxSize] The maximal number of workers. Must be equal to or greater than min_size.
  /// [minSize] The minimal number of workers. Must be greater than 0.
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale({
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
      maxSize: map['maxSize'] == null ? null : map['maxSize'] as String,
      minSize: map['minSize'] == null ? null : map['minSize'] as String,
    );
  }
}

