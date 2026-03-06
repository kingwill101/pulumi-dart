// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_metadata.dart';

/// Specifies how to handle de-identification of a FHIR store.
class FhirConfig {
  /// The behaviour for handling FHIR extensions that aren't otherwise specified for de-identification. If true, all extensions are preserved during de-identification by default. If false or unspecified, all extensions are removed during de-identification by default.
  final pulumi.Input<bool>? defaultKeepExtensions;
  /// Specifies FHIR paths to match and how to transform them. Any field that is not matched by a FieldMetadata is passed through to the output dataset unmodified. All extensions will be processed according to `default_keep_extensions`.
  final pulumi.Input<List<FieldMetadata>>? fieldMetadataList;

  /// Creates a new [FhirConfig].
  /// [defaultKeepExtensions] The behaviour for handling FHIR extensions that aren't otherwise specified for de-identification. If true, all extensions are preserved during de-identification by default. If false or unspecified, all extensions are removed during de-identification by default.
  /// [fieldMetadataList] Specifies FHIR paths to match and how to transform them. Any field that is not matched by a FieldMetadata is passed through to the output dataset unmodified. All extensions will be processed according to `default_keep_extensions`.
  const FhirConfig({
    this.defaultKeepExtensions,
    this.fieldMetadataList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultKeepExtensions': ?defaultKeepExtensions,
      'fieldMetadataList': ?pulumi.Input.mapOptionalInputValue<List<FieldMetadata>, List<Map<String, dynamic>>>(fieldMetadataList, (value) => pulumi.Input.encodeList<FieldMetadata, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FhirConfig.fromMap(Map<String, dynamic> map) {
    return FhirConfig(
      defaultKeepExtensions: (() { final guardedValue = map['defaultKeepExtensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      fieldMetadataList: (() { final guardedValue = map['fieldMetadataList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FieldMetadata>(guardedValue, (value) => FieldMetadata.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

