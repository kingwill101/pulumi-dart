// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_healthcare_v1beta1_deidentify_field_metadata_response.dart';
import 'google_cloud_healthcare_v1beta1_deidentify_options_response.dart';

/// Specifies how to handle the de-identification of a FHIR store.
class FhirFieldConfigResponse {
  /// Specifies FHIR paths to match and how to transform them. Any field that is not matched by a FieldMetadata `action` is passed through to the output dataset unmodified. All extensions will be processed according to keep_extensions. If a field can be matched by more than one FieldMetadata `action`, the first `action` option is applied. Overrides options and the union field `profile` in FhirFieldConfig.
  final pulumi.Input<List<GoogleCloudHealthcareV1beta1DeidentifyFieldMetadataResponse>> fieldMetadataList;
  /// Specifies additional options, overriding the base ProfileType.
  final pulumi.Input<GoogleCloudHealthcareV1beta1DeidentifyOptionsResponse> options;
  /// Base profile type for handling FHIR fields.
  final pulumi.Input<String> profileType;

  /// Creates a new [FhirFieldConfigResponse].
  /// [fieldMetadataList] Specifies FHIR paths to match and how to transform them. Any field that is not matched by a FieldMetadata `action` is passed through to the output dataset unmodified. All extensions will be processed according to keep_extensions. If a field can be matched by more than one FieldMetadata `action`, the first `action` option is applied. Overrides options and the union field `profile` in FhirFieldConfig.
  /// [options] Specifies additional options, overriding the base ProfileType.
  /// [profileType] Base profile type for handling FHIR fields.
  FhirFieldConfigResponse({
    required this.fieldMetadataList,
    required this.options,
    required this.profileType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldMetadataList': pulumi.Input.mapInputValue<List<GoogleCloudHealthcareV1beta1DeidentifyFieldMetadataResponse>, List<Map<String, dynamic>>>(fieldMetadataList, (value) => pulumi.Input.encodeList<GoogleCloudHealthcareV1beta1DeidentifyFieldMetadataResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'options': pulumi.Input.mapInputValue<GoogleCloudHealthcareV1beta1DeidentifyOptionsResponse, Map<String, dynamic>>(options, (value) => value.toMap()),
      'profileType': profileType,
    };
  }

  factory FhirFieldConfigResponse.fromMap(Map<String, dynamic> map) {
    return FhirFieldConfigResponse(
      fieldMetadataList: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudHealthcareV1beta1DeidentifyFieldMetadataResponse>(map['fieldMetadataList']!, (value) => GoogleCloudHealthcareV1beta1DeidentifyFieldMetadataResponse.fromMap((value as Map).cast<String, dynamic>()))),
      options: pulumi.Input.fromValue(GoogleCloudHealthcareV1beta1DeidentifyOptionsResponse.fromMap((map['options']! as Map).cast<String, dynamic>())),
      profileType: pulumi.Input.fromValue(map['profileType'] as String),
    );
  }
}

