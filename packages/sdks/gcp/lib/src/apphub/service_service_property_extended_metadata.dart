// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_service_property_extended_metadata_value.dart';

class ServiceServicePropertyExtendedMetadata {
  /// (Output)
  /// The key of the extended metadata.
  final pulumi.Input<String>? key;
  /// (Output)
  /// The value of the extended metadata.
  /// Structure is documented below.
  final pulumi.Input<List<ServiceServicePropertyExtendedMetadataValue>>? values;

  /// Creates a new [ServiceServicePropertyExtendedMetadata].
  /// [key] (Output)
  /// [values] (Output)
  ServiceServicePropertyExtendedMetadata({
    this.key,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'values': ?pulumi.Input.mapOptionalInputValue<List<ServiceServicePropertyExtendedMetadataValue>, List<Map<String, dynamic>>>(values, (value) => pulumi.Input.encodeList<ServiceServicePropertyExtendedMetadataValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ServiceServicePropertyExtendedMetadata.fromMap(Map<String, dynamic> map) {
    return ServiceServicePropertyExtendedMetadata(
      key: map['key'] == null ? null : (map['key']! as String).input(),
      values: map['values'] == null ? null : (pulumi.Input.decodeList<ServiceServicePropertyExtendedMetadataValue>(map['values']!, (value) => ServiceServicePropertyExtendedMetadataValue.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

