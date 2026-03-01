// ignore_for_file: unused_element, unnecessary_cast


class DomainOsNvRamSourceSsl {
  /// Specifies the verification level of the SSL connections for the backing store.
  final String verify;

  /// Creates a new [DomainOsNvRamSourceSsl].
  /// [verify] Specifies the verification level of the SSL connections for the backing store.
  DomainOsNvRamSourceSsl({
    required this.verify,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'verify': verify,
    };
  }

  factory DomainOsNvRamSourceSsl.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceSsl(
      verify: map['verify'] as String,
    );
  }
}

