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
  const StorageDescriptor({
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
      inputFormat: (() { final guardedValue = map['inputFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locationUri: (() { final guardedValue = map['locationUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFormat: (() { final guardedValue = map['outputFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serdeInfo: (() { final guardedValue = map['serdeInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SerDeInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

