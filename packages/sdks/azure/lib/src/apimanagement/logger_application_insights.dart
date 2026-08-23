// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoggerApplicationInsights {
  /// The connection string of Application Insights.
  final pulumi.Input<String>? connectionString;
  /// The instrumentation key used to push data to Application Insights.
  ///
  /// &gt; **Note:** Either `connectionString` or `instrumentationKey` have to be specified.
  final pulumi.Input<String>? instrumentationKey;

  /// Creates a new [LoggerApplicationInsights].
  /// [connectionString] The connection string of Application Insights.
  /// [instrumentationKey] The instrumentation key used to push data to Application Insights.
  const LoggerApplicationInsights({
    this.connectionString,
    this.instrumentationKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?connectionString,
      'instrumentationKey': ?instrumentationKey,
    };
  }

  factory LoggerApplicationInsights.fromMap(Map<String, dynamic> map) {
    return LoggerApplicationInsights(
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instrumentationKey: (() { final guardedValue = map['instrumentationKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
