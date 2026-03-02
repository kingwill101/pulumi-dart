// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationScope {
  /// Required. Scope Type.
  /// Possible values:
  /// REGIONAL
  /// GLOBAL Possible values: ["REGIONAL", "GLOBAL"]
  final pulumi.Input<String> type;

  /// Creates a new [GetApplicationScope].
  /// [type] Required. Scope Type.
  GetApplicationScope({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory GetApplicationScope.fromMap(Map<String, dynamic> map) {
    return GetApplicationScope(
      type: (map['type'] as String).input(),
    );
  }
}

