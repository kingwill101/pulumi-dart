// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_word_list_response.dart';

/// Replace each input value with a value randomly selected from the dictionary.
class GooglePrivacyDlpV2ReplaceDictionaryConfigResponse {
  /// A list of words to select from for random replacement. The [limits](https://cloud.google.com/dlp/limits) page contains details about the size limits of dictionaries.
  final pulumi.Input<GooglePrivacyDlpV2WordListResponse> wordList;

  /// Creates a new [GooglePrivacyDlpV2ReplaceDictionaryConfigResponse].
  /// [wordList] A list of words to select from for random replacement. The [limits](https://cloud.google.com/dlp/limits) page contains details about the size limits of dictionaries.
  GooglePrivacyDlpV2ReplaceDictionaryConfigResponse({
    required this.wordList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'wordList': pulumi.Input.mapInputValue<GooglePrivacyDlpV2WordListResponse, Map<String, dynamic>>(wordList, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2ReplaceDictionaryConfigResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ReplaceDictionaryConfigResponse(
      wordList: pulumi.Input.fromValue(GooglePrivacyDlpV2WordListResponse.fromMap((map['wordList']! as Map).cast<String, dynamic>())),
    );
  }
}

