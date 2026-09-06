// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// security ml analytics settings data sources
class SecurityMLAnalyticsSettingsDataSourceResponse {
  /// The connector id that provides the following data types
  final pulumi.Input<String?>? connectorId;
  /// The data types used by the security ml analytics settings
  final pulumi.Input<List<String>?>? dataTypes;

  /// Creates a new [SecurityMLAnalyticsSettingsDataSourceResponse].
  /// [connectorId] The connector id that provides the following data types
  /// [dataTypes] The data types used by the security ml analytics settings
  const SecurityMLAnalyticsSettingsDataSourceResponse({
    this.connectorId,
    this.dataTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorId': ?connectorId,
      'dataTypes': ?dataTypes,
    };
  }

  factory SecurityMLAnalyticsSettingsDataSourceResponse.fromMap(Map<String, dynamic> map) {
    return SecurityMLAnalyticsSettingsDataSourceResponse(
      connectorId: (() { final guardedValue = map['connectorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataTypes: (() { final guardedValue = map['dataTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
