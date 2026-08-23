// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_security_standard_args_doc}
/// Arguments for getSecurityStandard.
/// {@endtemplate}
/// {@macro pulumi_security_get_security_standard_args_doc}
class GetSecurityStandardArgs {
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> scope;
  /// The Security Standard key - unique key for the standard type
  final pulumi.Input<String> standardId;

  /// Creates a new [GetSecurityStandardArgs].
  /// [scope] The fully qualified Azure Resource manager identifier of the resource.
  /// [standardId] The Security Standard key - unique key for the standard type
  const GetSecurityStandardArgs({
    required this.scope,
    required this.standardId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': scope,
      'standardId': standardId,
    };
  }

  factory GetSecurityStandardArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityStandardArgs(
      scope: pulumi.Input.fromValue(map['scope'] as String),
      standardId: pulumi.Input.fromValue(map['standardId'] as String),
    );
  }
}
