// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ser_de_info_response.dart';

/// Stores physical storage information of the data.
class StorageDescriptorResponse {
  /// The fully qualified Java class name of the input format.
  final pulumi.Input<String> inputFormat;
  /// Cloud Storage folder URI where the table data is stored, starting with "gs://".
  final pulumi.Input<String> locationUri;
  /// The fully qualified Java class name of the output format.
  final pulumi.Input<String> outputFormat;
  /// Serializer and deserializer information.
  final pulumi.Input<SerDeInfoResponse> serdeInfo;

  /// Creates a new [StorageDescriptorResponse].
  /// [inputFormat] The fully qualified Java class name of the input format.
  /// [locationUri] Cloud Storage folder URI where the table data is stored, starting with "gs://".
  /// [outputFormat] The fully qualified Java class name of the output format.
  /// [serdeInfo] Serializer and deserializer information.
  StorageDescriptorResponse({
    required this.inputFormat,
    required this.locationUri,
    required this.outputFormat,
    required this.serdeInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputFormat': inputFormat,
      'locationUri': locationUri,
      'outputFormat': outputFormat,
      'serdeInfo': pulumi.Input.mapInputValue<SerDeInfoResponse, Map<String, dynamic>>(serdeInfo, (value) => value.toMap()),
    };
  }

  factory StorageDescriptorResponse.fromMap(Map<String, dynamic> map) {
    return StorageDescriptorResponse(
      inputFormat: (map['inputFormat'] as String).input(),
      locationUri: (map['locationUri'] as String).input(),
      outputFormat: (map['outputFormat'] as String).input(),
      serdeInfo: (SerDeInfoResponse.fromMap((map['serdeInfo'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

