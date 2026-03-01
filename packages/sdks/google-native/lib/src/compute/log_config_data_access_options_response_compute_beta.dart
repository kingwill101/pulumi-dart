// ignore_for_file: unused_element, unnecessary_cast


/// This is deprecated and has no effect. Do not use.
class LogConfigDataAccessOptionsResponseComputeBeta {
  /// This is deprecated and has no effect. Do not use.
  final String logMode;

  /// Creates a new [LogConfigDataAccessOptionsResponseComputeBeta].
  /// [logMode] This is deprecated and has no effect. Do not use.
  LogConfigDataAccessOptionsResponseComputeBeta({
    required this.logMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logMode': logMode,
    };
  }

  factory LogConfigDataAccessOptionsResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return LogConfigDataAccessOptionsResponseComputeBeta(
      logMode: map['logMode'] as String,
    );
  }
}

