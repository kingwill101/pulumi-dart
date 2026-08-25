// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_storage_resource_bucket.dart';
import 'cluster_storage_resource_config.dart';
import 'cluster_storage_resource_filestore.dart';
import 'cluster_storage_resource_lustre.dart';

class ClusterStorageResource {
  /// (Output)
  /// Name of the bucket.
  final pulumi.Input<List<ClusterStorageResourceBucket>?>? buckets;
  /// Describes how a storage resource should be initialized. Each storage resource
  /// can either be imported from an existing Google Cloud resource or initialized
  /// when the cluster is created.
  /// Structure is documented below.
  final pulumi.Input<ClusterStorageResourceConfig> config;
  /// (Output)
  /// A reference to a [Filestore](https://cloud.google.com/filestore) instance.
  /// Structure is documented below.
  final pulumi.Input<List<ClusterStorageResourceFilestore>?>? filestores;
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> id;
  /// (Output)
  /// A reference to a [Managed
  /// Lustre](https://cloud.google.com/products/managed-lustre) instance.
  /// Structure is documented below.
  ///
  ///
  /// &lt;a name="nestedStorageResourcesBucket"&gt;&lt;/a&gt;The `bucket` block contains:
  final pulumi.Input<List<ClusterStorageResourceLustre>?>? lustres;

  /// Creates a new [ClusterStorageResource].
  /// [buckets] (Output)
  /// [config] Describes how a storage resource should be initialized. Each storage resource
  /// [filestores] (Output)
  /// [id] The identifier for this object. Format specified above.
  /// [lustres] (Output)
  const ClusterStorageResource({
    this.buckets,
    required this.config,
    this.filestores,
    required this.id,
    this.lustres,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buckets': ?pulumi.Input.mapOptionalInputValue<List<ClusterStorageResourceBucket>, List<Map<String, dynamic>>>(buckets, (value) => pulumi.Input.encodeList<ClusterStorageResourceBucket, Map<String, dynamic>>(value, (value) => value.toMap())),
      'config': pulumi.Input.mapInputValue<ClusterStorageResourceConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'filestores': ?pulumi.Input.mapOptionalInputValue<List<ClusterStorageResourceFilestore>, List<Map<String, dynamic>>>(filestores, (value) => pulumi.Input.encodeList<ClusterStorageResourceFilestore, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'lustres': ?pulumi.Input.mapOptionalInputValue<List<ClusterStorageResourceLustre>, List<Map<String, dynamic>>>(lustres, (value) => pulumi.Input.encodeList<ClusterStorageResourceLustre, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClusterStorageResource.fromMap(Map<String, dynamic> map) {
    return ClusterStorageResource(
      buckets: (() { final guardedValue = map['buckets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterStorageResourceBucket>(guardedValue, (value) => ClusterStorageResourceBucket.fromMap((value as Map).cast<String, dynamic>()))); })(),
      config: pulumi.Input.fromValue(ClusterStorageResourceConfig.fromMap((map['config']! as Map).cast<String, dynamic>())),
      filestores: (() { final guardedValue = map['filestores']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterStorageResourceFilestore>(guardedValue, (value) => ClusterStorageResourceFilestore.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      lustres: (() { final guardedValue = map['lustres']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterStorageResourceLustre>(guardedValue, (value) => ClusterStorageResourceLustre.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
