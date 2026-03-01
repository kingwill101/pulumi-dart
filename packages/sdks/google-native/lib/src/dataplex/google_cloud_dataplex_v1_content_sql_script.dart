// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_content_sql_script_engine.dart';

/// Configuration for the Sql Script content.
class GoogleCloudDataplexV1ContentSqlScript {
  /// Query Engine to be used for the Sql Query.
  final GoogleCloudDataplexV1ContentSqlScriptEngine engine;

  /// Creates a new [GoogleCloudDataplexV1ContentSqlScript].
  /// [engine] Query Engine to be used for the Sql Query.
  GoogleCloudDataplexV1ContentSqlScript({
    required this.engine,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engine': engine.value,
    };
  }

  factory GoogleCloudDataplexV1ContentSqlScript.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1ContentSqlScript(
      engine: GoogleCloudDataplexV1ContentSqlScriptEngine.fromValue(map['engine'] as String),
    );
  }
}

