// ignore_for_file: unused_element, unnecessary_cast


class GetWafEntityParameterUrl {
  final String method;
  final String name;
  final String protocol;
  final String type;

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
      method: map['method'] as String,
      name: map['name'] as String,
      protocol: map['protocol'] as String,
      type: map['type'] as String,
    );
  }
}

