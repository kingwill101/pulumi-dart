// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_hive_options_storage_descriptor_serde_info.dart';

class TableHiveOptionsStorageDescriptor {
  /// The fully qualified Java class name of the input format.
  final pulumi.Input<String?>? inputFormat;
  /// Cloud Storage folder URI where the table data is stored, starting with "gs://".
  final pulumi.Input<String?>? locationUri;
  /// The fully qualified Java class name of the output format.
  final pulumi.Input<String?>? outputFormat;
  /// Serializer and deserializer information.
  /// Structure is documented below.
  final pulumi.Input<TableHiveOptionsStorageDescriptorSerdeInfo?>? serdeInfo;

  /// Creates a new [TableHiveOptionsStorageDescriptor].
  /// [inputFormat] The fully qualified Java class name of the input format.
  /// [locationUri] Cloud Storage folder URI where the table data is stored, starting with "gs://".
  /// [outputFormat] The fully qualified Java class name of the output format.
  /// [serdeInfo] Serializer and deserializer information.
  const TableHiveOptionsStorageDescriptor({
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
      'serdeInfo': ?pulumi.Input.mapOptionalInputValue<TableHiveOptionsStorageDescriptorSerdeInfo, Map<String, dynamic>>(serdeInfo, (value) => value.toMap()),
    };
  }

  factory TableHiveOptionsStorageDescriptor.fromMap(Map<String, dynamic> map) {
    return TableHiveOptionsStorageDescriptor(
      inputFormat: (() { final guardedValue = map['inputFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locationUri: (() { final guardedValue = map['locationUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFormat: (() { final guardedValue = map['outputFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serdeInfo: (() { final guardedValue = map['serdeInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableHiveOptionsStorageDescriptorSerdeInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
