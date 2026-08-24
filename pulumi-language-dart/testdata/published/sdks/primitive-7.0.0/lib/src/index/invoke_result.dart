// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by invoke.
class InvokeResult {
  final bool? boolean;
  final Map<String, bool>? booleanMap;
  final double? float;
  final int? integer;
  final List<double>? numberArray;
  final String? string_;

  /// Creates a new [InvokeResult].
  /// [boolean] Optional.
  /// [booleanMap] Optional.
  /// [float] Optional.
  /// [integer] Optional.
  /// [numberArray] Optional.
  /// [string_] Optional.
  const InvokeResult({
    this.boolean,
    this.booleanMap,
    this.float,
    this.integer,
    this.numberArray,
    this.string_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boolean': ?boolean,
      'booleanMap': ?booleanMap,
      'float': ?float,
      'integer': ?integer,
      'numberArray': ?numberArray,
      'string': ?string_,
    };
  }

  factory InvokeResult.fromMap(Map<String, dynamic> map) {
    return InvokeResult(
      boolean: (() { final guardedValue = map['boolean']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      booleanMap: (() { final guardedValue = map['booleanMap']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, bool>(); })(),
      float: (() { final guardedValue = map['float']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      integer: (() { final guardedValue = map['integer']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      numberArray: (() { final guardedValue = map['numberArray']; if (guardedValue == null) return null; return (guardedValue as List).cast<double>(); })(),
      string_: (() { final guardedValue = map['string']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
