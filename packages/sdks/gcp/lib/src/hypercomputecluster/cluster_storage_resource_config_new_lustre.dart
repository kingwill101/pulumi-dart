// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterStorageResourceConfigNewLustre {
  /// Storage capacity of the instance in gibibytes (GiB). Allowed values are
  /// between 18000 and 7632000.
  final pulumi.Input<String> capacityGb;
  /// Description of the Managed Lustre instance. Maximum of 2048 characters.
  final pulumi.Input<String?>? description;
  /// Filesystem name for this instance. This name is used by client-side tools,
  /// including when mounting the instance. Must be 8 characters or less and can
  /// only contain letters and numbers.
  final pulumi.Input<String> filesystem;
  /// (Output)
  /// Name of the Managed Lustre instance, in the format
  /// `projects/{project}/locations/{location}/instances/{instance}`
  final pulumi.Input<String> lustre;
  /// Throughput of the instance in MB/s/TiB. Valid values are 125, 250,
  /// 500, 1000. See [Performance tiers and maximum storage
  /// capacities](https://cloud.google.com/managed-lustre/docs/create-instance#performance-tiers)
  /// for more information.
  ///
  /// &lt;a name="nestedStorageResourcesFilestore"&gt;&lt;/a&gt;The `filestore` block contains:
  final pulumi.Input<String?>? perUnitStorageThroughput;

  /// Creates a new [ClusterStorageResourceConfigNewLustre].
  /// [capacityGb] Storage capacity of the instance in gibibytes (GiB). Allowed values are
  /// [description] Description of the Managed Lustre instance. Maximum of 2048 characters.
  /// [filesystem] Filesystem name for this instance. This name is used by client-side tools,
  /// [lustre] (Output)
  /// [perUnitStorageThroughput] Throughput of the instance in MB/s/TiB. Valid values are 125, 250,
  const ClusterStorageResourceConfigNewLustre({
    required this.capacityGb,
    this.description,
    required this.filesystem,
    required this.lustre,
    this.perUnitStorageThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityGb': capacityGb,
      'description': ?description,
      'filesystem': filesystem,
      'lustre': lustre,
      'perUnitStorageThroughput': ?perUnitStorageThroughput,
    };
  }

  factory ClusterStorageResourceConfigNewLustre.fromMap(Map<String, dynamic> map) {
    return ClusterStorageResourceConfigNewLustre(
      capacityGb: pulumi.Input.fromValue(map['capacityGb'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filesystem: pulumi.Input.fromValue(map['filesystem'] as String),
      lustre: pulumi.Input.fromValue(map['lustre'] as String),
      perUnitStorageThroughput: (() { final guardedValue = map['perUnitStorageThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
