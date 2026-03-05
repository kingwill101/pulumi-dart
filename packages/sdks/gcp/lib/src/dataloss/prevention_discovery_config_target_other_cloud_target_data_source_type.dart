// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionDiscoveryConfigTargetOtherCloudTargetDataSourceType {
  /// (Optional)
  final pulumi.Input<String>? dataSource;

  /// Creates a new [PreventionDiscoveryConfigTargetOtherCloudTargetDataSourceType].
  /// [dataSource] (Optional)
  PreventionDiscoveryConfigTargetOtherCloudTargetDataSourceType({
    this.dataSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSource': ?dataSource,
    };
  }

  factory PreventionDiscoveryConfigTargetOtherCloudTargetDataSourceType.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetOtherCloudTargetDataSourceType(
      dataSource: (() { final guardedValue = map['dataSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

