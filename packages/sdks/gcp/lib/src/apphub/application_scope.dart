// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationScope {
  /// Required. Scope Type.
  /// Possible values:
  /// REGIONAL
  /// GLOBAL
  /// Possible values are: `REGIONAL`, `GLOBAL`.
  final pulumi.Input<String> type;

  /// Creates a new [ApplicationScope].
  /// [type] Required. Scope Type.
  ApplicationScope({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory ApplicationScope.fromMap(Map<String, dynamic> map) {
    return ApplicationScope(
      type: (map['type'] as String).input(),
    );
  }
}

