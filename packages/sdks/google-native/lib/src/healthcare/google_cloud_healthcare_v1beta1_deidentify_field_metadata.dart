// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the FHIR paths to match and how to handle the de-identification of matching fields.
class GoogleCloudHealthcareV1beta1DeidentifyFieldMetadata {
  /// Replace the field's value with a masking character. Supported [types](https://www.hl7.org/fhir/datatypes.html): Code, Decimal, HumanName, Id, LanguageCode, Markdown, Oid, String, Uri, Uuid, Xhtml.
  final pulumi.Input<Map<String, dynamic>>? characterMaskField;
  /// Inspect the field's text and transform sensitive text. Configure using TextConfig. Supported [types](https://www.hl7.org/fhir/datatypes.html): Code, Date, DateTime, Decimal, HumanName, Id, LanguageCode, Markdown, Oid, String, Uri, Uuid, Xhtml.
  final pulumi.Input<Map<String, dynamic>>? cleanTextField;
  /// Replace field value with a hash of that value. Supported [types](https://www.hl7.org/fhir/datatypes.html): Code, Decimal, HumanName, Id, LanguageCode, Markdown, Oid, String, Uri, Uuid, Xhtml.
  final pulumi.Input<Map<String, dynamic>>? cryptoHashField;
  /// Shift the date by a randomized number of days. See [date shifting](https://cloud.google.com/dlp/docs/concepts-date-shifting) for more information. Supported [types](https://www.hl7.org/fhir/datatypes.html): Date, DateTime.
  final pulumi.Input<Map<String, dynamic>>? dateShiftField;
  /// Keep the field unchanged.
  final pulumi.Input<Map<String, dynamic>>? keepField;
  /// List of paths to FHIR fields to redact. Each path is a period-separated list where each component is either a field name or FHIR [type](https://www.hl7.org/fhir/datatypes.html) name. All types begin with an upper case letter. For example, the resource field `Patient.Address.city`, which uses a [string](https://www.hl7.org/fhir/datatypes-definitions.html#Address.city) type, can be matched by `Patient.Address.String`. Partial matching is supported. For example, `Patient.Address.city` can be matched by `Address.city` (with `Patient` omitted). Partial matching and type matching can be combined, for example `Patient.Address.city` can be matched by `Address.String`. For "choice" types (those defined in the FHIR spec with the format `field[x]`), use two separate components. For example, `deceasedAge.unit` is matched by `Deceased.Age.unit`. The following types are supported: AdministrativeGenderCode, Base64Binary, Boolean, Code, Date, DateTime, Decimal, HumanName, Id, Instant, Integer, LanguageCode, Markdown, Oid, PositiveInt, String, UnsignedInt, Uri, Uuid, Xhtml. The sub-type for HumanName (for example `HumanName.given`, `HumanName.family`) can be omitted.
  final pulumi.Input<List<String>>? paths;
  /// Remove the field.
  final pulumi.Input<Map<String, dynamic>>? removeField;

  /// Creates a new [GoogleCloudHealthcareV1beta1DeidentifyFieldMetadata].
  /// [characterMaskField] Replace the field's value with a masking character. Supported [types](https://www.hl7.org/fhir/datatypes.html): Code, Decimal, HumanName, Id, LanguageCode, Markdown, Oid, String, Uri, Uuid, Xhtml.
  /// [cleanTextField] Inspect the field's text and transform sensitive text. Configure using TextConfig. Supported [types](https://www.hl7.org/fhir/datatypes.html): Code, Date, DateTime, Decimal, HumanName, Id, LanguageCode, Markdown, Oid, String, Uri, Uuid, Xhtml.
  /// [cryptoHashField] Replace field value with a hash of that value. Supported [types](https://www.hl7.org/fhir/datatypes.html): Code, Decimal, HumanName, Id, LanguageCode, Markdown, Oid, String, Uri, Uuid, Xhtml.
  /// [dateShiftField] Shift the date by a randomized number of days. See [date shifting](https://cloud.google.com/dlp/docs/concepts-date-shifting) for more information. Supported [types](https://www.hl7.org/fhir/datatypes.html): Date, DateTime.
  /// [keepField] Keep the field unchanged.
  /// [paths] List of paths to FHIR fields to redact. Each path is a period-separated list where each component is either a field name or FHIR [type](https://www.hl7.org/fhir/datatypes.html) name. All types begin with an upper case letter. For example, the resource field `Patient.Address.city`, which uses a [string](https://www.hl7.org/fhir/datatypes-definitions.html#Address.city) type, can be matched by `Patient.Address.String`. Partial matching is supported. For example, `Patient.Address.city` can be matched by `Address.city` (with `Patient` omitted). Partial matching and type matching can be combined, for example `Patient.Address.city` can be matched by `Address.String`. For "choice" types (those defined in the FHIR spec with the format `field[x]`), use two separate components. For example, `deceasedAge.unit` is matched by `Deceased.Age.unit`. The following types are supported: AdministrativeGenderCode, Base64Binary, Boolean, Code, Date, DateTime, Decimal, HumanName, Id, Instant, Integer, LanguageCode, Markdown, Oid, PositiveInt, String, UnsignedInt, Uri, Uuid, Xhtml. The sub-type for HumanName (for example `HumanName.given`, `HumanName.family`) can be omitted.
  /// [removeField] Remove the field.
  const GoogleCloudHealthcareV1beta1DeidentifyFieldMetadata({
    this.characterMaskField,
    this.cleanTextField,
    this.cryptoHashField,
    this.dateShiftField,
    this.keepField,
    this.paths,
    this.removeField,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'characterMaskField': ?characterMaskField,
      'cleanTextField': ?cleanTextField,
      'cryptoHashField': ?cryptoHashField,
      'dateShiftField': ?dateShiftField,
      'keepField': ?keepField,
      'paths': ?paths,
      'removeField': ?removeField,
    };
  }

  factory GoogleCloudHealthcareV1beta1DeidentifyFieldMetadata.fromMap(Map<String, dynamic> map) {
    return GoogleCloudHealthcareV1beta1DeidentifyFieldMetadata(
      characterMaskField: (() { final guardedValue = map['characterMaskField']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      cleanTextField: (() { final guardedValue = map['cleanTextField']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      cryptoHashField: (() { final guardedValue = map['cryptoHashField']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      dateShiftField: (() { final guardedValue = map['dateShiftField']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      keepField: (() { final guardedValue = map['keepField']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      paths: (() { final guardedValue = map['paths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      removeField: (() { final guardedValue = map['removeField']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

