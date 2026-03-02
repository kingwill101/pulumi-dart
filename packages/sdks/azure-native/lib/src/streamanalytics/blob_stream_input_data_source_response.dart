// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_account_response.dart';

/// Describes a blob input data source that contains stream data.
class BlobStreamInputDataSourceResponse {
  /// Authentication Mode.
  final pulumi.Input<String>? authenticationMode;
  /// The name of a container within the associated Storage account. This container contains either the blob(s) to be read from or written to. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? container;
  /// The date format. Wherever {date} appears in pathPattern, the value of this property is used as the date format instead.
  final pulumi.Input<String>? dateFormat;
  /// The blob path pattern. Not a regular expression. It represents a pattern against which blob names will be matched to determine whether or not they should be included as input or output to the job. See https://docs.microsoft.com/en-us/rest/api/streamanalytics/stream-analytics-input or https://docs.microsoft.com/en-us/rest/api/streamanalytics/stream-analytics-output for a more detailed explanation and example.
  final pulumi.Input<String>? pathPattern;
  /// The partition count of the blob input data source. Range 1 - 1024.
  final pulumi.Input<int>? sourcePartitionCount;
  /// A list of one or more Azure Storage accounts. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<List<StorageAccountResponse>>? storageAccounts;
  /// The time format. Wherever {time} appears in pathPattern, the value of this property is used as the time format instead.
  final pulumi.Input<String>? timeFormat;
  /// Indicates the type of input data source containing stream data. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'Microsoft.Storage/Blob'.
  final pulumi.Input<String> type;

  /// Creates a new [BlobStreamInputDataSourceResponse].
  /// [authenticationMode] Authentication Mode.
  /// [container] The name of a container within the associated Storage account. This container contains either the blob(s) to be read from or written to. Required on PUT (CreateOrReplace) requests.
  /// [dateFormat] The date format. Wherever {date} appears in pathPattern, the value of this property is used as the date format instead.
  /// [pathPattern] The blob path pattern. Not a regular expression. It represents a pattern against which blob names will be matched to determine whether or not they should be included as input or output to the job. See https://docs.microsoft.com/en-us/rest/api/streamanalytics/stream-analytics-input or https://docs.microsoft.com/en-us/rest/api/streamanalytics/stream-analytics-output for a more detailed explanation and example.
  /// [sourcePartitionCount] The partition count of the blob input data source. Range 1 - 1024.
  /// [storageAccounts] A list of one or more Azure Storage accounts. Required on PUT (CreateOrReplace) requests.
  /// [timeFormat] The time format. Wherever {time} appears in pathPattern, the value of this property is used as the time format instead.
  /// [type] Indicates the type of input data source containing stream data. Required on PUT (CreateOrReplace) requests.
  BlobStreamInputDataSourceResponse({
    this.authenticationMode,
    this.container,
    this.dateFormat,
    this.pathPattern,
    this.sourcePartitionCount,
    this.storageAccounts,
    this.timeFormat,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': ?authenticationMode,
      'container': ?container,
      'dateFormat': ?dateFormat,
      'pathPattern': ?pathPattern,
      'sourcePartitionCount': ?sourcePartitionCount,
      'storageAccounts': ?pulumi.Input.mapOptionalInputValue<List<StorageAccountResponse>, List<Map<String, dynamic>>>(storageAccounts, (value) => pulumi.Input.encodeList<StorageAccountResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeFormat': ?timeFormat,
      'type': type,
    };
  }

  factory BlobStreamInputDataSourceResponse.fromMap(Map<String, dynamic> map) {
    return BlobStreamInputDataSourceResponse(
      authenticationMode: map['authenticationMode'] == null ? null : (map['authenticationMode']! as String).input(),
      container: map['container'] == null ? null : (map['container']! as String).input(),
      dateFormat: map['dateFormat'] == null ? null : (map['dateFormat']! as String).input(),
      pathPattern: map['pathPattern'] == null ? null : (map['pathPattern']! as String).input(),
      sourcePartitionCount: map['sourcePartitionCount'] == null ? null : (map['sourcePartitionCount']! as int).input(),
      storageAccounts: map['storageAccounts'] == null ? null : (pulumi.Input.decodeList<StorageAccountResponse>(map['storageAccounts']!, (value) => StorageAccountResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      timeFormat: map['timeFormat'] == null ? null : (map['timeFormat']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

