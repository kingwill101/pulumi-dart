// ignore_for_file: unused_element, unnecessary_cast

import 'data_collection_rule_data_sources_log_file_settings_text.dart';

class DataCollectionRuleDataSourcesLogFileSettings {
  /// A `text` block as defined below.
  final DataCollectionRuleDataSourcesLogFileSettingsText text;

  /// Creates a new [DataCollectionRuleDataSourcesLogFileSettings].
  /// [text] A `text` block as defined below.
  DataCollectionRuleDataSourcesLogFileSettings({
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text.toMap(),
    };
  }

  factory DataCollectionRuleDataSourcesLogFileSettings.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleDataSourcesLogFileSettings(
      text: DataCollectionRuleDataSourcesLogFileSettingsText.fromMap((map['text'] as Map).cast<String, dynamic>()),
    );
  }
}

