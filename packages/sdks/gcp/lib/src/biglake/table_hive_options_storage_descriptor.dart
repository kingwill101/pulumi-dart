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
      inputFormat: (() { final guardedValue = map['inputFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locationUri: (() { final guardedValue = map['locationUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFormat: (() { final guardedValue = map['outputFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

