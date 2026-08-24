// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkersScriptsResultExportsCache {
  /// Whether caching is enabled for this entrypoint.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetWorkersScriptsResultExportsCache].
  /// [enabled] Whether caching is enabled for this entrypoint.
  const GetWorkersScriptsResultExportsCache({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetWorkersScriptsResultExportsCache.fromMap(Map<String, dynamic> map) {
    return GetWorkersScriptsResultExportsCache(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
