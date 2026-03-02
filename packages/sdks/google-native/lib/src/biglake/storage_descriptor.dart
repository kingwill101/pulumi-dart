// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ser_de_info.dart';

/// Stores physical storage information of the data.
class StorageDescriptor {
  /// The fully qualified Java class name of the input format.
  final pulumi.Input<String>? inputFormat;
  /// Cloud Storage folder URI where the table data is stored, starting with "gs://".
  final pulumi.Input<String>? locationUri;
  /// The fully qualified Java class name of the output format.
  final pulumi.Input<String>? outputFormat;
  /// Serializer and deserializer information.
  final pulumi.Input<SerDeInfo>? serdeInfo;

  /// Creates a new [StorageDescriptor].
  /// [inputFormat] The fully qualified Java class name of the input format.
  /// [locationUri] Cloud Storage folder URI where the table data is stored, starting with "gs://".
  /// [outputFormat] The fully qualified Java class name of the output format.
  /// [serdeInfo] Serializer and deserializer information.
  StorageDescriptor({
    this.inputFormat,
    this.locationUri,
    this.outputFormat,
    this.serdeInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputFormat': ?inputFormat,
      'locationUri': ?locationUri,
      'outputFormat': ?outputFormat,
      'serdeInfo': ?pulumi.Input.mapOptionalInputValue<SerDeInfo, Map<String, dynamic>>(serdeInfo, (value) => value.toMap()),
    };
  }

  factory StorageDescriptor.fromMap(Map<String, dynamic> map) {
    return StorageDescriptor(
      inputFormat: map['inputFormat'] == null ? null : (map['inputFormat']! as String).input(),
      locationUri: map['locationUri'] == null ? null : (map['locationUri']! as String).input(),
      outputFormat: map['outputFormat'] == null ? null : (map['outputFormat']! as String).input(),
      serdeInfo: map['serdeInfo'] == null ? null : (SerDeInfo.fromMap((map['serdeInfo']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

