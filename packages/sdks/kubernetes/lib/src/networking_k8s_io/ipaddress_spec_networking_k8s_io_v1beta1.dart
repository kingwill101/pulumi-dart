// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parent_reference_networking_k8s_io_v1beta1.dart';

/// IPAddressSpec describe the attributes in an IP Address.
class IPAddressSpecNetworkingK8sIoV1beta1 {
  /// ParentRef references the resource that an IPAddress is attached to. An IPAddress must reference a parent object.
  final pulumi.Input<ParentReferenceNetworkingK8sIoV1beta1> parentRef;

  /// Creates a new [IPAddressSpecNetworkingK8sIoV1beta1].
  /// [parentRef] ParentRef references the resource that an IPAddress is attached to. An IPAddress must reference a parent object.
  IPAddressSpecNetworkingK8sIoV1beta1({required this.parentRef});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parentRef':
          pulumi.Input.mapInputValue<
            ParentReferenceNetworkingK8sIoV1beta1,
            Map<String, dynamic>
          >(parentRef, (value) => value.toMap()),
    };
  }

  factory IPAddressSpecNetworkingK8sIoV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return IPAddressSpecNetworkingK8sIoV1beta1(
      parentRef: pulumi.Input.fromValue(
        ParentReferenceNetworkingK8sIoV1beta1.fromMap(
          (map['parentRef']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
