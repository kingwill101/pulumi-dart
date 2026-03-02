// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// security ml analytics settings data sources
class SecurityMLAnalyticsSettingsDataSourceResponse {
  /// The connector id that provides the following data types
  final pulumi.Input<String>? connectorId;
  /// The data types used by the security ml analytics settings
  final pulumi.Input<List<String>>? dataTypes;

  /// Creates a new [SecurityMLAnalyticsSettingsDataSourceResponse].
  /// [connectorId] The connector id that provides the following data types
  /// [dataTypes] The data types used by the security ml analytics settings
  SecurityMLAnalyticsSettingsDataSourceResponse({
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
      connectorId: map['connectorId'] == null ? null : (map['connectorId']! as String).input(),
      dataTypes: map['dataTypes'] == null ? null : ((map['dataTypes']! as List).cast<String>()).input(),
    );
  }
}

