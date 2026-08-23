// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'import_data_file_upload_file_info.dart';

/// Input properties used for looking up and filtering ImportDataFile resources.
class ImportDataFileState {
  /// The timestamp when the file was created.
  final pulumi.Input<String>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// User-friendly display name. Maximum length is 63 characters.
  final pulumi.Input<String>? displayName;
  /// Possible values:
  /// IMPORT_JOB_FORMAT_RVTOOLS_XLSX
  /// IMPORT_JOB_FORMAT_RVTOOLS_CSV
  /// IMPORT_JOB_FORMAT_EXPORTED_AWS_CSV
  /// IMPORT_JOB_FORMAT_EXPORTED_AZURE_CSV
  /// IMPORT_JOB_FORMAT_STRATOZONE_CSV
  /// IMPORT_JOB_FORMAT_DATABASE_ZIP
  final pulumi.Input<String>? format;
  /// The ID of the new data file.
  final pulumi.Input<String>? importDataFileId;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? importJob;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// The name of the file.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The state of the import data file.
  /// Possible values:
  /// CREATING
  /// ACTIVE
  final pulumi.Input<String>? state;
  /// A resource that contains a URI to which a data file can be uploaded.
  /// Structure is documented below.
  final pulumi.Input<List<ImportDataFileUploadFileInfo>>? uploadFileInfos;

  /// Creates a new [ImportDataFileState].
  /// [createTime] The timestamp when the file was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] User-friendly display name. Maximum length is 63 characters.
  /// [format] Possible values:
  /// [importDataFileId] The ID of the new data file.
  /// [importJob] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] The name of the file.
  /// [project] The ID of the project in which the resource belongs.
  /// [state] The state of the import data file.
  /// [uploadFileInfos] A resource that contains a URI to which a data file can be uploaded.
  const ImportDataFileState({
    this.createTime,
    this.deletionPolicy,
    this.displayName,
    this.format,
    this.importDataFileId,
    this.importJob,
    this.location,
    this.name,
    this.project,
    this.state,
    this.uploadFileInfos,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'format': ?format,
      'importDataFileId': ?importDataFileId,
      'importJob': ?importJob,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'state': ?state,
      'uploadFileInfos': ?pulumi.Input.mapOptionalInputValue<List<ImportDataFileUploadFileInfo>, List<Map<String, dynamic>>>(uploadFileInfos, (value) => pulumi.Input.encodeList<ImportDataFileUploadFileInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ImportDataFileState.fromMap(Map<String, dynamic> map) {
    return ImportDataFileState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      importDataFileId: (() { final guardedValue = map['importDataFileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      importJob: (() { final guardedValue = map['importJob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uploadFileInfos: (() { final guardedValue = map['uploadFileInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImportDataFileUploadFileInfo>(guardedValue, (value) => ImportDataFileUploadFileInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
