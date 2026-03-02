// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_access_options_log_mode_gameservices_v1beta.dart';

/// Write a Data Access (Gin) log
class DataAccessOptionsGameservicesV1beta {
  final pulumi.Input<DataAccessOptionsLogModeGameservicesV1beta>? logMode;

  /// Creates a new [DataAccessOptionsGameservicesV1beta].
  /// [logMode] Optional.
  DataAccessOptionsGameservicesV1beta({
    this.logMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logMode': ?pulumi.Input.mapOptionalInputValue<DataAccessOptionsLogModeGameservicesV1beta, String>(logMode, (value) => value.value),
    };
  }

  factory DataAccessOptionsGameservicesV1beta.fromMap(Map<String, dynamic> map) {
    return DataAccessOptionsGameservicesV1beta(
      logMode: map['logMode'] == null ? null : (DataAccessOptionsLogModeGameservicesV1beta.fromValue(map['logMode']! as String)).input(),
    );
  }
}

