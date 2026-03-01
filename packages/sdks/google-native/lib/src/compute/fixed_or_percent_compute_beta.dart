// ignore_for_file: unused_element, unnecessary_cast


/// Encapsulates numeric value that can be either absolute or relative.
class FixedOrPercentComputeBeta {
  /// Specifies a fixed number of VM instances. This must be a positive integer.
  final int? fixed;
  /// Specifies a percentage of instances between 0 to 100%, inclusive. For example, specify 80 for 80%.
  final int? percent;

  /// Creates a new [FixedOrPercentComputeBeta].
  /// [fixed] Specifies a fixed number of VM instances. This must be a positive integer.
  /// [percent] Specifies a percentage of instances between 0 to 100%, inclusive. For example, specify 80 for 80%.
  FixedOrPercentComputeBeta({
    this.fixed,
    this.percent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixed': ?fixed,
      'percent': ?percent,
    };
  }

  factory FixedOrPercentComputeBeta.fromMap(Map<String, dynamic> map) {
    return FixedOrPercentComputeBeta(
      fixed: map['fixed'] == null ? null : map['fixed'] as int,
      percent: map['percent'] == null ? null : map['percent'] as int,
    );
  }
}

