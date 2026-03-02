// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Write a Data Access (Gin) log
class DataAccessOptionsResponse {
  final pulumi.Input<String> logMode;

  /// Creates a new [DataAccessOptionsResponse].
  /// [logMode] Required.
  DataAccessOptionsResponse({
    required this.logMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logMode': logMode,
    };
  }

  factory DataAccessOptionsResponse.fromMap(Map<String, dynamic> map) {
    return DataAccessOptionsResponse(
      logMode: (map['logMode'] as String).input(),
    );
  }
}

