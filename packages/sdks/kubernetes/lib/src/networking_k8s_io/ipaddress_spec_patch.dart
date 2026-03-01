// ignore_for_file: unused_element, unnecessary_cast

import 'parent_reference_patch.dart';

/// IPAddressSpec describe the attributes in an IP Address.
class IPAddressSpecPatch {
  /// ParentRef references the resource that an IPAddress is attached to. An IPAddress must reference a parent object.
  final ParentReferencePatch? parentRef;

  /// Creates a new [IPAddressSpecPatch].
  /// [parentRef] ParentRef references the resource that an IPAddress is attached to. An IPAddress must reference a parent object.
  IPAddressSpecPatch({
    this.parentRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parentRef': ?parentRef == null ? null : parentRef!.toMap(),
    };
  }

  factory IPAddressSpecPatch.fromMap(Map<String, dynamic> map) {
    return IPAddressSpecPatch(
      parentRef: map['parentRef'] == null ? null : ParentReferencePatch.fromMap((map['parentRef'] as Map).cast<String, dynamic>()),
    );
  }
}

