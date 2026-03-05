// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityPolicyAssociation {
  /// The resource that the security policy is attached to.
  final pulumi.Input<String>? attachmentId;
  /// The name for an association.
  final pulumi.Input<String>? name;

  /// Creates a new [SecurityPolicyAssociation].
  /// [attachmentId] The resource that the security policy is attached to.
  /// [name] The name for an association.
  SecurityPolicyAssociation({
    this.attachmentId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentId': ?attachmentId,
      'name': ?name,
    };
  }

  factory SecurityPolicyAssociation.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyAssociation(
      attachmentId: (() { final guardedValue = map['attachmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

