// ignore_for_file: unused_element, unnecessary_cast


class DomainFeaturesHyperVVendorId {
  /// Sets the value for the vendor ID used in Hyper-V.
  final String? value;

  /// Creates a new [DomainFeaturesHyperVVendorId].
  /// [value] Sets the value for the vendor ID used in Hyper-V.
  DomainFeaturesHyperVVendorId({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory DomainFeaturesHyperVVendorId.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesHyperVVendorId(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

