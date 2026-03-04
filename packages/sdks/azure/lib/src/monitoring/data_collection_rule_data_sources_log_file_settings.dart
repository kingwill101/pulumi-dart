// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_collection_rule_data_sources_log_file_settings_text.dart';

class DataCollectionRuleDataSourcesLogFileSettings {
  /// A `text` block as defined below.
  final pulumi.Input<DataCollectionRuleDataSourcesLogFileSettingsText> text;

  /// Creates a new [DataCollectionRuleDataSourcesLogFileSettings].
  /// [text] A `text` block as defined below.
  DataCollectionRuleDataSourcesLogFileSettings({required this.text});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text':
          pulumi.Input.mapInputValue<
            DataCollectionRuleDataSourcesLogFileSettingsText,
            Map<String, dynamic>
          >(text, (value) => value.toMap()),
    };
  }

  factory DataCollectionRuleDataSourcesLogFileSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataCollectionRuleDataSourcesLogFileSettings(
      text: pulumi.Input.fromValue(
        DataCollectionRuleDataSourcesLogFileSettingsText.fromMap(
          (map['text']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
