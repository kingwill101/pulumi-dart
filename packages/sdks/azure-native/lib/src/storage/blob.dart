import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_access_tier.dart';
import 'blob_args.dart';
import 'blob_type.dart';

/// Manages a Blob within a Storage Container. For the supported combinations of properties and features please see [here](https://learn.microsoft.com/en-us/azure/storage/blobs/storage-feature-support-in-storage-accounts).
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:storage:Blob myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/blobServices/default/containers/{containerName}/blobs/{blobName}
/// ```
class Blob extends pulumi.CustomResource {
  /// The access tier of the storage blob. Only supported for standard storage accounts, not premium.
  late final pulumi.Output<BlobAccessTier?> accessTier;

  /// The MD5 sum of the blob contents.
  late final pulumi.Output<String?> contentMd5;

  /// The content type of the storage blob.
  late final pulumi.Output<String?> contentType;

  /// A map of custom blob metadata.
  late final pulumi.Output<Map<String, String>> metadata;

  /// The name of the storage blob.
  late final pulumi.Output<String> name;

  /// The type of the storage blob to be created.
  late final pulumi.Output<BlobType> type;

  /// The URL of the blob.
  late final pulumi.Output<String> url;

  /// Creates a new [Blob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Blob]. {@macro pulumi_storage_blob_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Blob(String name, {BlobArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:storage:Blob',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    accessTier = registerOutput<BlobAccessTier?>('accessTier');
    contentMd5 = registerOutput<String?>('contentMd5');
    contentType = registerOutput<String?>('contentType');
    metadata = registerOutput<Map<String, String>>('metadata');
    this.name = registerOutput<String>('name');
    type = registerOutput<BlobType>('type');
    url = registerOutput<String>('url');
  }
}
