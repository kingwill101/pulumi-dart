// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'files_not_tiering_error_response.dart';

/// Server endpoint cloud tiering status object.
class CloudTieringFilesNotTieringResponse {
  /// Array of tiering errors
  final pulumi.Input<List<FilesNotTieringErrorResponse>> errors;

  /// Last updated timestamp
  final pulumi.Input<String> lastUpdatedTimestamp;

  /// Last cloud tiering result (HResult)
  final pulumi.Input<double> totalFileCount;

  /// Creates a new [CloudTieringFilesNotTieringResponse].
  /// [errors] Array of tiering errors
  /// [lastUpdatedTimestamp] Last updated timestamp
  /// [totalFileCount] Last cloud tiering result (HResult)
  CloudTieringFilesNotTieringResponse({
    required this.errors,
    required this.lastUpdatedTimestamp,
    required this.totalFileCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors':
          pulumi.Input.mapInputValue<
            List<FilesNotTieringErrorResponse>,
            List<Map<String, dynamic>>
          >(
            errors,
            (value) =>
                pulumi.Input.encodeList<
                  FilesNotTieringErrorResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'lastUpdatedTimestamp': lastUpdatedTimestamp,
      'totalFileCount': totalFileCount,
    };
  }

  factory CloudTieringFilesNotTieringResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return CloudTieringFilesNotTieringResponse(
      errors: pulumi.Input.fromValue(
        pulumi.Input.decodeList<FilesNotTieringErrorResponse>(
          map['errors']!,
          (value) => FilesNotTieringErrorResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      lastUpdatedTimestamp: pulumi.Input.fromValue(
        map['lastUpdatedTimestamp'] as String,
      ),
      totalFileCount: pulumi.Input.fromValue(map['totalFileCount'] as double),
    );
  }
}
