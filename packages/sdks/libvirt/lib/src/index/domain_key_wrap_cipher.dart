// ignore_for_file: unused_element, unnecessary_cast


class DomainKeyWrapCipher {
  /// Sets the name of the cipher used for key wrapping in the domain.
  final String name;
  /// Configures the state of the cipher used for key wrapping in the domain.
  final String state;

  /// Creates a new [DomainKeyWrapCipher].
  /// [name] Sets the name of the cipher used for key wrapping in the domain.
  /// [state] Configures the state of the cipher used for key wrapping in the domain.
  DomainKeyWrapCipher({
    required this.name,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'state': state,
    };
  }

  factory DomainKeyWrapCipher.fromMap(Map<String, dynamic> map) {
    return DomainKeyWrapCipher(
      name: map['name'] as String,
      state: map['state'] as String,
    );
  }
}

