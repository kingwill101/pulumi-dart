// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_page_detected_language.dart';
import 'google_cloud_documentai_v1_document_page_layout.dart';
import 'google_cloud_documentai_v1_document_provenance.dart';

/// A form field detected on the page.
class GoogleCloudDocumentaiV1DocumentPageFormField {
  /// Created for Labeling UI to export key text. If corrections were made to the text identified by the `field_name.text_anchor`, this field will contain the correction.
  final pulumi.Input<String>? correctedKeyText;
  /// Created for Labeling UI to export value text. If corrections were made to the text identified by the `field_value.text_anchor`, this field will contain the correction.
  final pulumi.Input<String>? correctedValueText;
  /// Layout for the FormField name. e.g. `Address`, `Email`, `Grand total`, `Phone number`, etc.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentPageLayout>? fieldName;
  /// Layout for the FormField value.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentPageLayout>? fieldValue;
  /// A list of detected languages for name together with confidence.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>>? nameDetectedLanguages;
  /// The history of this annotation.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentProvenance>? provenance;
  /// A list of detected languages for value together with confidence.
  final pulumi.Input<List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>>? valueDetectedLanguages;
  /// If the value is non-textual, this field represents the type. Current valid values are: - blank (this indicates the `field_value` is normal text) - `unfilled_checkbox` - `filled_checkbox`
  final pulumi.Input<String>? valueType;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageFormField].
  /// [correctedKeyText] Created for Labeling UI to export key text. If corrections were made to the text identified by the `field_name.text_anchor`, this field will contain the correction.
  /// [correctedValueText] Created for Labeling UI to export value text. If corrections were made to the text identified by the `field_value.text_anchor`, this field will contain the correction.
  /// [fieldName] Layout for the FormField name. e.g. `Address`, `Email`, `Grand total`, `Phone number`, etc.
  /// [fieldValue] Layout for the FormField value.
  /// [nameDetectedLanguages] A list of detected languages for name together with confidence.
  /// [provenance] The history of this annotation.
  /// [valueDetectedLanguages] A list of detected languages for value together with confidence.
  /// [valueType] If the value is non-textual, this field represents the type. Current valid values are: - blank (this indicates the `field_value` is normal text) - `unfilled_checkbox` - `filled_checkbox`
  GoogleCloudDocumentaiV1DocumentPageFormField({
    this.correctedKeyText,
    this.correctedValueText,
    this.fieldName,
    this.fieldValue,
    this.nameDetectedLanguages,
    this.provenance,
    this.valueDetectedLanguages,
    this.valueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'correctedKeyText': ?correctedKeyText,
      'correctedValueText': ?correctedValueText,
      'fieldName': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDocumentaiV1DocumentPageLayout, Map<String, dynamic>>(fieldName, (value) => value.toMap()),
      'fieldValue': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDocumentaiV1DocumentPageLayout, Map<String, dynamic>>(fieldValue, (value) => value.toMap()),
      'nameDetectedLanguages': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>, List<Map<String, dynamic>>>(nameDetectedLanguages, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provenance': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDocumentaiV1DocumentProvenance, Map<String, dynamic>>(provenance, (value) => value.toMap()),
      'valueDetectedLanguages': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>, List<Map<String, dynamic>>>(valueDetectedLanguages, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'valueType': ?valueType,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageFormField.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageFormField(
      correctedKeyText: map['correctedKeyText'] == null ? null : (map['correctedKeyText'] as String).input(),
      correctedValueText: map['correctedValueText'] == null ? null : (map['correctedValueText'] as String).input(),
      fieldName: map['fieldName'] == null ? null : (GoogleCloudDocumentaiV1DocumentPageLayout.fromMap((map['fieldName'] as Map).cast<String, dynamic>())).input(),
      fieldValue: map['fieldValue'] == null ? null : (GoogleCloudDocumentaiV1DocumentPageLayout.fromMap((map['fieldValue'] as Map).cast<String, dynamic>())).input(),
      nameDetectedLanguages: map['nameDetectedLanguages'] == null ? null : (pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>(map['nameDetectedLanguages'], (value) => GoogleCloudDocumentaiV1DocumentPageDetectedLanguage.fromMap((value as Map).cast<String, dynamic>()))).input(),
      provenance: map['provenance'] == null ? null : (GoogleCloudDocumentaiV1DocumentProvenance.fromMap((map['provenance'] as Map).cast<String, dynamic>())).input(),
      valueDetectedLanguages: map['valueDetectedLanguages'] == null ? null : (pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>(map['valueDetectedLanguages'], (value) => GoogleCloudDocumentaiV1DocumentPageDetectedLanguage.fromMap((value as Map).cast<String, dynamic>()))).input(),
      valueType: map['valueType'] == null ? null : (map['valueType'] as String).input(),
    );
  }
}

