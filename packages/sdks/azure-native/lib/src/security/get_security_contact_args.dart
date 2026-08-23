// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_security_contact_args_doc}
/// Arguments for getSecurityContact.
/// {@endtemplate}
/// {@macro pulumi_security_get_security_contact_args_doc}
class GetSecurityContactArgs {
  /// Name of the security contact object
  final pulumi.Input<String> securityContactName;

  /// Creates a new [GetSecurityContactArgs].
  /// [securityContactName] Name of the security contact object
  const GetSecurityContactArgs({
    required this.securityContactName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityContactName': securityContactName,
    };
  }

  factory GetSecurityContactArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityContactArgs(
      securityContactName: pulumi.Input.fromValue(map['securityContactName'] as String),
    );
  }
}
