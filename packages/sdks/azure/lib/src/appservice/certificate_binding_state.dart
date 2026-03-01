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
    pulumi.Output<String>? appServiceName,
    pulumi.Output<String>? certificateId,
    pulumi.Output<String>? hostname,
    pulumi.Output<String>? hostnameBindingId,
    pulumi.Output<String>? sslState,
    pulumi.Output<String>? thumbprint,
  }) :
      appServiceName = pulumi.Input.asOptionalInput<String>(appServiceName),
      certificateId = pulumi.Input.asOptionalInput<String>(certificateId),
      hostname = pulumi.Input.asOptionalInput<String>(hostname),
      hostnameBindingId = pulumi.Input.asOptionalInput<String>(hostnameBindingId),
      sslState = pulumi.Input.asOptionalInput<String>(sslState),
      thumbprint = pulumi.Input.asOptionalInput<String>(thumbprint);

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
      appServiceName: map['appServiceName'] == null ? null : pulumi.Output.create<String>(map['appServiceName'] as String),
      certificateId: map['certificateId'] == null ? null : pulumi.Output.create<String>(map['certificateId'] as String),
      hostname: map['hostname'] == null ? null : pulumi.Output.create<String>(map['hostname'] as String),
      hostnameBindingId: map['hostnameBindingId'] == null ? null : pulumi.Output.create<String>(map['hostnameBindingId'] as String),
      sslState: map['sslState'] == null ? null : pulumi.Output.create<String>(map['sslState'] as String),
      thumbprint: map['thumbprint'] == null ? null : pulumi.Output.create<String>(map['thumbprint'] as String),
    );
  }
}

