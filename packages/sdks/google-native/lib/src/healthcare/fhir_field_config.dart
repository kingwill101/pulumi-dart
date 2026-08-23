// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fhir_field_config_profile_type.dart';
import 'google_cloud_healthcare_v1beta1_deidentify_field_metadata.dart';
import 'google_cloud_healthcare_v1beta1_deidentify_options.dart';

/// Specifies how to handle the de-identification of a FHIR store.
class FhirFieldConfig {
  /// Specifies FHIR paths to match and how to transform them. Any field that is not matched by a FieldMetadata `action` is passed through to the output dataset unmodified. All extensions will be processed according to keep_extensions. If a field can be matched by more than one FieldMetadata `action`, the first `action` option is applied. Overrides options and the union field `profile` in FhirFieldConfig.
  final pulumi.Input<List<GoogleCloudHealthcareV1beta1DeidentifyFieldMetadata>>? fieldMetadataList;
  /// Specifies additional options, overriding the base ProfileType.
  final pulumi.Input<GoogleCloudHealthcareV1beta1DeidentifyOptions>? options;
  /// Base profile type for handling FHIR fields.
  final pulumi.Input<FhirFieldConfigProfileType>? profileType;

  /// Creates a new [FhirFieldConfig].
  /// [fieldMetadataList] Specifies FHIR paths to match and how to transform them. Any field that is not matched by a FieldMetadata `action` is passed through to the output dataset unmodified. All extensions will be processed according to keep_extensions. If a field can be matched by more than one FieldMetadata `action`, the first `action` option is applied. Overrides options and the union field `profile` in FhirFieldConfig.
  /// [options] Specifies additional options, overriding the base ProfileType.
  /// [profileType] Base profile type for handling FHIR fields.
  const FhirFieldConfig({
    this.fieldMetadataList,
    this.options,
    this.profileType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldMetadataList': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudHealthcareV1beta1DeidentifyFieldMetadata>, List<Map<String, dynamic>>>(fieldMetadataList, (value) => pulumi.Input.encodeList<GoogleCloudHealthcareV1beta1DeidentifyFieldMetadata, Map<String, dynamic>>(value, (value) => value.toMap())),
      'options': ?pulumi.Input.mapOptionalInputValue<GoogleCloudHealthcareV1beta1DeidentifyOptions, Map<String, dynamic>>(options, (value) => value.toMap()),
      'profileType': ?pulumi.Input.mapOptionalInputValue<FhirFieldConfigProfileType, String>(profileType, (value) => value.wireValue),
    };
  }

  factory FhirFieldConfig.fromMap(Map<String, dynamic> map) {
    return FhirFieldConfig(
      fieldMetadataList: (() { final guardedValue = map['fieldMetadataList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudHealthcareV1beta1DeidentifyFieldMetadata>(guardedValue, (value) => GoogleCloudHealthcareV1beta1DeidentifyFieldMetadata.fromMap((value as Map).cast<String, dynamic>()))); })(),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudHealthcareV1beta1DeidentifyOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      profileType: (() { final guardedValue = map['profileType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FhirFieldConfigProfileType.fromValue(guardedValue as String)); })(),
    );
  }
}
