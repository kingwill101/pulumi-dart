// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkersScriptExportsCache {
  /// Whether caching is enabled for this entrypoint.
  final pulumi.Input<bool> enabled;

  /// Creates a new [WorkersScriptExportsCache].
  /// [enabled] Whether caching is enabled for this entrypoint.
  const WorkersScriptExportsCache({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory WorkersScriptExportsCache.fromMap(Map<String, dynamic> map) {
    return WorkersScriptExportsCache(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
