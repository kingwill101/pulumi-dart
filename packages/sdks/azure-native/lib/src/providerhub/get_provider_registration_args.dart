// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_providerhub_get_provider_registration_args_doc}
/// Arguments for getProviderRegistration.
/// {@endtemplate}
/// {@macro pulumi_providerhub_get_provider_registration_args_doc}
class GetProviderRegistrationArgs {
  /// The name of the resource provider hosted within ProviderHub.
  final pulumi.Input<String> providerNamespace;

  /// Creates a new [GetProviderRegistrationArgs].
  /// [providerNamespace] The name of the resource provider hosted within ProviderHub.
  GetProviderRegistrationArgs({required this.providerNamespace});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'providerNamespace': providerNamespace};
  }

  factory GetProviderRegistrationArgs.fromMap(Map<String, dynamic> map) {
    return GetProviderRegistrationArgs(
      providerNamespace: pulumi.Input.fromValue(
        map['providerNamespace'] as String,
      ),
    );
  }
}
