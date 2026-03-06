// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The SAP instance specific performance data for native discovery.
class NativePerformanceDataResponse {
  /// The data source for this resource.
  /// Expected value is 'Native'.
  final pulumi.Input<String> dataSource;

  /// Creates a new [NativePerformanceDataResponse].
  /// [dataSource] The data source for this resource.
  const NativePerformanceDataResponse({
    required this.dataSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSource': dataSource,
    };
  }

  factory NativePerformanceDataResponse.fromMap(Map<String, dynamic> map) {
    return NativePerformanceDataResponse(
      dataSource: pulumi.Input.fromValue(map['dataSource'] as String),
    );
  }
}

