// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerVersionBindingOutboundParam {
  /// Name of the parameter.
  final pulumi.Input<String> name;

  /// Creates a new [GetWorkerVersionBindingOutboundParam].
  /// [name] Name of the parameter.
  const GetWorkerVersionBindingOutboundParam({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetWorkerVersionBindingOutboundParam.fromMap(Map<String, dynamic> map) {
    return GetWorkerVersionBindingOutboundParam(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
