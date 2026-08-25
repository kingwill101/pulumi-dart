// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_service_property_extended_metadata_value.dart';

class ServiceServicePropertyExtendedMetadata {
  /// (Output)
  /// The key of the extended metadata.
  final pulumi.Input<String?>? key;
  /// (Output)
  /// The value of the extended metadata.
  /// Structure is documented below.
  final pulumi.Input<List<ServiceServicePropertyExtendedMetadataValue>?>? values;

  /// Creates a new [ServiceServicePropertyExtendedMetadata].
  /// [key] (Output)
  /// [values] (Output)
  const ServiceServicePropertyExtendedMetadata({
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
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceServicePropertyExtendedMetadataValue>(guardedValue, (value) => ServiceServicePropertyExtendedMetadataValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
