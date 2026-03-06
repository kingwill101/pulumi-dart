// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'big_query_iodetails.dart';
import 'big_table_iodetails.dart';
import 'datastore_iodetails.dart';
import 'file_iodetails.dart';
import 'pub_sub_iodetails.dart';
import 'sdk_version.dart';
import 'spanner_iodetails.dart';

/// Metadata available primarily for filtering jobs. Will be included in the ListJob response and Job SUMMARY view.
class JobMetadata {
  /// Identification of a Cloud Bigtable source used in the Dataflow job.
  final pulumi.Input<List<BigTableIODetails>>? bigTableDetails;
  /// Identification of a BigQuery source used in the Dataflow job.
  final pulumi.Input<List<BigQueryIODetails>>? bigqueryDetails;
  /// Identification of a Datastore source used in the Dataflow job.
  final pulumi.Input<List<DatastoreIODetails>>? datastoreDetails;
  /// Identification of a File source used in the Dataflow job.
  final pulumi.Input<List<FileIODetails>>? fileDetails;
  /// Identification of a Pub/Sub source used in the Dataflow job.
  final pulumi.Input<List<PubSubIODetails>>? pubsubDetails;
  /// The SDK version used to run the job.
  final pulumi.Input<SdkVersion>? sdkVersion;
  /// Identification of a Spanner source used in the Dataflow job.
  final pulumi.Input<List<SpannerIODetails>>? spannerDetails;
  /// List of display properties to help UI filter jobs.
  final pulumi.Input<Map<String, String>>? userDisplayProperties;

  /// Creates a new [JobMetadata].
  /// [bigTableDetails] Identification of a Cloud Bigtable source used in the Dataflow job.
  /// [bigqueryDetails] Identification of a BigQuery source used in the Dataflow job.
  /// [datastoreDetails] Identification of a Datastore source used in the Dataflow job.
  /// [fileDetails] Identification of a File source used in the Dataflow job.
  /// [pubsubDetails] Identification of a Pub/Sub source used in the Dataflow job.
  /// [sdkVersion] The SDK version used to run the job.
  /// [spannerDetails] Identification of a Spanner source used in the Dataflow job.
  /// [userDisplayProperties] List of display properties to help UI filter jobs.
  const JobMetadata({
    this.bigTableDetails,
    this.bigqueryDetails,
    this.datastoreDetails,
    this.fileDetails,
    this.pubsubDetails,
    this.sdkVersion,
    this.spannerDetails,
    this.userDisplayProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigTableDetails': ?pulumi.Input.mapOptionalInputValue<List<BigTableIODetails>, List<Map<String, dynamic>>>(bigTableDetails, (value) => pulumi.Input.encodeList<BigTableIODetails, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bigqueryDetails': ?pulumi.Input.mapOptionalInputValue<List<BigQueryIODetails>, List<Map<String, dynamic>>>(bigqueryDetails, (value) => pulumi.Input.encodeList<BigQueryIODetails, Map<String, dynamic>>(value, (value) => value.toMap())),
      'datastoreDetails': ?pulumi.Input.mapOptionalInputValue<List<DatastoreIODetails>, List<Map<String, dynamic>>>(datastoreDetails, (value) => pulumi.Input.encodeList<DatastoreIODetails, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fileDetails': ?pulumi.Input.mapOptionalInputValue<List<FileIODetails>, List<Map<String, dynamic>>>(fileDetails, (value) => pulumi.Input.encodeList<FileIODetails, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pubsubDetails': ?pulumi.Input.mapOptionalInputValue<List<PubSubIODetails>, List<Map<String, dynamic>>>(pubsubDetails, (value) => pulumi.Input.encodeList<PubSubIODetails, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sdkVersion': ?pulumi.Input.mapOptionalInputValue<SdkVersion, Map<String, dynamic>>(sdkVersion, (value) => value.toMap()),
      'spannerDetails': ?pulumi.Input.mapOptionalInputValue<List<SpannerIODetails>, List<Map<String, dynamic>>>(spannerDetails, (value) => pulumi.Input.encodeList<SpannerIODetails, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userDisplayProperties': ?userDisplayProperties,
    };
  }

  factory JobMetadata.fromMap(Map<String, dynamic> map) {
    return JobMetadata(
      bigTableDetails: (() { final guardedValue = map['bigTableDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BigTableIODetails>(guardedValue, (value) => BigTableIODetails.fromMap((value as Map).cast<String, dynamic>()))); })(),
      bigqueryDetails: (() { final guardedValue = map['bigqueryDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BigQueryIODetails>(guardedValue, (value) => BigQueryIODetails.fromMap((value as Map).cast<String, dynamic>()))); })(),
      datastoreDetails: (() { final guardedValue = map['datastoreDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DatastoreIODetails>(guardedValue, (value) => DatastoreIODetails.fromMap((value as Map).cast<String, dynamic>()))); })(),
      fileDetails: (() { final guardedValue = map['fileDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FileIODetails>(guardedValue, (value) => FileIODetails.fromMap((value as Map).cast<String, dynamic>()))); })(),
      pubsubDetails: (() { final guardedValue = map['pubsubDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PubSubIODetails>(guardedValue, (value) => PubSubIODetails.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sdkVersion: (() { final guardedValue = map['sdkVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SdkVersion.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spannerDetails: (() { final guardedValue = map['spannerDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SpannerIODetails>(guardedValue, (value) => SpannerIODetails.fromMap((value as Map).cast<String, dynamic>()))); })(),
      userDisplayProperties: (() { final guardedValue = map['userDisplayProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

