// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WafPolicyFileType {
  /// Determines whether the file type is allowed or disallowed. In either of these cases the VIOL_FILETYPE violation is issued (if enabled) for an incoming request-
  /// * No allowed file type matched the file type of the request.
  /// * The file type of the request matched a disallowed file type.
  final pulumi.Input<bool>? allowed;

  /// Specifies the file type name as appearing in the URL extension.
  final pulumi.Input<String>? name;

  /// Determines the type of the name attribute. Only when setting the type to `wildcard` will the special wildcard characters in the name be interpreted as such
  final pulumi.Input<String>? type;

  /// Creates a new [WafPolicyFileType].
  /// [allowed] Determines whether the file type is allowed or disallowed. In either of these cases the VIOL_FILETYPE violation is issued (if enabled) for an incoming request-
  /// [name] Specifies the file type name as appearing in the URL extension.
  /// [type] Determines the type of the name attribute. Only when setting the type to `wildcard` will the special wildcard characters in the name be interpreted as such
  WafPolicyFileType({this.allowed, this.name, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'allowed': ?allowed, 'name': ?name, 'type': ?type};
  }

  factory WafPolicyFileType.fromMap(Map<String, dynamic> map) {
    return WafPolicyFileType(
      allowed: (() {
        final guardedValue = map['allowed'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
