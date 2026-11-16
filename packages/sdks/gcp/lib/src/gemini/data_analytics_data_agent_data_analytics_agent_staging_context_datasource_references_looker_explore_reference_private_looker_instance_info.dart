// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLookerExploreReferencePrivateLookerInstanceInfo {
  /// Optional. The Looker instance ID.
  final pulumi.Input<String?>? lookerInstanceId;
  /// Optional. The service directory name of the Looker instance.
  final pulumi.Input<String?>? serviceDirectoryName;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLookerExploreReferencePrivateLookerInstanceInfo].
  /// [lookerInstanceId] Optional. The Looker instance ID.
  /// [serviceDirectoryName] Optional. The service directory name of the Looker instance.
  const DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLookerExploreReferencePrivateLookerInstanceInfo({
    this.lookerInstanceId,
    this.serviceDirectoryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lookerInstanceId': ?lookerInstanceId,
      'serviceDirectoryName': ?serviceDirectoryName,
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLookerExploreReferencePrivateLookerInstanceInfo.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLookerExploreReferencePrivateLookerInstanceInfo(
      lookerInstanceId: (() { final guardedValue = map['lookerInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceDirectoryName: (() { final guardedValue = map['serviceDirectoryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
