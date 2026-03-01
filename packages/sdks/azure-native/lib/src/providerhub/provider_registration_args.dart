// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_registration_properties.dart';

/// {@template pulumi_providerhub_provider_registration_args_doc}
/// The set of arguments for ProviderRegistration.
/// {@endtemplate}
/// {@macro pulumi_providerhub_provider_registration_args_doc}
class ProviderRegistrationArgs {
  /// Provider registration kind. This Metadata is also used by portal/tooling/etc to render different UX experiences for resources of the same type.
  final pulumi.Input<String>? kind;
  final pulumi.Input<ProviderRegistrationProperties>? properties;
  /// The name of the resource provider hosted within ProviderHub.
  final pulumi.Input<String>? providerNamespace;

  /// Creates a new [ProviderRegistrationArgs].
  /// [kind] Provider registration kind. This Metadata is also used by portal/tooling/etc to render different UX experiences for resources of the same type.
  /// [properties] Optional.
  /// [providerNamespace] The name of the resource provider hosted within ProviderHub.
  ProviderRegistrationArgs({
    pulumi.Output<String>? kind,
    pulumi.Output<ProviderRegistrationProperties>? properties,
    pulumi.Output<String>? providerNamespace,
  }) :
      kind = pulumi.Input.asOptionalInput<String>(kind),
      properties = pulumi.Input.asOptionalInput<ProviderRegistrationProperties>(properties),
      providerNamespace = pulumi.Input.asOptionalInput<String>(providerNamespace);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'properties': ?pulumi.Input.mapOptionalInputValue<ProviderRegistrationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'providerNamespace': ?providerNamespace,
    };
  }

  factory ProviderRegistrationArgs.fromMap(Map<String, dynamic> map) {
    return ProviderRegistrationArgs(
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ProviderRegistrationProperties>(ProviderRegistrationProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      providerNamespace: map['providerNamespace'] == null ? null : pulumi.Output.create<String>(map['providerNamespace'] as String),
    );
  }
}

