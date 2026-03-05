// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Write a Data Access (Gin) log
class DataAccessOptionsResponseGameservicesV1beta {
  final pulumi.Input<String> logMode;

  /// Creates a new [DataAccessOptionsResponseGameservicesV1beta].
  /// [logMode] Required.
  DataAccessOptionsResponseGameservicesV1beta({
    required this.logMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logMode': logMode,
    };
  }

  factory DataAccessOptionsResponseGameservicesV1beta.fromMap(Map<String, dynamic> map) {
    return DataAccessOptionsResponseGameservicesV1beta(
      logMode: pulumi.Input.fromValue(map['logMode'] as String),
    );
  }
}

