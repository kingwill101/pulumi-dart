// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_application_identifier_uri_application_identifier_uri_args_doc}
/// The set of arguments for ApplicationIdentifierUri.
/// {@endtemplate}
/// {@macro pulumi_index_application_identifier_uri_application_identifier_uri_args_doc}
class ApplicationIdentifierUriArgs {
  /// The resource ID of the application registration. Changing this forces a new resource to be created.
  final pulumi.Input<String> applicationId;
  /// The user-defined URI that uniquely identifies an application within its Azure AD tenant, or within a verified custom domain if the application is multi-tenant. Changing this forces a new resource to be created.
  final pulumi.Input<String> identifierUri;

  /// Creates a new [ApplicationIdentifierUriArgs].
  /// [applicationId] The resource ID of the application registration. Changing this forces a new resource to be created.
  /// [identifierUri] The user-defined URI that uniquely identifies an application within its Azure AD tenant, or within a verified custom domain if the application is multi-tenant. Changing this forces a new resource to be created.
  const ApplicationIdentifierUriArgs({
    required this.applicationId,
    required this.identifierUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'identifierUri': identifierUri,
    };
  }

  factory ApplicationIdentifierUriArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationIdentifierUriArgs(
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      identifierUri: pulumi.Input.fromValue(map['identifierUri'] as String),
    );
  }
}

