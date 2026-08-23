// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// FlowDistinguisherMethod specifies the method of a flow distinguisher.
class FlowDistinguisherMethod {
  /// `type` is the type of flow distinguisher method The supported types are "ByUser" and "ByNamespace". Required.
  final pulumi.Input<String> type;

  /// Creates a new [FlowDistinguisherMethod].
  /// [type] `type` is the type of flow distinguisher method The supported types are "ByUser" and "ByNamespace". Required.
  const FlowDistinguisherMethod({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory FlowDistinguisherMethod.fromMap(Map<String, dynamic> map) {
    return FlowDistinguisherMethod(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
