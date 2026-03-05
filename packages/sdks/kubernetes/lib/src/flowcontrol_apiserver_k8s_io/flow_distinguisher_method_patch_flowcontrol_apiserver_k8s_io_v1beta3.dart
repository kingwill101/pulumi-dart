// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// FlowDistinguisherMethod specifies the method of a flow distinguisher.
class FlowDistinguisherMethodPatchFlowcontrolApiserverK8sIoV1beta3 {
  /// `type` is the type of flow distinguisher method The supported types are "ByUser" and "ByNamespace". Required.
  final pulumi.Input<String>? type;

  /// Creates a new [FlowDistinguisherMethodPatchFlowcontrolApiserverK8sIoV1beta3].
  /// [type] `type` is the type of flow distinguisher method The supported types are "ByUser" and "ByNamespace". Required.
  FlowDistinguisherMethodPatchFlowcontrolApiserverK8sIoV1beta3({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory FlowDistinguisherMethodPatchFlowcontrolApiserverK8sIoV1beta3.fromMap(Map<String, dynamic> map) {
    return FlowDistinguisherMethodPatchFlowcontrolApiserverK8sIoV1beta3(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

