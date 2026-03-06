// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_hashes_response.dart';
import 'time_span_response.dart';

/// An npm package uploaded to Artifact Registry using the NpmPackage directive.
class UploadedNpmPackageResponse {
  /// Hash types and values of the npm package.
  final pulumi.Input<FileHashesResponse> fileHashes;
  /// Stores timing information for pushing the specified artifact.
  final pulumi.Input<TimeSpanResponse> pushTiming;
  /// URI of the uploaded npm package.
  final pulumi.Input<String> uri;

  /// Creates a new [UploadedNpmPackageResponse].
  /// [fileHashes] Hash types and values of the npm package.
  /// [pushTiming] Stores timing information for pushing the specified artifact.
  /// [uri] URI of the uploaded npm package.
  const UploadedNpmPackageResponse({
    required this.fileHashes,
    required this.pushTiming,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileHashes': pulumi.Input.mapInputValue<FileHashesResponse, Map<String, dynamic>>(fileHashes, (value) => value.toMap()),
      'pushTiming': pulumi.Input.mapInputValue<TimeSpanResponse, Map<String, dynamic>>(pushTiming, (value) => value.toMap()),
      'uri': uri,
    };
  }

  factory UploadedNpmPackageResponse.fromMap(Map<String, dynamic> map) {
    return UploadedNpmPackageResponse(
      fileHashes: pulumi.Input.fromValue(FileHashesResponse.fromMap((map['fileHashes']! as Map).cast<String, dynamic>())),
      pushTiming: pulumi.Input.fromValue(TimeSpanResponse.fromMap((map['pushTiming']! as Map).cast<String, dynamic>())),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}

