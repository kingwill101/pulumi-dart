// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerVersionBindingOutboundParam {
  /// Name of the parameter.
  final pulumi.Input<String> name;

  /// Creates a new [WorkerVersionBindingOutboundParam].
  /// [name] Name of the parameter.
  const WorkerVersionBindingOutboundParam({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory WorkerVersionBindingOutboundParam.fromMap(Map<String, dynamic> map) {
    return WorkerVersionBindingOutboundParam(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
