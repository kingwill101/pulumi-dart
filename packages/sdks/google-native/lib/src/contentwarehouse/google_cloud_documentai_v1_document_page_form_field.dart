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
  const GoogleCloudDocumentaiV1DocumentPageFormField({
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
      correctedKeyText: (() { final guardedValue = map['correctedKeyText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      correctedValueText: (() { final guardedValue = map['correctedValueText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fieldName: (() { final guardedValue = map['fieldName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDocumentaiV1DocumentPageLayout.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fieldValue: (() { final guardedValue = map['fieldValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDocumentaiV1DocumentPageLayout.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nameDetectedLanguages: (() { final guardedValue = map['nameDetectedLanguages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>(guardedValue, (value) => GoogleCloudDocumentaiV1DocumentPageDetectedLanguage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      provenance: (() { final guardedValue = map['provenance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDocumentaiV1DocumentProvenance.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      valueDetectedLanguages: (() { final guardedValue = map['valueDetectedLanguages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>(guardedValue, (value) => GoogleCloudDocumentaiV1DocumentPageDetectedLanguage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      valueType: (() { final guardedValue = map['valueType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
