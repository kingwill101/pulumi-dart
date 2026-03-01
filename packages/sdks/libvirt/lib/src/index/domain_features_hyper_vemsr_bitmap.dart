// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesHyperVEmsrBitmap {
  /// Configures the state of the PS/2 feature, indicating if it is enabled or not.
  final String? state;

  /// Creates a new [DomainFeaturesHyperVEmsrBitmap].
  /// [state] Configures the state of the PS/2 feature, indicating if it is enabled or not.
  DomainFeaturesHyperVEmsrBitmap({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesHyperVEmsrBitmap.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesHyperVEmsrBitmap(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

