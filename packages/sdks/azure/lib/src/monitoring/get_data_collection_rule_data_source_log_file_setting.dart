// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_collection_rule_data_source_log_file_setting_text.dart';

class GetDataCollectionRuleDataSourceLogFileSetting {
  /// A `text` block as defined below.
  final pulumi.Input<List<GetDataCollectionRuleDataSourceLogFileSettingText>> texts;

  /// Creates a new [GetDataCollectionRuleDataSourceLogFileSetting].
  /// [texts] A `text` block as defined below.
  const GetDataCollectionRuleDataSourceLogFileSetting({
    required this.texts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'texts': pulumi.Input.mapInputValue<List<GetDataCollectionRuleDataSourceLogFileSettingText>, List<Map<String, dynamic>>>(texts, (value) => pulumi.Input.encodeList<GetDataCollectionRuleDataSourceLogFileSettingText, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDataCollectionRuleDataSourceLogFileSetting.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionRuleDataSourceLogFileSetting(
      texts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataCollectionRuleDataSourceLogFileSettingText>(map['texts']!, (value) => GetDataCollectionRuleDataSourceLogFileSettingText.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

