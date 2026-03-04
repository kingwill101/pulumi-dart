// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_application_args_doc}
/// Arguments for getApplication.
/// {@endtemplate}
/// {@macro pulumi_security_get_application_args_doc}
class GetApplicationArgs {
  /// The security Application key - unique key for the standard application
  final pulumi.Input<String> applicationId;

  /// Creates a new [GetApplicationArgs].
  /// [applicationId] The security Application key - unique key for the standard application
  GetApplicationArgs({required this.applicationId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'applicationId': applicationId};
  }

  factory GetApplicationArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationArgs(
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
    );
  }
}
