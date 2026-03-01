// ignore_for_file: unused_element, unnecessary_cast


class NamespaceState {
  /// (Output)
  /// Code describes the state of a Namespace resource.
  final String? code;

  /// Creates a new [NamespaceState].
  /// [code] (Output)
  NamespaceState({
    this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
    };
  }

  factory NamespaceState.fromMap(Map<String, dynamic> map) {
    return NamespaceState(
      code: map['code'] == null ? null : map['code'] as String,
    );
  }
}

