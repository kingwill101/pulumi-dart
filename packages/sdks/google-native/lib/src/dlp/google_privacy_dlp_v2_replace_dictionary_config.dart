// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_word_list.dart';

/// Replace each input value with a value randomly selected from the dictionary.
class GooglePrivacyDlpV2ReplaceDictionaryConfig {
  /// A list of words to select from for random replacement. The [limits](https://cloud.google.com/dlp/limits) page contains details about the size limits of dictionaries.
  final pulumi.Input<GooglePrivacyDlpV2WordList>? wordList;

  /// Creates a new [GooglePrivacyDlpV2ReplaceDictionaryConfig].
  /// [wordList] A list of words to select from for random replacement. The [limits](https://cloud.google.com/dlp/limits) page contains details about the size limits of dictionaries.
  const GooglePrivacyDlpV2ReplaceDictionaryConfig({
    this.wordList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'wordList': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2WordList, Map<String, dynamic>>(wordList, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2ReplaceDictionaryConfig.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ReplaceDictionaryConfig(
      wordList: (() { final guardedValue = map['wordList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2WordList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

