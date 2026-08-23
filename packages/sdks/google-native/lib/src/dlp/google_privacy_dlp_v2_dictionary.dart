// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_cloud_storage_path.dart';
import 'google_privacy_dlp_v2_word_list.dart';

/// Custom information type based on a dictionary of words or phrases. This can be used to match sensitive information specific to the data, such as a list of employee IDs or job titles. Dictionary words are case-insensitive and all characters other than letters and digits in the unicode [Basic Multilingual Plane](https://en.wikipedia.org/wiki/Plane_%28Unicode%29#Basic_Multilingual_Plane) will be replaced with whitespace when scanning for matches, so the dictionary phrase "Sam Johnson" will match all three phrases "sam johnson", "Sam, Johnson", and "Sam (Johnson)". Additionally, the characters surrounding any match must be of a different type than the adjacent characters within the word, so letters must be next to non-letters and digits next to non-digits. For example, the dictionary word "jen" will match the first three letters of the text "jen123" but will return no matches for "jennifer". Dictionary words containing a large number of characters that are not letters or digits may result in unexpected findings because such characters are treated as whitespace. The [limits](https://cloud.google.com/dlp/limits) page contains details about the size limits of dictionaries. For dictionaries that do not fit within these constraints, consider using `LargeCustomDictionaryConfig` in the `StoredInfoType` API.
class GooglePrivacyDlpV2Dictionary {
  /// Newline-delimited file of words in Cloud Storage. Only a single file is accepted.
  final pulumi.Input<GooglePrivacyDlpV2CloudStoragePath>? cloudStoragePath;
  /// List of words or phrases to search for.
  final pulumi.Input<GooglePrivacyDlpV2WordList>? wordList;

  /// Creates a new [GooglePrivacyDlpV2Dictionary].
  /// [cloudStoragePath] Newline-delimited file of words in Cloud Storage. Only a single file is accepted.
  /// [wordList] List of words or phrases to search for.
  const GooglePrivacyDlpV2Dictionary({
    this.cloudStoragePath,
    this.wordList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudStoragePath': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2CloudStoragePath, Map<String, dynamic>>(cloudStoragePath, (value) => value.toMap()),
      'wordList': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2WordList, Map<String, dynamic>>(wordList, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2Dictionary.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2Dictionary(
      cloudStoragePath: (() { final guardedValue = map['cloudStoragePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2CloudStoragePath.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      wordList: (() { final guardedValue = map['wordList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2WordList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
