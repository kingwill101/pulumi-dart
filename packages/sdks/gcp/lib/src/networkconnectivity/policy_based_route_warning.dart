// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyBasedRouteWarning {
  /// (Output)
  /// A warning code, if applicable.
  final pulumi.Input<String?>? code;
  /// (Output)
  /// Metadata about this warning in key: value format. The key should provides more detail on the warning being returned. For example, for warnings where there are no results in a list request for a particular zone, this key might be scope and the key value might be the zone name. Other examples might be a key indicating a deprecated resource and a suggested replacement.
  final pulumi.Input<Map<String, String>?>? data;
  /// (Output)
  /// A human-readable description of the warning code.
  final pulumi.Input<String?>? warningMessage;

  /// Creates a new [PolicyBasedRouteWarning].
  /// [code] (Output)
  /// [data] (Output)
  /// [warningMessage] (Output)
  const PolicyBasedRouteWarning({
    this.code,
    this.data,
    this.warningMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'data': ?data,
      'warningMessage': ?warningMessage,
    };
  }

  factory PolicyBasedRouteWarning.fromMap(Map<String, dynamic> map) {
    return PolicyBasedRouteWarning(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      warningMessage: (() { final guardedValue = map['warningMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
