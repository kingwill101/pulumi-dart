// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message defining a list of words or phrases to search for in the data.
class GooglePrivacyDlpV2WordList {
  /// Words or phrases defining the dictionary. The dictionary must contain at least one phrase and every phrase must contain at least 2 characters that are letters or digits. [required]
  final pulumi.Input<List<String>>? words;

  /// Creates a new [GooglePrivacyDlpV2WordList].
  /// [words] Words or phrases defining the dictionary. The dictionary must contain at least one phrase and every phrase must contain at least 2 characters that are letters or digits. [required]
  const GooglePrivacyDlpV2WordList({
    this.words,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'words': ?words,
    };
  }

  factory GooglePrivacyDlpV2WordList.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2WordList(
      words: (() { final guardedValue = map['words']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
