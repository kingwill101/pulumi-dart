// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableBiglakeConfiguration {
  /// The connection specifying the credentials to be used to
  /// read and write to external storage, such as Cloud Storage. The connection_id can
  /// have the form "&lt;project\_id&gt;.&lt;location\_id&gt;.&lt;connection\_id&gt;" or
  /// projects/&lt;project\_id&gt;/locations/&lt;location\_id&gt;/connections/&lt;connection\_id&gt;".
  final pulumi.Input<String> connectionId;
  /// The file format the table data is stored in.
  final pulumi.Input<String> fileFormat;
  /// The fully qualified location prefix of the external folder where table data
  /// is stored. The '*' wildcard character is not allowed. The URI should be in the format "gs://bucket/path_to_table/"
  final pulumi.Input<String> storageUri;
  /// The table format the metadata only snapshots are stored in.
  final pulumi.Input<String> tableFormat;

  /// Creates a new [TableBiglakeConfiguration].
  /// [connectionId] The connection specifying the credentials to be used to
  /// [fileFormat] The file format the table data is stored in.
  /// [storageUri] The fully qualified location prefix of the external folder where table data
  /// [tableFormat] The table format the metadata only snapshots are stored in.
  TableBiglakeConfiguration({
    required this.connectionId,
    required this.fileFormat,
    required this.storageUri,
    required this.tableFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionId': connectionId,
      'fileFormat': fileFormat,
      'storageUri': storageUri,
      'tableFormat': tableFormat,
    };
  }

  factory TableBiglakeConfiguration.fromMap(Map<String, dynamic> map) {
    return TableBiglakeConfiguration(
      connectionId: (map['connectionId'] as String).input(),
      fileFormat: (map['fileFormat'] as String).input(),
      storageUri: (map['storageUri'] as String).input(),
      tableFormat: (map['tableFormat'] as String).input(),
    );
  }
}

