// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by invoke.
class InvokeResult {
  final bool boolean;
  final Map<String, bool> booleanMap;
  final double float;
  final int integer;
  final List<double> numberArray;
  final String string_;

  /// Creates a new [InvokeResult].
  /// [boolean] Required.
  /// [booleanMap] Required.
  /// [float] Required.
  /// [integer] Required.
  /// [numberArray] Required.
  /// [string_] Required.
  const InvokeResult({
    required this.boolean,
    required this.booleanMap,
    required this.float,
    required this.integer,
    required this.numberArray,
    required this.string_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boolean': boolean,
      'booleanMap': booleanMap,
      'float': float,
      'integer': integer,
      'numberArray': numberArray,
      'string': string_,
    };
  }

  factory InvokeResult.fromMap(Map<String, dynamic> map) {
    return InvokeResult(
      boolean: map['boolean'] as bool,
      booleanMap: (map['booleanMap'] as Map).cast<String, bool>(),
      float: (map['float'] as num).toDouble(),
      integer: (map['integer'] as num).toInt(),
      numberArray: (map['numberArray'] as List).cast<double>(),
      string_: map['string'] as String,
    );
  }
}
