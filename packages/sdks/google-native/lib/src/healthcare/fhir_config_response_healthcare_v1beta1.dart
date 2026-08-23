// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_metadata_response_healthcare_v1beta1.dart';

/// Specifies how to handle de-identification of a FHIR store.
class FhirConfigResponseHealthcareV1beta1 {
  /// The behaviour for handling FHIR extensions that aren't otherwise specified for de-identification. If true, all extensions are preserved during de-identification by default. If false or unspecified, all extensions are removed during de-identification by default.
  final pulumi.Input<bool> defaultKeepExtensions;
  /// Specifies FHIR paths to match and how to transform them. Any field that is not matched by a FieldMetadata is passed through to the output dataset unmodified. All extensions will be processed according to `default_keep_extensions`. If a field can be matched by more than one FieldMetadata, the first FieldMetadata.Action is applied.
  final pulumi.Input<List<FieldMetadataResponseHealthcareV1beta1>> fieldMetadataList;

  /// Creates a new [FhirConfigResponseHealthcareV1beta1].
  /// [defaultKeepExtensions] The behaviour for handling FHIR extensions that aren't otherwise specified for de-identification. If true, all extensions are preserved during de-identification by default. If false or unspecified, all extensions are removed during de-identification by default.
  /// [fieldMetadataList] Specifies FHIR paths to match and how to transform them. Any field that is not matched by a FieldMetadata is passed through to the output dataset unmodified. All extensions will be processed according to `default_keep_extensions`. If a field can be matched by more than one FieldMetadata, the first FieldMetadata.Action is applied.
  const FhirConfigResponseHealthcareV1beta1({
    required this.defaultKeepExtensions,
    required this.fieldMetadataList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultKeepExtensions': defaultKeepExtensions,
      'fieldMetadataList': pulumi.Input.mapInputValue<List<FieldMetadataResponseHealthcareV1beta1>, List<Map<String, dynamic>>>(fieldMetadataList, (value) => pulumi.Input.encodeList<FieldMetadataResponseHealthcareV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FhirConfigResponseHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return FhirConfigResponseHealthcareV1beta1(
      defaultKeepExtensions: pulumi.Input.fromValue(map['defaultKeepExtensions'] as bool),
      fieldMetadataList: pulumi.Input.fromValue(pulumi.Input.decodeList<FieldMetadataResponseHealthcareV1beta1>(map['fieldMetadataList']!, (value) => FieldMetadataResponseHealthcareV1beta1.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
