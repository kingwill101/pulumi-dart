// ignore_for_file: unused_element, unnecessary_cast


class IAppVariable {
  /// Name of origin
  final String? encrypted;
  /// Name of the iApp.
  final String? name;
  /// Name of origin
  final String? value;

  /// Creates a new [IAppVariable].
  /// [encrypted] Name of origin
  /// [name] Name of the iApp.
  /// [value] Name of origin
  IAppVariable({
    this.encrypted,
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encrypted': ?encrypted,
      'name': ?name,
      'value': ?value,
    };
  }

  factory IAppVariable.fromMap(Map<String, dynamic> map) {
    return IAppVariable(
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

