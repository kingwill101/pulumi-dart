// ignore_for_file: unused_element, unnecessary_cast


class BackendServiceUsedByComputeV1 {
  final String? reference;

  /// Creates a new [BackendServiceUsedByComputeV1].
  /// [reference] Optional.
  BackendServiceUsedByComputeV1({
    this.reference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reference': ?reference,
    };
  }

  factory BackendServiceUsedByComputeV1.fromMap(Map<String, dynamic> map) {
    return BackendServiceUsedByComputeV1(
      reference: map['reference'] == null ? null : map['reference'] as String,
    );
  }
}

