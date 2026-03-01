// ignore_for_file: unused_element, unnecessary_cast


class WafPolicyFileType {
  /// Determines whether the file type is allowed or disallowed. In either of these cases the VIOL_FILETYPE violation is issued (if enabled) for an incoming request-
  /// * No allowed file type matched the file type of the request.
  /// * The file type of the request matched a disallowed file type.
  final bool? allowed;
  /// Specifies the file type name as appearing in the URL extension.
  final String? name;
  /// Determines the type of the name attribute. Only when setting the type to `wildcard` will the special wildcard characters in the name be interpreted as such
  final String? type;

  /// Creates a new [WafPolicyFileType].
  /// [allowed] Determines whether the file type is allowed or disallowed. In either of these cases the VIOL_FILETYPE violation is issued (if enabled) for an incoming request-
  /// [name] Specifies the file type name as appearing in the URL extension.
  /// [type] Determines the type of the name attribute. Only when setting the type to `wildcard` will the special wildcard characters in the name be interpreted as such
  WafPolicyFileType({
    this.allowed,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowed': ?allowed,
      'name': ?name,
      'type': ?type,
    };
  }

  factory WafPolicyFileType.fromMap(Map<String, dynamic> map) {
    return WafPolicyFileType(
      allowed: map['allowed'] == null ? null : map['allowed'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

