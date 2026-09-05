// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parent_reference_patch.dart';

/// IPAddressSpec describe the attributes in an IP Address.
class IPAddressSpecPatch {
  /// parentRef references the resource that an IPAddress is attached to. An IPAddress must reference a parent object.
  final pulumi.Input<ParentReferencePatch?>? parentRef;

  /// Creates a new [IPAddressSpecPatch].
  /// [parentRef] parentRef references the resource that an IPAddress is attached to. An IPAddress must reference a parent object.
  const IPAddressSpecPatch({
    this.parentRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parentRef': ?pulumi.Input.mapOptionalInputValue<ParentReferencePatch, Map<String, dynamic>>(parentRef, (value) => value.toMap()),
    };
  }

  factory IPAddressSpecPatch.fromMap(Map<String, dynamic> map) {
    return IPAddressSpecPatch(
      parentRef: (() { final guardedValue = map['parentRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ParentReferencePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
