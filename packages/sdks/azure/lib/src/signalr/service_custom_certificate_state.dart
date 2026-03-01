// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServiceCustomCertificate resources.
class ServiceCustomCertificateState {
  /// The certificate version of the SignalR Custom Certificate service.
  final pulumi.Input<String>? certificateVersion;
  /// The certificate id of the SignalR Custom Certificate service. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Self assigned certificate is not supported and the provisioning status will fail.
  final pulumi.Input<String>? customCertificateId;
  /// The name of the SignalR Custom Certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The SignalR ID of the SignalR Custom Certificate. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Custom Certificate is only available for SignalR Premium tier. Please enable managed identity in the corresponding SignalR Service and give the managed identity access to the key vault, the required permission is Get Certificate and Secret.
  final pulumi.Input<String>? signalrServiceId;

  /// Creates a new [ServiceCustomCertificateState].
  /// [certificateVersion] The certificate version of the SignalR Custom Certificate service.
  /// [customCertificateId] The certificate id of the SignalR Custom Certificate service. Changing this forces a new resource to be created.
  /// [name] The name of the SignalR Custom Certificate. Changing this forces a new resource to be created.
  /// [signalrServiceId] The SignalR ID of the SignalR Custom Certificate. Changing this forces a new resource to be created.
  ServiceCustomCertificateState({
    pulumi.Output<String>? certificateVersion,
    pulumi.Output<String>? customCertificateId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? signalrServiceId,
  }) :
      certificateVersion = pulumi.Input.asOptionalInput<String>(certificateVersion),
      customCertificateId = pulumi.Input.asOptionalInput<String>(customCertificateId),
      name = pulumi.Input.asOptionalInput<String>(name),
      signalrServiceId = pulumi.Input.asOptionalInput<String>(signalrServiceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateVersion': ?certificateVersion,
      'customCertificateId': ?customCertificateId,
      'name': ?name,
      'signalrServiceId': ?signalrServiceId,
    };
  }

  factory ServiceCustomCertificateState.fromMap(Map<String, dynamic> map) {
    return ServiceCustomCertificateState(
      certificateVersion: map['certificateVersion'] == null ? null : pulumi.Output.create<String>(map['certificateVersion'] as String),
      customCertificateId: map['customCertificateId'] == null ? null : pulumi.Output.create<String>(map['customCertificateId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      signalrServiceId: map['signalrServiceId'] == null ? null : pulumi.Output.create<String>(map['signalrServiceId'] as String),
    );
  }
}

