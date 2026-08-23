// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by fun.
class FunResult {
  /// Will be the opposite of in_ can be used to set in_.
  final bool out;

  /// Creates a new [FunResult].
  /// [out] Will be the opposite of in_ can be used to set in_.
  const FunResult({
    required this.out,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'out': out,
    };
  }

  factory FunResult.fromMap(Map<String, dynamic> map) {
    return FunResult(
      out: map['out'] as bool,
    );
  }
}
