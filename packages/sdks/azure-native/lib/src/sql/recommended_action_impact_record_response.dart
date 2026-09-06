// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains information of estimated or observed impact on various metrics for an Azure SQL Database, Server or Elastic Pool Recommended Action.
class RecommendedActionImpactRecordResponse {
  /// Gets the absolute value of this dimension if applicable. e.g., Number of Queries affected
  final pulumi.Input<double> absoluteValue;
  /// Gets the absolute change in the value of this dimension. e.g., Absolute Disk space change in Megabytes
  final pulumi.Input<double> changeValueAbsolute;
  /// Gets the relative change in the value of this dimension. e.g., Relative Disk space change in Percentage
  final pulumi.Input<double> changeValueRelative;
  /// Gets the name of the impact dimension. e.g., CPUChange, DiskSpaceChange, NumberOfQueriesAffected.
  final pulumi.Input<String> dimensionName;
  /// Gets the name of the impact dimension. e.g., CPUChange, DiskSpaceChange, NumberOfQueriesAffected.
  final pulumi.Input<String> unit;

  /// Creates a new [RecommendedActionImpactRecordResponse].
  /// [absoluteValue] Gets the absolute value of this dimension if applicable. e.g., Number of Queries affected
  /// [changeValueAbsolute] Gets the absolute change in the value of this dimension. e.g., Absolute Disk space change in Megabytes
  /// [changeValueRelative] Gets the relative change in the value of this dimension. e.g., Relative Disk space change in Percentage
  /// [dimensionName] Gets the name of the impact dimension. e.g., CPUChange, DiskSpaceChange, NumberOfQueriesAffected.
  /// [unit] Gets the name of the impact dimension. e.g., CPUChange, DiskSpaceChange, NumberOfQueriesAffected.
  const RecommendedActionImpactRecordResponse({
    required this.absoluteValue,
    required this.changeValueAbsolute,
    required this.changeValueRelative,
    required this.dimensionName,
    required this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'absoluteValue': absoluteValue,
      'changeValueAbsolute': changeValueAbsolute,
      'changeValueRelative': changeValueRelative,
      'dimensionName': dimensionName,
      'unit': unit,
    };
  }

  factory RecommendedActionImpactRecordResponse.fromMap(Map<String, dynamic> map) {
    return RecommendedActionImpactRecordResponse(
      absoluteValue: pulumi.Input.fromValue((map['absoluteValue'] as num).toDouble()),
      changeValueAbsolute: pulumi.Input.fromValue((map['changeValueAbsolute'] as num).toDouble()),
      changeValueRelative: pulumi.Input.fromValue((map['changeValueRelative'] as num).toDouble()),
      dimensionName: pulumi.Input.fromValue(map['dimensionName'] as String),
      unit: pulumi.Input.fromValue(map['unit'] as String),
    );
  }
}
