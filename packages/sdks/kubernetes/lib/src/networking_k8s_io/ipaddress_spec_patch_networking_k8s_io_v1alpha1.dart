// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parent_reference_patch_networking_k8s_io_v1alpha1.dart';

/// IPAddressSpec describe the attributes in an IP Address.
class IPAddressSpecPatchNetworkingK8sIoV1alpha1 {
  /// ParentRef references the resource that an IPAddress is attached to. An IPAddress must reference a parent object.
  final pulumi.Input<ParentReferencePatchNetworkingK8sIoV1alpha1>? parentRef;

  /// Creates a new [IPAddressSpecPatchNetworkingK8sIoV1alpha1].
  /// [parentRef] ParentRef references the resource that an IPAddress is attached to. An IPAddress must reference a parent object.
  IPAddressSpecPatchNetworkingK8sIoV1alpha1({
    this.parentRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parentRef': ?pulumi.Input.mapOptionalInputValue<ParentReferencePatchNetworkingK8sIoV1alpha1, Map<String, dynamic>>(parentRef, (value) => value.toMap()),
    };
  }

  factory IPAddressSpecPatchNetworkingK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return IPAddressSpecPatchNetworkingK8sIoV1alpha1(
      parentRef: map['parentRef'] == null ? null : (ParentReferencePatchNetworkingK8sIoV1alpha1.fromMap((map['parentRef'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

