// ignore_for_file: unused_element, unnecessary_cast


/// This is deprecated and has no effect. Do not use.
class LogConfigDataAccessOptionsResponseComputeV1 {
  /// This is deprecated and has no effect. Do not use.
  final String logMode;

  /// Creates a new [LogConfigDataAccessOptionsResponseComputeV1].
  /// [logMode] This is deprecated and has no effect. Do not use.
  LogConfigDataAccessOptionsResponseComputeV1({
    required this.logMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logMode': logMode,
    };
  }

  factory LogConfigDataAccessOptionsResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return LogConfigDataAccessOptionsResponseComputeV1(
      logMode: map['logMode'] as String,
    );
  }
}

