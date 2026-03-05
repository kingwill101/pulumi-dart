import 'package:pulumi/pulumi.dart' as pulumi;
import 'import_data_file_args.dart';
import 'upload_file_info_response.dart';

/// Creates an import data file.
/// Auto-naming is currently not supported for this resource.
class ImportDataFile extends pulumi.CustomResource {
  /// The timestamp when the file was created.
  late final pulumi.Output<String> createTime;
  /// User-friendly display name. Maximum length is 63 characters.
  late final pulumi.Output<String> displayName;
  /// The payload format.
  late final pulumi.Output<String> format;
  /// Required. The ID of the new data file.
  late final pulumi.Output<String> importDataFileId;
  late final pulumi.Output<String> importJobId;
  late final pulumi.Output<String> location;
  /// The name of the file.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  /// The state of the import data file.
  late final pulumi.Output<String> state;
  /// Information about a file that is uploaded to a storage service.
  late final pulumi.Output<UploadFileInfoResponse> uploadFileInfo;

  /// Creates a new [ImportDataFile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ImportDataFile]. {@macro pulumi_migrationcenter_v1_import_data_file_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ImportDataFile(
    String name, {
    ImportDataFileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:migrationcenter/v1:ImportDataFile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    displayName = registerOutput<String>('displayName');
    format = registerOutput<String>('format');
    importDataFileId = registerOutput<String>('importDataFileId');
    importJobId = registerOutput<String>('importJobId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    requestId = registerOutput<String?>('requestId');
    state = registerOutput<String>('state');
    uploadFileInfo = registerOutput<UploadFileInfoResponse>('uploadFileInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UploadFileInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
