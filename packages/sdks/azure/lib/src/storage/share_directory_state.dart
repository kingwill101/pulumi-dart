// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ShareDirectory resources.
class ShareDirectoryState {
  /// A mapping of metadata to assign to this Directory.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The name (or path) of the Directory that should be created within this File Share. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? storageShareId;
  /// The Storage Share URL in which this file will be placed into. Changing this forces a new resource to be created.
  final pulumi.Input<String>? storageShareUrl;

  /// Creates a new [ShareDirectoryState].
  /// [metadata] A mapping of metadata to assign to this Directory.
  /// [name] The name (or path) of the Directory that should be created within this File Share. Changing this forces a new resource to be created.
  /// [storageShareId] Optional.
  /// [storageShareUrl] The Storage Share URL in which this file will be placed into. Changing this forces a new resource to be created.
  ShareDirectoryState({
    pulumi.Output<Map<String, String>>? metadata,
    pulumi.Output<String>? name,
    pulumi.Output<String>? storageShareId,
    pulumi.Output<String>? storageShareUrl,
  }) :
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      storageShareId = pulumi.Input.asOptionalInput<String>(storageShareId),
      storageShareUrl = pulumi.Input.asOptionalInput<String>(storageShareUrl);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata,
      'name': ?name,
      'storageShareId': ?storageShareId,
      'storageShareUrl': ?storageShareUrl,
    };
  }

  factory ShareDirectoryState.fromMap(Map<String, dynamic> map) {
    return ShareDirectoryState(
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      storageShareId: map['storageShareId'] == null ? null : pulumi.Output.create<String>(map['storageShareId'] as String),
      storageShareUrl: map['storageShareUrl'] == null ? null : pulumi.Output.create<String>(map['storageShareUrl'] as String),
    );
  }
}

