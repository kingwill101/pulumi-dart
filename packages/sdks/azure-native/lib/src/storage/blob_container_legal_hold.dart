import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_container_legal_hold_args.dart';

/// .
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:storage:BlobContainerLegalHold myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/blobServices/default/containers/{containerName}/legalHold
/// ```
class BlobContainerLegalHold extends pulumi.CustomResource {
  /// Name of the Storage Account.
  late final pulumi.Output<String?> accountName;
  /// When enabled, new blocks can be written to both 'Append and Bock Blobs' while maintaining legal hold protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted.
  late final pulumi.Output<bool?> allowProtectedAppendWritesAll;
  /// Name of the Blob Container.
  late final pulumi.Output<String?> containerName;
  /// Name of the resource group that contains the storage account.
  late final pulumi.Output<String?> resourceGroupName;
  /// List of legal hold tags. Each tag should be 3 to 23 alphanumeric characters and is normalized to lower case at SRP.
  late final pulumi.Output<List<String>?> tags;

  /// Creates a new [BlobContainerLegalHold].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BlobContainerLegalHold]. {@macro pulumi_storage_blob_container_legal_hold_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BlobContainerLegalHold(
    String name, {
    BlobContainerLegalHoldArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:storage:BlobContainerLegalHold',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountName = registerOutput<String?>('accountName');
    allowProtectedAppendWritesAll = registerOutput<bool?>('allowProtectedAppendWritesAll');
    containerName = registerOutput<String?>('containerName');
    resourceGroupName = registerOutput<String?>('resourceGroupName');
    tags = registerOutput<List<String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [BlobContainerLegalHold] resource.
  BlobContainerLegalHold.reference(String urn)
    : super(
        'azure-native:storage:BlobContainerLegalHold',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountName = registerOutput<String?>('accountName');
    allowProtectedAppendWritesAll = registerOutput<bool?>('allowProtectedAppendWritesAll');
    containerName = registerOutput<String?>('containerName');
    resourceGroupName = registerOutput<String?>('resourceGroupName');
    tags = registerOutput<List<String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
