// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_metadata_response.dart';

/// Specifies how to handle de-identification of a FHIR store.
class FhirConfigResponse {
  /// The behaviour for handling FHIR extensions that aren't otherwise specified for de-identification. If true, all extensions are preserved during de-identification by default. If false or unspecified, all extensions are removed during de-identification by default.
  final pulumi.Input<bool> defaultKeepExtensions;
  /// Specifies FHIR paths to match and how to transform them. Any field that is not matched by a FieldMetadata is passed through to the output dataset unmodified. All extensions will be processed according to `default_keep_extensions`.
  final pulumi.Input<List<FieldMetadataResponse>> fieldMetadataList;

  /// Creates a new [FhirConfigResponse].
  /// [defaultKeepExtensions] The behaviour for handling FHIR extensions that aren't otherwise specified for de-identification. If true, all extensions are preserved during de-identification by default. If false or unspecified, all extensions are removed during de-identification by default.
  /// [fieldMetadataList] Specifies FHIR paths to match and how to transform them. Any field that is not matched by a FieldMetadata is passed through to the output dataset unmodified. All extensions will be processed according to `default_keep_extensions`.
  const FhirConfigResponse({
    required this.defaultKeepExtensions,
    required this.fieldMetadataList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultKeepExtensions': defaultKeepExtensions,
      'fieldMetadataList': pulumi.Input.mapInputValue<List<FieldMetadataResponse>, List<Map<String, dynamic>>>(fieldMetadataList, (value) => pulumi.Input.encodeList<FieldMetadataResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FhirConfigResponse.fromMap(Map<String, dynamic> map) {
    return FhirConfigResponse(
      defaultKeepExtensions: pulumi.Input.fromValue(map['defaultKeepExtensions'] as bool),
      fieldMetadataList: pulumi.Input.fromValue(pulumi.Input.decodeList<FieldMetadataResponse>(map['fieldMetadataList']!, (value) => FieldMetadataResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
