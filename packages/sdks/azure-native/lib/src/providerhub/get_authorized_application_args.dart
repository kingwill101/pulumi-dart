// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_providerhub_get_authorized_application_args_doc}
/// Arguments for getAuthorizedApplication.
/// {@endtemplate}
/// {@macro pulumi_providerhub_get_authorized_application_args_doc}
class GetAuthorizedApplicationArgs {
  /// The application ID.
  final pulumi.Input<String> applicationId;
  /// The name of the resource provider hosted within ProviderHub.
  final pulumi.Input<String> providerNamespace;

  /// Creates a new [GetAuthorizedApplicationArgs].
  /// [applicationId] The application ID.
  /// [providerNamespace] The name of the resource provider hosted within ProviderHub.
  const GetAuthorizedApplicationArgs({
    required this.applicationId,
    required this.providerNamespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'providerNamespace': providerNamespace,
    };
  }

  factory GetAuthorizedApplicationArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthorizedApplicationArgs(
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      providerNamespace: pulumi.Input.fromValue(map['providerNamespace'] as String),
    );
  }
}

