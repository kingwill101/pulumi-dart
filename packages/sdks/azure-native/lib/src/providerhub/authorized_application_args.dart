// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorized_application_properties.dart';

/// {@template pulumi_providerhub_authorized_application_args_doc}
/// The set of arguments for AuthorizedApplication.
/// {@endtemplate}
/// {@macro pulumi_providerhub_authorized_application_args_doc}
class AuthorizedApplicationArgs {
  /// The application ID.
  final pulumi.Input<String>? applicationId;
  final pulumi.Input<AuthorizedApplicationProperties>? properties;
  /// The name of the resource provider hosted within ProviderHub.
  final pulumi.Input<String> providerNamespace;

  /// Creates a new [AuthorizedApplicationArgs].
  /// [applicationId] The application ID.
  /// [properties] Optional.
  /// [providerNamespace] The name of the resource provider hosted within ProviderHub.
  AuthorizedApplicationArgs({
    pulumi.Output<String>? applicationId,
    pulumi.Output<AuthorizedApplicationProperties>? properties,
    required pulumi.Output<String> providerNamespace,
  }) :
      applicationId = pulumi.Input.asOptionalInput<String>(applicationId),
      properties = pulumi.Input.asOptionalInput<AuthorizedApplicationProperties>(properties),
      providerNamespace = pulumi.Input.asInput<String>(providerNamespace);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'properties': ?pulumi.Input.mapOptionalInputValue<AuthorizedApplicationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'providerNamespace': providerNamespace,
    };
  }

  factory AuthorizedApplicationArgs.fromMap(Map<String, dynamic> map) {
    return AuthorizedApplicationArgs(
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<String>(map['applicationId'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<AuthorizedApplicationProperties>(AuthorizedApplicationProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      providerNamespace: pulumi.Output.create<String>(map['providerNamespace'] as String),
    );
  }
}

