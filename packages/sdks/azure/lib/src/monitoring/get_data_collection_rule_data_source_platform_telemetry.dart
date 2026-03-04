// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataCollectionRuleDataSourcePlatformTelemetry {
  /// Specifies the name of the Data Collection Rule.
  final pulumi.Input<String> name;

  /// Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to.
  final pulumi.Input<List<String>> streams;

  /// Creates a new [GetDataCollectionRuleDataSourcePlatformTelemetry].
  /// [name] Specifies the name of the Data Collection Rule.
  /// [streams] Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to.
  GetDataCollectionRuleDataSourcePlatformTelemetry({
    required this.name,
    required this.streams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'streams': streams};
  }

  factory GetDataCollectionRuleDataSourcePlatformTelemetry.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDataCollectionRuleDataSourcePlatformTelemetry(
      name: pulumi.Input.fromValue(map['name'] as String),
      streams: pulumi.Input.fromValue((map['streams'] as List).cast<String>()),
    );
  }
}
