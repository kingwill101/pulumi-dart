// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOrganizationFilterMember {
  /// Filter organizations to those where the given user, by email, is an active member of
  /// that exact organization. This does not include hierarchy-derived access.
  final pulumi.Input<String?>? email;

  /// Creates a new [GetOrganizationFilterMember].
  /// [email] Filter organizations to those where the given user, by email, is an active member of
  const GetOrganizationFilterMember({
    this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
    };
  }

  factory GetOrganizationFilterMember.fromMap(Map<String, dynamic> map) {
    return GetOrganizationFilterMember(
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
