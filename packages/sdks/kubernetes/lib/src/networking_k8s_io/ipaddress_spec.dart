// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parent_reference.dart';

/// IPAddressSpec describe the attributes in an IP Address.
class IPAddressSpec {
  /// ParentRef references the resource that an IPAddress is attached to. An IPAddress must reference a parent object.
  final pulumi.Input<ParentReference> parentRef;

  /// Creates a new [IPAddressSpec].
  /// [parentRef] ParentRef references the resource that an IPAddress is attached to. An IPAddress must reference a parent object.
  IPAddressSpec({
    required this.parentRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parentRef': pulumi.Input.mapInputValue<ParentReference, Map<String, dynamic>>(parentRef, (value) => value.toMap()),
    };
  }

  factory IPAddressSpec.fromMap(Map<String, dynamic> map) {
    return IPAddressSpec(
      parentRef: pulumi.Input.fromValue(ParentReference.fromMap((map['parentRef']! as Map).cast<String, dynamic>())),
    );
  }
}

