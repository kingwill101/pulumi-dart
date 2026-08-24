// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerVersionsResultBindingOutboundParam {
  /// Name of the parameter.
  final pulumi.Input<String> name;

  /// Creates a new [GetWorkerVersionsResultBindingOutboundParam].
  /// [name] Name of the parameter.
  const GetWorkerVersionsResultBindingOutboundParam({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetWorkerVersionsResultBindingOutboundParam.fromMap(Map<String, dynamic> map) {
    return GetWorkerVersionsResultBindingOutboundParam(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
