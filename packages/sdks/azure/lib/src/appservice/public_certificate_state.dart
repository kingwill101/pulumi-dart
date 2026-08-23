// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PublicCertificate resources.
class PublicCertificateState {
  /// The name of the App Service. Changing this forces a new App Service Public Certificate to be created.
  final pulumi.Input<String>? appServiceName;
  /// The base64-encoded contents of the certificate. Changing this forces a new App Service Public Certificate to be created.
  final pulumi.Input<String>? blob;
  /// The location of the certificate. Possible values are `CurrentUserMy`, `LocalMachineMy` and `Unknown`. Changing this forces a new App Service Public Certificate to be created.
  final pulumi.Input<String>? certificateLocation;
  /// The name of the public certificate. Changing this forces a new App Service Public Certificate to be created.
  final pulumi.Input<String>? certificateName;
  /// The name of the Resource Group where the App Service Public Certificate should exist. Changing this forces a new App Service Public Certificate to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The thumbprint of the public certificate.
  final pulumi.Input<String>? thumbprint;

  /// Creates a new [PublicCertificateState].
  /// [appServiceName] The name of the App Service. Changing this forces a new App Service Public Certificate to be created.
  /// [blob] The base64-encoded contents of the certificate. Changing this forces a new App Service Public Certificate to be created.
  /// [certificateLocation] The location of the certificate. Possible values are `CurrentUserMy`, `LocalMachineMy` and `Unknown`. Changing this forces a new App Service Public Certificate to be created.
  /// [certificateName] The name of the public certificate. Changing this forces a new App Service Public Certificate to be created.
  /// [resourceGroupName] The name of the Resource Group where the App Service Public Certificate should exist. Changing this forces a new App Service Public Certificate to be created.
  /// [thumbprint] The thumbprint of the public certificate.
  const PublicCertificateState({
    this.appServiceName,
    this.blob,
    this.certificateLocation,
    this.certificateName,
    this.resourceGroupName,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServiceName': ?appServiceName,
      'blob': ?blob,
      'certificateLocation': ?certificateLocation,
      'certificateName': ?certificateName,
      'resourceGroupName': ?resourceGroupName,
      'thumbprint': ?thumbprint,
    };
  }

  factory PublicCertificateState.fromMap(Map<String, dynamic> map) {
    return PublicCertificateState(
      appServiceName: (() { final guardedValue = map['appServiceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      blob: (() { final guardedValue = map['blob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateLocation: (() { final guardedValue = map['certificateLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateName: (() { final guardedValue = map['certificateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
