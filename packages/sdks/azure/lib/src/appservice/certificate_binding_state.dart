// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CertificateBinding resources.
class CertificateBindingState {
  /// The name of the App Service to which the certificate was bound.
  final pulumi.Input<String>? appServiceName;
  /// The ID of the certificate to bind to the custom domain. Changing this forces a new App Service Certificate Binding to be created.
  final pulumi.Input<String>? certificateId;
  /// The hostname of the bound certificate.
  final pulumi.Input<String>? hostname;
  /// The ID of the Custom Domain/Hostname Binding. Changing this forces a new App Service Certificate Binding to be created.
  final pulumi.Input<String>? hostnameBindingId;
  /// The type of certificate binding. Allowed values are `IpBasedEnabled` or `SniEnabled`. Changing this forces a new App Service Certificate Binding to be created.
  final pulumi.Input<String>? sslState;
  /// The certificate thumbprint.
  final pulumi.Input<String>? thumbprint;

  /// Creates a new [CertificateBindingState].
  /// [appServiceName] The name of the App Service to which the certificate was bound.
  /// [certificateId] The ID of the certificate to bind to the custom domain. Changing this forces a new App Service Certificate Binding to be created.
  /// [hostname] The hostname of the bound certificate.
  /// [hostnameBindingId] The ID of the Custom Domain/Hostname Binding. Changing this forces a new App Service Certificate Binding to be created.
  /// [sslState] The type of certificate binding. Allowed values are `IpBasedEnabled` or `SniEnabled`. Changing this forces a new App Service Certificate Binding to be created.
  /// [thumbprint] The certificate thumbprint.
  CertificateBindingState({
    this.appServiceName,
    this.certificateId,
    this.hostname,
    this.hostnameBindingId,
    this.sslState,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServiceName': ?appServiceName,
      'certificateId': ?certificateId,
      'hostname': ?hostname,
      'hostnameBindingId': ?hostnameBindingId,
      'sslState': ?sslState,
      'thumbprint': ?thumbprint,
    };
  }

  factory CertificateBindingState.fromMap(Map<String, dynamic> map) {
    return CertificateBindingState(
      appServiceName: map['appServiceName'] == null ? null : (map['appServiceName'] as String).input(),
      certificateId: map['certificateId'] == null ? null : (map['certificateId'] as String).input(),
      hostname: map['hostname'] == null ? null : (map['hostname'] as String).input(),
      hostnameBindingId: map['hostnameBindingId'] == null ? null : (map['hostnameBindingId'] as String).input(),
      sslState: map['sslState'] == null ? null : (map['sslState'] as String).input(),
      thumbprint: map['thumbprint'] == null ? null : (map['thumbprint'] as String).input(),
    );
  }
}

