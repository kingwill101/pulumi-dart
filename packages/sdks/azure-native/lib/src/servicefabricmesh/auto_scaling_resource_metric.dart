// ignore_for_file: unused_element, unnecessary_cast


/// Describes the resource that is used for triggering auto scaling.
class AutoScalingResourceMetric {
  /// Enumerates the metrics that are used for triggering auto scaling.
  /// Expected value is 'Resource'.
  final String kind;
  /// Name of the resource.
  final String name;

  /// Creates a new [AutoScalingResourceMetric].
  /// [kind] Enumerates the metrics that are used for triggering auto scaling.
  /// [name] Name of the resource.
  AutoScalingResourceMetric({
    required this.kind,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'name': name,
    };
  }

  factory AutoScalingResourceMetric.fromMap(Map<String, dynamic> map) {
    return AutoScalingResourceMetric(
      kind: map['kind'] as String,
      name: map['name'] as String,
    );
  }
}

