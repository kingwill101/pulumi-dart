// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_signalr_service_custom_certificate_service_custom_certificate_args_doc}
/// The set of arguments for ServiceCustomCertificate.
/// {@endtemplate}
/// {@macro pulumi_signalr_service_custom_certificate_service_custom_certificate_args_doc}
class ServiceCustomCertificateArgs {
  /// The certificate id of the SignalR Custom Certificate service. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Self assigned certificate is not supported and the provisioning status will fail.
  final pulumi.Input<String> customCertificateId;
  /// The name of the SignalR Custom Certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The SignalR ID of the SignalR Custom Certificate. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Custom Certificate is only available for SignalR Premium tier. Please enable managed identity in the corresponding SignalR Service and give the managed identity access to the key vault, the required permission is Get Certificate and Secret.
  final pulumi.Input<String> signalrServiceId;

  /// Creates a new [ServiceCustomCertificateArgs].
  /// [customCertificateId] The certificate id of the SignalR Custom Certificate service. Changing this forces a new resource to be created.
  /// [name] The name of the SignalR Custom Certificate. Changing this forces a new resource to be created.
  /// [signalrServiceId] The SignalR ID of the SignalR Custom Certificate. Changing this forces a new resource to be created.
  const ServiceCustomCertificateArgs({
    required this.customCertificateId,
    this.name,
    required this.signalrServiceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customCertificateId': customCertificateId,
      'name': ?name,
      'signalrServiceId': signalrServiceId,
    };
  }

  factory ServiceCustomCertificateArgs.fromMap(Map<String, dynamic> map) {
    return ServiceCustomCertificateArgs(
      customCertificateId: pulumi.Input.fromValue(map['customCertificateId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signalrServiceId: pulumi.Input.fromValue(map['signalrServiceId'] as String),
    );
  }
}

