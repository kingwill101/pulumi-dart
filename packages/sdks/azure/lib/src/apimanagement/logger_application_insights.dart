// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoggerApplicationInsights {
  /// The connection string of Application Insights.
  final pulumi.Input<String?>? connectionString;
  /// The Client Id of the User Assigned Identity, or `SystemAssigned` to use the System Assigned Identity, that has the "Monitoring Metrics Publisher" role on the target Application Insights resource. Requires `connectionString` to be set. Cannot be used with `instrumentationKey`.
  ///
  /// &gt; **Note:** Either `connectionString` or `instrumentationKey` have to be specified.
  ///
  /// &gt; **Note:** `identityClientId` enables AAD-based ingestion to Application Insights using a Managed Identity on the API Management Service and is required when local authentication is disabled on the Application Insights resource. Set it to the Client Id of a User Assigned Identity, or to `SystemAssigned` to use the System Assigned Identity.
  final pulumi.Input<String?>? identityClientId;
  /// The instrumentation key used to push data to Application Insights.
  final pulumi.Input<String?>? instrumentationKey;

  /// Creates a new [LoggerApplicationInsights].
  /// [connectionString] The connection string of Application Insights.
  /// [identityClientId] The Client Id of the User Assigned Identity, or `SystemAssigned` to use the System Assigned Identity, that has the "Monitoring Metrics Publisher" role on the target Application Insights resource. Requires `connectionString` to be set. Cannot be used with `instrumentationKey`.
  /// [instrumentationKey] The instrumentation key used to push data to Application Insights.
  const LoggerApplicationInsights({
    this.connectionString,
    this.identityClientId,
    this.instrumentationKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?connectionString,
      'identityClientId': ?identityClientId,
      'instrumentationKey': ?instrumentationKey,
    };
  }

  factory LoggerApplicationInsights.fromMap(Map<String, dynamic> map) {
    return LoggerApplicationInsights(
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityClientId: (() { final guardedValue = map['identityClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instrumentationKey: (() { final guardedValue = map['instrumentationKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
