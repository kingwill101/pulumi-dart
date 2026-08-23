// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_page_detected_language_response.dart';
import 'google_cloud_documentai_v1_document_page_layout_response.dart';
import 'google_cloud_documentai_v1_document_provenance_response.dart';

/// A form field detected on the page.
class GoogleCloudDocumentaiV1DocumentPageFormFieldResponse {
  /// Created for Labeling UI to export key text. If corrections were made to the text identified by the `field_name.text_anchor`, this field will contain the correction.
  final pulumi.Input<String> correctedKeyText;
  /// Created for Labeling UI to export value text. If corrections were made to the text identified by the `field_value.text_anchor`, this field will contain the correction.
  final pulumi.Input<String> correctedValueText;
  /// Layout for the FormField name. e.g. `Address`, `Email`, `Grand total`, `Phone number`, etc.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentPageLayoutResponse> fieldName;
  /// Layout for the FormField value.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentPageLayoutResponse> fieldValue;
  /// A list of detected languages for name together with confidence.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse>> nameDetectedLanguages;
  /// The history of this annotation.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentProvenanceResponse> provenance;
  /// A list of detected languages for value together with confidence.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse>> valueDetectedLanguages;
  /// If the value is non-textual, this field represents the type. Current valid values are: - blank (this indicates the `field_value` is normal text) - `unfilled_checkbox` - `filled_checkbox`
  final pulumi.Input<String> valueType;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageFormFieldResponse].
  /// [correctedKeyText] Created for Labeling UI to export key text. If corrections were made to the text identified by the `field_name.text_anchor`, this field will contain the correction.
  /// [correctedValueText] Created for Labeling UI to export value text. If corrections were made to the text identified by the `field_value.text_anchor`, this field will contain the correction.
  /// [fieldName] Layout for the FormField name. e.g. `Address`, `Email`, `Grand total`, `Phone number`, etc.
  /// [fieldValue] Layout for the FormField value.
  /// [nameDetectedLanguages] A list of detected languages for name together with confidence.
  /// [provenance] The history of this annotation.
  /// [valueDetectedLanguages] A list of detected languages for value together with confidence.
  /// [valueType] If the value is non-textual, this field represents the type. Current valid values are: - blank (this indicates the `field_value` is normal text) - `unfilled_checkbox` - `filled_checkbox`
  const GoogleCloudDocumentaiV1DocumentPageFormFieldResponse({
    required this.correctedKeyText,
    required this.correctedValueText,
    required this.fieldName,
    required this.fieldValue,
    required this.nameDetectedLanguages,
    required this.provenance,
    required this.valueDetectedLanguages,
    required this.valueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'correctedKeyText': correctedKeyText,
      'correctedValueText': correctedValueText,
      'fieldName': pulumi.Input.mapInputValue<GoogleCloudDocumentaiV1DocumentPageLayoutResponse, Map<String, dynamic>>(fieldName, (value) => value.toMap()),
      'fieldValue': pulumi.Input.mapInputValue<GoogleCloudDocumentaiV1DocumentPageLayoutResponse, Map<String, dynamic>>(fieldValue, (value) => value.toMap()),
      'nameDetectedLanguages': pulumi.Input.mapInputValue<List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse>, List<Map<String, dynamic>>>(nameDetectedLanguages, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provenance': pulumi.Input.mapInputValue<GoogleCloudDocumentaiV1DocumentProvenanceResponse, Map<String, dynamic>>(provenance, (value) => value.toMap()),
      'valueDetectedLanguages': pulumi.Input.mapInputValue<List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse>, List<Map<String, dynamic>>>(valueDetectedLanguages, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'valueType': valueType,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageFormFieldResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageFormFieldResponse(
      correctedKeyText: pulumi.Input.fromValue(map['correctedKeyText'] as String),
      correctedValueText: pulumi.Input.fromValue(map['correctedValueText'] as String),
      fieldName: pulumi.Input.fromValue(GoogleCloudDocumentaiV1DocumentPageLayoutResponse.fromMap((map['fieldName']! as Map).cast<String, dynamic>())),
      fieldValue: pulumi.Input.fromValue(GoogleCloudDocumentaiV1DocumentPageLayoutResponse.fromMap((map['fieldValue']! as Map).cast<String, dynamic>())),
      nameDetectedLanguages: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse>(map['nameDetectedLanguages']!, (value) => GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse.fromMap((value as Map).cast<String, dynamic>()))),
      provenance: pulumi.Input.fromValue(GoogleCloudDocumentaiV1DocumentProvenanceResponse.fromMap((map['provenance']! as Map).cast<String, dynamic>())),
      valueDetectedLanguages: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse>(map['valueDetectedLanguages']!, (value) => GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse.fromMap((value as Map).cast<String, dynamic>()))),
      valueType: pulumi.Input.fromValue(map['valueType'] as String),
    );
  }
}
