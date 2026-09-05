// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parent_reference_patch_networking_k8s_io_v1beta1.dart';

/// IPAddressSpec describe the attributes in an IP Address.
class IPAddressSpecPatchNetworkingK8sIoV1beta1 {
  /// ParentRef references the resource that an IPAddress is attached to. An IPAddress must reference a parent object.
  final pulumi.Input<ParentReferencePatchNetworkingK8sIoV1beta1?>? parentRef;

  /// Creates a new [IPAddressSpecPatchNetworkingK8sIoV1beta1].
  /// [parentRef] ParentRef references the resource that an IPAddress is attached to. An IPAddress must reference a parent object.
  const IPAddressSpecPatchNetworkingK8sIoV1beta1({
    this.parentRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parentRef': ?pulumi.Input.mapOptionalInputValue<ParentReferencePatchNetworkingK8sIoV1beta1, Map<String, dynamic>>(parentRef, (value) => value.toMap()),
    };
  }

  factory IPAddressSpecPatchNetworkingK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return IPAddressSpecPatchNetworkingK8sIoV1beta1(
      parentRef: (() { final guardedValue = map['parentRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ParentReferencePatchNetworkingK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
