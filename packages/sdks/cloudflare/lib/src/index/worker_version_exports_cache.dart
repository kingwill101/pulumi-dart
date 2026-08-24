// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerVersionExportsCache {
  /// Whether caching is enabled for this entrypoint.
  final pulumi.Input<bool> enabled;

  /// Creates a new [WorkerVersionExportsCache].
  /// [enabled] Whether caching is enabled for this entrypoint.
  const WorkerVersionExportsCache({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory WorkerVersionExportsCache.fromMap(Map<String, dynamic> map) {
    return WorkerVersionExportsCache(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
