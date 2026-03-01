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
  final List<BigTableIODetails>? bigTableDetails;
  /// Identification of a BigQuery source used in the Dataflow job.
  final List<BigQueryIODetails>? bigqueryDetails;
  /// Identification of a Datastore source used in the Dataflow job.
  final List<DatastoreIODetails>? datastoreDetails;
  /// Identification of a File source used in the Dataflow job.
  final List<FileIODetails>? fileDetails;
  /// Identification of a Pub/Sub source used in the Dataflow job.
  final List<PubSubIODetails>? pubsubDetails;
  /// The SDK version used to run the job.
  final SdkVersion? sdkVersion;
  /// Identification of a Spanner source used in the Dataflow job.
  final List<SpannerIODetails>? spannerDetails;
  /// List of display properties to help UI filter jobs.
  final Map<String, String>? userDisplayProperties;

  /// Creates a new [JobMetadata].
  /// [bigTableDetails] Identification of a Cloud Bigtable source used in the Dataflow job.
  /// [bigqueryDetails] Identification of a BigQuery source used in the Dataflow job.
  /// [datastoreDetails] Identification of a Datastore source used in the Dataflow job.
  /// [fileDetails] Identification of a File source used in the Dataflow job.
  /// [pubsubDetails] Identification of a Pub/Sub source used in the Dataflow job.
  /// [sdkVersion] The SDK version used to run the job.
  /// [spannerDetails] Identification of a Spanner source used in the Dataflow job.
  /// [userDisplayProperties] List of display properties to help UI filter jobs.
  JobMetadata({
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
      'bigTableDetails': ?bigTableDetails == null ? null : pulumi.Input.encodeList<BigTableIODetails, Map<String, dynamic>>(bigTableDetails!, (value) => value.toMap()),
      'bigqueryDetails': ?bigqueryDetails == null ? null : pulumi.Input.encodeList<BigQueryIODetails, Map<String, dynamic>>(bigqueryDetails!, (value) => value.toMap()),
      'datastoreDetails': ?datastoreDetails == null ? null : pulumi.Input.encodeList<DatastoreIODetails, Map<String, dynamic>>(datastoreDetails!, (value) => value.toMap()),
      'fileDetails': ?fileDetails == null ? null : pulumi.Input.encodeList<FileIODetails, Map<String, dynamic>>(fileDetails!, (value) => value.toMap()),
      'pubsubDetails': ?pubsubDetails == null ? null : pulumi.Input.encodeList<PubSubIODetails, Map<String, dynamic>>(pubsubDetails!, (value) => value.toMap()),
      'sdkVersion': ?sdkVersion == null ? null : sdkVersion!.toMap(),
      'spannerDetails': ?spannerDetails == null ? null : pulumi.Input.encodeList<SpannerIODetails, Map<String, dynamic>>(spannerDetails!, (value) => value.toMap()),
      'userDisplayProperties': ?userDisplayProperties,
    };
  }

  factory JobMetadata.fromMap(Map<String, dynamic> map) {
    return JobMetadata(
      bigTableDetails: map['bigTableDetails'] == null ? null : pulumi.Input.decodeList<BigTableIODetails>(map['bigTableDetails'], (value) => BigTableIODetails.fromMap((value as Map).cast<String, dynamic>())),
      bigqueryDetails: map['bigqueryDetails'] == null ? null : pulumi.Input.decodeList<BigQueryIODetails>(map['bigqueryDetails'], (value) => BigQueryIODetails.fromMap((value as Map).cast<String, dynamic>())),
      datastoreDetails: map['datastoreDetails'] == null ? null : pulumi.Input.decodeList<DatastoreIODetails>(map['datastoreDetails'], (value) => DatastoreIODetails.fromMap((value as Map).cast<String, dynamic>())),
      fileDetails: map['fileDetails'] == null ? null : pulumi.Input.decodeList<FileIODetails>(map['fileDetails'], (value) => FileIODetails.fromMap((value as Map).cast<String, dynamic>())),
      pubsubDetails: map['pubsubDetails'] == null ? null : pulumi.Input.decodeList<PubSubIODetails>(map['pubsubDetails'], (value) => PubSubIODetails.fromMap((value as Map).cast<String, dynamic>())),
      sdkVersion: map['sdkVersion'] == null ? null : SdkVersion.fromMap((map['sdkVersion'] as Map).cast<String, dynamic>()),
      spannerDetails: map['spannerDetails'] == null ? null : pulumi.Input.decodeList<SpannerIODetails>(map['spannerDetails'], (value) => SpannerIODetails.fromMap((value as Map).cast<String, dynamic>())),
      userDisplayProperties: map['userDisplayProperties'] == null ? null : (map['userDisplayProperties'] as Map).cast<String, String>(),
    );
  }
}

