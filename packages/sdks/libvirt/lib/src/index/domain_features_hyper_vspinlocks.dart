// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesHyperVSpinlocks {
  /// Configures the number of retries for spinlocks in Hyper-V.
  final double? retries;

  /// Creates a new [DomainFeaturesHyperVSpinlocks].
  /// [retries] Configures the number of retries for spinlocks in Hyper-V.
  DomainFeaturesHyperVSpinlocks({
    this.retries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retries': ?retries,
    };
  }

  factory DomainFeaturesHyperVSpinlocks.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesHyperVSpinlocks(
      retries: map['retries'] == null ? null : map['retries'] as double,
    );
  }
}

