// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableHiveOptionsStorageDescriptor {
  /// The fully qualified Java class name of the input format.
  final pulumi.Input<String>? inputFormat;
  /// Cloud Storage folder URI where the table data is stored, starting with "gs://".
  final pulumi.Input<String>? locationUri;
  /// The fully qualified Java class name of the output format.
  final pulumi.Input<String>? outputFormat;

  /// Creates a new [TableHiveOptionsStorageDescriptor].
  /// [inputFormat] The fully qualified Java class name of the input format.
  /// [locationUri] Cloud Storage folder URI where the table data is stored, starting with "gs://".
  /// [outputFormat] The fully qualified Java class name of the output format.
  TableHiveOptionsStorageDescriptor({
    this.inputFormat,
    this.locationUri,
    this.outputFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputFormat': ?inputFormat,
      'locationUri': ?locationUri,
      'outputFormat': ?outputFormat,
    };
  }

  factory TableHiveOptionsStorageDescriptor.fromMap(Map<String, dynamic> map) {
    return TableHiveOptionsStorageDescriptor(
      inputFormat: map['inputFormat'] == null ? null : (map['inputFormat'] as String).input(),
      locationUri: map['locationUri'] == null ? null : (map['locationUri'] as String).input(),
      outputFormat: map['outputFormat'] == null ? null : (map['outputFormat'] as String).input(),
    );
  }
}

