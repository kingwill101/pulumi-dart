// ignore_for_file: unused_element, unnecessary_cast

import 'upload_file_info_response_migrationcenter_v1alpha1.dart';

/// Result data returned by getImportDataFile.
class GetImportDataFileMigrationcenterV1alpha1Result {
  /// The timestamp when the file was created.
  final String? createTime;
  /// Optional. User-friendly display name. Maximum length is 256 characters.
  final String? displayName;
  /// The payload format.
  final String? format;
  /// The name of the file.
  final String? name;
  /// The state of the import data file.
  final String? state;
  /// Information about a file that is uploaded to a storage service.
  final UploadFileInfoResponseMigrationcenterV1alpha1? uploadFileInfo;

  /// Creates a new [GetImportDataFileMigrationcenterV1alpha1Result].
  /// [createTime] The timestamp when the file was created.
  /// [displayName] Optional. User-friendly display name. Maximum length is 256 characters.
  /// [format] The payload format.
  /// [name] The name of the file.
  /// [state] The state of the import data file.
  /// [uploadFileInfo] Information about a file that is uploaded to a storage service.
  const GetImportDataFileMigrationcenterV1alpha1Result({
    this.createTime,
    this.displayName,
    this.format,
    this.name,
    this.state,
    this.uploadFileInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'displayName': ?displayName,
      'format': ?format,
      'name': ?name,
      'state': ?state,
      'uploadFileInfo': ?uploadFileInfo?.toMap(),
    };
  }

  factory GetImportDataFileMigrationcenterV1alpha1Result.fromMap(Map<String, dynamic> map) {
    return GetImportDataFileMigrationcenterV1alpha1Result(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uploadFileInfo: (() { final guardedValue = map['uploadFileInfo']; if (guardedValue == null) return null; return UploadFileInfoResponseMigrationcenterV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
