// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_share_directory_share_directory_args_doc}
/// The set of arguments for ShareDirectory.
/// {@endtemplate}
/// {@macro pulumi_storage_share_directory_share_directory_args_doc}
class ShareDirectoryArgs {
  /// A mapping of metadata to assign to this Directory.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The name (or path) of the Directory that should be created within this File Share. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? storageShareId;
  /// The Storage Share URL in which this file will be placed into. Changing this forces a new resource to be created.
  final pulumi.Input<String>? storageShareUrl;

  /// Creates a new [ShareDirectoryArgs].
  /// [metadata] A mapping of metadata to assign to this Directory.
  /// [name] The name (or path) of the Directory that should be created within this File Share. Changing this forces a new resource to be created.
  /// [storageShareId] Optional.
  /// [storageShareUrl] The Storage Share URL in which this file will be placed into. Changing this forces a new resource to be created.
  ShareDirectoryArgs({
    this.metadata,
    this.name,
    this.storageShareId,
    this.storageShareUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata,
      'name': ?name,
      'storageShareId': ?storageShareId,
      'storageShareUrl': ?storageShareUrl,
    };
  }

  factory ShareDirectoryArgs.fromMap(Map<String, dynamic> map) {
    return ShareDirectoryArgs(
      metadata: map['metadata'] == null ? null : ((map['metadata'] as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      storageShareId: map['storageShareId'] == null ? null : (map['storageShareId'] as String).input(),
      storageShareUrl: map['storageShareUrl'] == null ? null : (map['storageShareUrl'] as String).input(),
    );
  }
}

