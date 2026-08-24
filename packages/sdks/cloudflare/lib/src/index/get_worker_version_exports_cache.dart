// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerVersionExportsCache {
  /// Whether caching is enabled for this entrypoint.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetWorkerVersionExportsCache].
  /// [enabled] Whether caching is enabled for this entrypoint.
  const GetWorkerVersionExportsCache({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetWorkerVersionExportsCache.fromMap(Map<String, dynamic> map) {
    return GetWorkerVersionExportsCache(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
