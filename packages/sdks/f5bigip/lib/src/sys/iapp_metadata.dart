// ignore_for_file: unused_element, unnecessary_cast


class IAppMetadata {
  /// Name of origin
  final String? persists;
  /// Name of origin
  final String? value;

  /// Creates a new [IAppMetadata].
  /// [persists] Name of origin
  /// [value] Name of origin
  IAppMetadata({
    this.persists,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'persists': ?persists,
      'value': ?value,
    };
  }

  factory IAppMetadata.fromMap(Map<String, dynamic> map) {
    return IAppMetadata(
      persists: map['persists'] == null ? null : map['persists'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

