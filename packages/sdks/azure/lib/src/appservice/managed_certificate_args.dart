// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appservice_managed_certificate_managed_certificate_args_doc}
/// The set of arguments for ManagedCertificate.
/// {@endtemplate}
/// {@macro pulumi_appservice_managed_certificate_managed_certificate_args_doc}
class ManagedCertificateArgs {
  /// The ID of the App Service Custom Hostname Binding for the Certificate. Changing this forces a new App Service Managed Certificate to be created.
  final pulumi.Input<String> customHostnameBindingId;
  /// A mapping of tags which should be assigned to the App Service Managed Certificate.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ManagedCertificateArgs].
  /// [customHostnameBindingId] The ID of the App Service Custom Hostname Binding for the Certificate. Changing this forces a new App Service Managed Certificate to be created.
  /// [tags] A mapping of tags which should be assigned to the App Service Managed Certificate.
  ManagedCertificateArgs({
    required this.customHostnameBindingId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customHostnameBindingId': customHostnameBindingId,
      'tags': ?tags,
    };
  }

  factory ManagedCertificateArgs.fromMap(Map<String, dynamic> map) {
    return ManagedCertificateArgs(
      customHostnameBindingId: (map['customHostnameBindingId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

