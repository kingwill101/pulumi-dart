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
      method: (map['method'] as String).input(),
      name: (map['name'] as String).input(),
      protocol: (map['protocol'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

