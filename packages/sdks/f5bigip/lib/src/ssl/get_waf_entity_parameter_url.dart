// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWafEntityParameterUrl {
  final pulumi.Input<String> method;
  final pulumi.Input<String> name;
  final pulumi.Input<String> protocol;
  final pulumi.Input<String> type;

  /// Creates a new [GetWafEntityParameterUrl].
  /// [method] Required.
  /// [name] Required.
  /// [protocol] Required.
  /// [type] Required.
  GetWafEntityParameterUrl({
    required this.method,
    required this.name,
    required this.protocol,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': method,
      'name': name,
      'protocol': protocol,
      'type': type,
    };
  }

  factory GetWafEntityParameterUrl.fromMap(Map<String, dynamic> map) {
    return GetWafEntityParameterUrl(
      method: pulumi.Input.fromValue(map['method'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
