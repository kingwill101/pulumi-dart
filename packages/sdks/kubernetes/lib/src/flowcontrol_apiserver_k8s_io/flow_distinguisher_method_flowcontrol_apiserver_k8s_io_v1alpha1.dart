// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// FlowDistinguisherMethod specifies the method of a flow distinguisher.
class FlowDistinguisherMethodFlowcontrolApiserverK8sIoV1alpha1 {
  /// `type` is the type of flow distinguisher method The supported types are "ByUser" and "ByNamespace". Required.
  final pulumi.Input<String> type;

  /// Creates a new [FlowDistinguisherMethodFlowcontrolApiserverK8sIoV1alpha1].
  /// [type] `type` is the type of flow distinguisher method The supported types are "ByUser" and "ByNamespace". Required.
  FlowDistinguisherMethodFlowcontrolApiserverK8sIoV1alpha1({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type};
  }

  factory FlowDistinguisherMethodFlowcontrolApiserverK8sIoV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return FlowDistinguisherMethodFlowcontrolApiserverK8sIoV1alpha1(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
