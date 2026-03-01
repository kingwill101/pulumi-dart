// ignore_for_file: unused_element, unnecessary_cast


/// ParamKind is a tuple of Group Kind and Version.
class ParamKind {
  /// APIVersion is the API group version the resources belong to. In format of "group/version". Required.
  final String? apiVersion;
  /// Kind is the API kind the resources belong to. Required.
  final String? kind;

  /// Creates a new [ParamKind].
  /// [apiVersion] APIVersion is the API group version the resources belong to. In format of "group/version". Required.
  /// [kind] Kind is the API kind the resources belong to. Required.
  ParamKind({
    this.apiVersion,
    this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
    };
  }

  factory ParamKind.fromMap(Map<String, dynamic> map) {
    return ParamKind(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
    );
  }
}

