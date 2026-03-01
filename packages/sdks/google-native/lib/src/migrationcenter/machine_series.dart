// ignore_for_file: unused_element, unnecessary_cast


/// A Compute Engine machine series.
class MachineSeries {
  /// Code to identify a Compute Engine machine series. Consult https://cloud.google.com/compute/docs/machine-resource#machine_type_comparison for more details on the available series.
  final String? code;

  /// Creates a new [MachineSeries].
  /// [code] Code to identify a Compute Engine machine series. Consult https://cloud.google.com/compute/docs/machine-resource#machine_type_comparison for more details on the available series.
  MachineSeries({
    this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
    };
  }

  factory MachineSeries.fromMap(Map<String, dynamic> map) {
    return MachineSeries(
      code: map['code'] == null ? null : map['code'] as String,
    );
  }
}

