// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hash_response.dart';

/// Container message for hashes of byte content of files, used in SourceProvenance messages to verify integrity of source input to the build.
class FileHashesResponse {
  /// Collection of file hashes.
  final pulumi.Input<List<HashResponse>> fileHash;

  /// Creates a new [FileHashesResponse].
  /// [fileHash] Collection of file hashes.
  FileHashesResponse({
    required this.fileHash,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileHash': pulumi.Input.mapInputValue<List<HashResponse>, List<Map<String, dynamic>>>(fileHash, (value) => pulumi.Input.encodeList<HashResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FileHashesResponse.fromMap(Map<String, dynamic> map) {
    return FileHashesResponse(
      fileHash: pulumi.Input.fromValue(pulumi.Input.decodeList<HashResponse>(map['fileHash']!, (value) => HashResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

