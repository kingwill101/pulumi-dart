// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for Log Analytics linking to SCOM managed instance.
class LogAnalyticsConfigurationResponse {
  /// The types of data to be ingested to Log Analytics workspace.
  final pulumi.Input<List<String>>? dataTypes;

  /// A one-time optional parameter to import data of last 7 days.
  final pulumi.Input<bool>? importData;

  /// The resource ID of the Log Analytics workspace to be used.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [LogAnalyticsConfigurationResponse].
  /// [dataTypes] The types of data to be ingested to Log Analytics workspace.
  /// [importData] A one-time optional parameter to import data of last 7 days.
  /// [workspaceId] The resource ID of the Log Analytics workspace to be used.
  LogAnalyticsConfigurationResponse({
    this.dataTypes,
    this.importData,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataTypes': ?dataTypes,
      'importData': ?importData,
      'workspaceId': ?workspaceId,
    };
  }

  factory LogAnalyticsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return LogAnalyticsConfigurationResponse(
      dataTypes: (() {
        final guardedValue = map['dataTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      importData: (() {
        final guardedValue = map['importData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      workspaceId: (() {
        final guardedValue = map['workspaceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
