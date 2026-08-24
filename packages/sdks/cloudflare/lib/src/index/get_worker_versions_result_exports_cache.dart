// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerVersionsResultExportsCache {
  /// Whether caching is enabled for this entrypoint.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetWorkerVersionsResultExportsCache].
  /// [enabled] Whether caching is enabled for this entrypoint.
  const GetWorkerVersionsResultExportsCache({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetWorkerVersionsResultExportsCache.fromMap(Map<String, dynamic> map) {
    return GetWorkerVersionsResultExportsCache(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
