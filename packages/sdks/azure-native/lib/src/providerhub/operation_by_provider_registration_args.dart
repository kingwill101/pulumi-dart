// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_providerhub_operation_by_provider_registration_args_doc}
/// The set of arguments for OperationByProviderRegistration.
/// {@endtemplate}
/// {@macro pulumi_providerhub_operation_by_provider_registration_args_doc}
class OperationByProviderRegistrationArgs {
  /// The name of the resource provider hosted within ProviderHub.
  final pulumi.Input<String> providerNamespace;

  /// Creates a new [OperationByProviderRegistrationArgs].
  /// [providerNamespace] The name of the resource provider hosted within ProviderHub.
  OperationByProviderRegistrationArgs({required this.providerNamespace});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'providerNamespace': providerNamespace};
  }

  factory OperationByProviderRegistrationArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return OperationByProviderRegistrationArgs(
      providerNamespace: pulumi.Input.fromValue(
        map['providerNamespace'] as String,
      ),
    );
  }
}
