// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message defining a list of words or phrases to search for in the data.
class GooglePrivacyDlpV2WordListResponse {
  /// Words or phrases defining the dictionary. The dictionary must contain at least one phrase and every phrase must contain at least 2 characters that are letters or digits. [required]
  final pulumi.Input<List<String>> words;

  /// Creates a new [GooglePrivacyDlpV2WordListResponse].
  /// [words] Words or phrases defining the dictionary. The dictionary must contain at least one phrase and every phrase must contain at least 2 characters that are letters or digits. [required]
  const GooglePrivacyDlpV2WordListResponse({
    required this.words,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'words': words,
    };
  }

  factory GooglePrivacyDlpV2WordListResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2WordListResponse(
      words: pulumi.Input.fromValue((map['words'] as List).cast<String>()),
    );
  }
}
