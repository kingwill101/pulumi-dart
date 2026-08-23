import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_blob_storage_args.dart';
import 'dataset_blob_storage_state.dart';
import 'dataset_blob_storage_storage_account.dart';

/// Manages a Data Share Blob Storage Dataset.
///
/// ## Import
///
/// Data Share Blob Storage Datasets can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datashare/datasetBlobStorage:DatasetBlobStorage example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DataShare/accounts/account1/shares/share1/dataSets/dataSet1
/// ```
class DatasetBlobStorage extends pulumi.CustomResource {
  /// The name of the storage account container to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created.
  late final pulumi.Output<String> containerName;
  /// The ID of the Data Share in which this Data Share Blob Storage Dataset should be created. Changing this forces a new Data Share Blob Storage Dataset to be created.
  late final pulumi.Output<String> dataShareId;
  /// The name of the Data Share Dataset.
  late final pulumi.Output<String> displayName;
  /// The path of the file in the storage container to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created.
  late final pulumi.Output<String?> filePath;
  /// The path of the folder in the storage container to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created.
  late final pulumi.Output<String?> folderPath;
  /// The name which should be used for this Data Share Blob Storage Dataset. Changing this forces a new Data Share Blob Storage Dataset to be created.
  late final pulumi.Output<String> name;
  /// A `storageAccount` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<DatasetBlobStorageStorageAccount> storageAccount;

  /// Creates a new [DatasetBlobStorage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatasetBlobStorage]. {@macro pulumi_datashare_dataset_blob_storage_dataset_blob_storage_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatasetBlobStorage(
    String name, {
    DatasetBlobStorageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datashare/datasetBlobStorage:DatasetBlobStorage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    containerName = registerOutput<String>('containerName');
    dataShareId = registerOutput<String>('dataShareId');
    displayName = registerOutput<String>('displayName');
    filePath = registerOutput<String?>('filePath');
    folderPath = registerOutput<String?>('folderPath');
    this.name = registerOutput<String>('name');
    storageAccount = registerOutput<DatasetBlobStorageStorageAccount>('storageAccount', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetBlobStorageStorageAccount.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [DatasetBlobStorage] resource's state with the given [name] and [id].
  static DatasetBlobStorage get(
    String name,
    pulumi.Input<String> id, {
    DatasetBlobStorageState? state,
  }) {
    return DatasetBlobStorage._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DatasetBlobStorage._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datashare/datasetBlobStorage:DatasetBlobStorage',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    containerName = registerOutput<String>('containerName');
    dataShareId = registerOutput<String>('dataShareId');
    displayName = registerOutput<String>('displayName');
    filePath = registerOutput<String?>('filePath');
    folderPath = registerOutput<String?>('folderPath');
    this.name = registerOutput<String>('name');
    storageAccount = registerOutput<DatasetBlobStorageStorageAccount>('storageAccount', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetBlobStorageStorageAccount.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
