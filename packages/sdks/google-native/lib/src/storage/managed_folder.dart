import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_folder_args.dart';

/// Creates a new managed folder.
class ManagedFolder extends pulumi.CustomResource {
  late final pulumi.Output<String> bucket;

  /// The creation time of the managed folder in RFC 3339 format.
  late final pulumi.Output<String> createTime;

  /// The kind of item this is. For managed folders, this is always storage#managedFolder.
  late final pulumi.Output<String> kind;

  /// The version of the metadata for this managed folder. Used for preconditions and for detecting changes in metadata.
  late final pulumi.Output<String> metageneration;

  /// The name of the managed folder. Required if not specified by URL parameter.
  late final pulumi.Output<String> name;

  /// The link to this managed folder.
  late final pulumi.Output<String> selfLink;

  /// The last update time of the managed folder metadata in RFC 3339 format.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ManagedFolder].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedFolder]. {@macro pulumi_storage_v1_managed_folder_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedFolder(
    String name, {
    ManagedFolderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:storage/v1:ManagedFolder',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bucket = registerOutput<String>('bucket');
    createTime = registerOutput<String>('createTime');
    kind = registerOutput<String>('kind');
    metageneration = registerOutput<String>('metageneration');
    this.name = registerOutput<String>('name');
    selfLink = registerOutput<String>('selfLink');
    updateTime = registerOutput<String>('updateTime');
  }
}
