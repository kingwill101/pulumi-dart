// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_access_options_log_mode.dart';

/// Write a Data Access (Gin) log
class DataAccessOptions {
  final pulumi.Input<DataAccessOptionsLogMode>? logMode;

  /// Creates a new [DataAccessOptions].
  /// [logMode] Optional.
  DataAccessOptions({
    this.logMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logMode': ?pulumi.Input.mapOptionalInputValue<DataAccessOptionsLogMode, String>(logMode, (value) => value.wireValue),
    };
  }

  factory DataAccessOptions.fromMap(Map<String, dynamic> map) {
    return DataAccessOptions(
      logMode: (() { final guardedValue = map['logMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataAccessOptionsLogMode.fromValue(guardedValue as String)); })(),
    );
  }
}

