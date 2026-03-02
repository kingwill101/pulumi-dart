// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// FlowDistinguisherMethod specifies the method of a flow distinguisher.
class FlowDistinguisherMethodPatch {
  /// `type` is the type of flow distinguisher method The supported types are "ByUser" and "ByNamespace". Required.
  final pulumi.Input<String>? type;

  /// Creates a new [FlowDistinguisherMethodPatch].
  /// [type] `type` is the type of flow distinguisher method The supported types are "ByUser" and "ByNamespace". Required.
  FlowDistinguisherMethodPatch({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory FlowDistinguisherMethodPatch.fromMap(Map<String, dynamic> map) {
    return FlowDistinguisherMethodPatch(
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

