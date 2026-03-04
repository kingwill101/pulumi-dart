// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'common_language_settings_destinations_item.dart';

/// Required information for every language.
class CommonLanguageSettings {
  /// The destination where API teams want this client library to be published.
  final pulumi.Input<List<CommonLanguageSettingsDestinationsItem>>?
  destinations;

  /// Link to automatically generated reference documentation. Example: https://cloud.google.com/nodejs/docs/reference/asset/latest
  final pulumi.Input<String>? referenceDocsUri;

  /// Creates a new [CommonLanguageSettings].
  /// [destinations] The destination where API teams want this client library to be published.
  /// [referenceDocsUri] Link to automatically generated reference documentation. Example: https://cloud.google.com/nodejs/docs/reference/asset/latest
  CommonLanguageSettings({this.destinations, this.referenceDocsUri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations':
          ?pulumi.Input.mapOptionalInputValue<
            List<CommonLanguageSettingsDestinationsItem>,
            List<String>
          >(
            destinations,
            (value) =>
                pulumi.Input.encodeList<
                  CommonLanguageSettingsDestinationsItem,
                  String
                >(value, (value) => value.wireValue),
          ),
      'referenceDocsUri': ?referenceDocsUri,
    };
  }

  factory CommonLanguageSettings.fromMap(Map<String, dynamic> map) {
    return CommonLanguageSettings(
      destinations: (() {
        final guardedValue = map['destinations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<CommonLanguageSettingsDestinationsItem>(
            guardedValue,
            (value) => CommonLanguageSettingsDestinationsItem.fromValue(
              value as String,
            ),
          ),
        );
      })(),
      referenceDocsUri: (() {
        final guardedValue = map['referenceDocsUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
