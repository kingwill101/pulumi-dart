// ignore_for_file: unused_element, unnecessary_cast

import 'upload_file_info_response.dart';

/// Result data returned by getImportDataFile.
class GetImportDataFileResult {
  /// The timestamp when the file was created.
  final String? createTime;
  /// User-friendly display name. Maximum length is 63 characters.
  final String? displayName;
  /// The payload format.
  final String? format;
  /// The name of the file.
  final String? name;
  /// The state of the import data file.
  final String? state;
  /// Information about a file that is uploaded to a storage service.
  final UploadFileInfoResponse? uploadFileInfo;

  /// Creates a new [GetImportDataFileResult].
  /// [createTime] The timestamp when the file was created.
  /// [displayName] User-friendly display name. Maximum length is 63 characters.
  /// [format] The payload format.
  /// [name] The name of the file.
  /// [state] The state of the import data file.
  /// [uploadFileInfo] Information about a file that is uploaded to a storage service.
  const GetImportDataFileResult({
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

  factory GetImportDataFileResult.fromMap(Map<String, dynamic> map) {
    return GetImportDataFileResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uploadFileInfo: (() { final guardedValue = map['uploadFileInfo']; if (guardedValue == null) return null; return UploadFileInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
