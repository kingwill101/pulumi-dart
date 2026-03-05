// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RowLevelSecurityStatisticsResponse {
  /// [Preview] Whether any accessed data was protected by row access policies.
  final pulumi.Input<bool> rowLevelSecurityApplied;

  /// Creates a new [RowLevelSecurityStatisticsResponse].
  /// [rowLevelSecurityApplied] [Preview] Whether any accessed data was protected by row access policies.
  RowLevelSecurityStatisticsResponse({
    required this.rowLevelSecurityApplied,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rowLevelSecurityApplied': rowLevelSecurityApplied,
    };
  }

  factory RowLevelSecurityStatisticsResponse.fromMap(Map<String, dynamic> map) {
    return RowLevelSecurityStatisticsResponse(
      rowLevelSecurityApplied: pulumi.Input.fromValue(map['rowLevelSecurityApplied'] as bool),
    );
  }
}

