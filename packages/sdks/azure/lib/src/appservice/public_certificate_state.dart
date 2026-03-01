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
  PublicCertificateState({
    pulumi.Output<String>? appServiceName,
    pulumi.Output<String>? blob,
    pulumi.Output<String>? certificateLocation,
    pulumi.Output<String>? certificateName,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? thumbprint,
  }) :
      appServiceName = pulumi.Input.asOptionalInput<String>(appServiceName),
      blob = pulumi.Input.asOptionalInput<String>(blob),
      certificateLocation = pulumi.Input.asOptionalInput<String>(certificateLocation),
      certificateName = pulumi.Input.asOptionalInput<String>(certificateName),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      thumbprint = pulumi.Input.asOptionalInput<String>(thumbprint);

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
      appServiceName: map['appServiceName'] == null ? null : pulumi.Output.create<String>(map['appServiceName'] as String),
      blob: map['blob'] == null ? null : pulumi.Output.create<String>(map['blob'] as String),
      certificateLocation: map['certificateLocation'] == null ? null : pulumi.Output.create<String>(map['certificateLocation'] as String),
      certificateName: map['certificateName'] == null ? null : pulumi.Output.create<String>(map['certificateName'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      thumbprint: map['thumbprint'] == null ? null : pulumi.Output.create<String>(map['thumbprint'] as String),
    );
  }
}

