// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedFolderRapidCacheConfigPolicy {
  /// The ingest-on-write policy for objects in the managed folder. When
  /// set to `enabled`, objects are automatically ingested into the cache
  /// when they are written to the managed folder.
  /// Possible values: ["enabled", "unspecified"]
  final pulumi.Input<String?>? ingestOnWrite;
  /// The unique identifier of the rapid cache.
  final pulumi.Input<String> rapidCacheId;

  /// Creates a new [ManagedFolderRapidCacheConfigPolicy].
  /// [ingestOnWrite] The ingest-on-write policy for objects in the managed folder. When
  /// [rapidCacheId] The unique identifier of the rapid cache.
  const ManagedFolderRapidCacheConfigPolicy({
    this.ingestOnWrite,
    required this.rapidCacheId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingestOnWrite': ?ingestOnWrite,
      'rapidCacheId': rapidCacheId,
    };
  }

  factory ManagedFolderRapidCacheConfigPolicy.fromMap(Map<String, dynamic> map) {
    return ManagedFolderRapidCacheConfigPolicy(
      ingestOnWrite: (() { final guardedValue = map['ingestOnWrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rapidCacheId: pulumi.Input.fromValue(map['rapidCacheId'] as String),
    );
  }
}
