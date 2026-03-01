// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CustomCertificate resources.
class CustomCertificateState {
  /// The certificate version of the Web PubSub Custom Certificate.
  final pulumi.Input<String>? certificateVersion;
  /// The certificate ID of the Web PubSub Custom Certificate. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Self assigned certificate is not supported and the provisioning status will fail.
  final pulumi.Input<String>? customCertificateId;
  /// The name of the Web PubSub Custom Certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The Web PubSub ID of the Web PubSub Custom Certificate. Changing this forces a new resource to be created.
  ///
  /// > **Note:** custom certificate is only available for Web PubSub Premium tier. Please enable managed identity in the corresponding Web PubSub Service and give the managed identity access to the key vault, the required permission is Get Certificate and Secret.
  final pulumi.Input<String>? webPubsubId;

  /// Creates a new [CustomCertificateState].
  /// [certificateVersion] The certificate version of the Web PubSub Custom Certificate.
  /// [customCertificateId] The certificate ID of the Web PubSub Custom Certificate. Changing this forces a new resource to be created.
  /// [name] The name of the Web PubSub Custom Certificate. Changing this forces a new resource to be created.
  /// [webPubsubId] The Web PubSub ID of the Web PubSub Custom Certificate. Changing this forces a new resource to be created.
  CustomCertificateState({
    pulumi.Output<String>? certificateVersion,
    pulumi.Output<String>? customCertificateId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? webPubsubId,
  }) :
      certificateVersion = pulumi.Input.asOptionalInput<String>(certificateVersion),
      customCertificateId = pulumi.Input.asOptionalInput<String>(customCertificateId),
      name = pulumi.Input.asOptionalInput<String>(name),
      webPubsubId = pulumi.Input.asOptionalInput<String>(webPubsubId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateVersion': ?certificateVersion,
      'customCertificateId': ?customCertificateId,
      'name': ?name,
      'webPubsubId': ?webPubsubId,
    };
  }

  factory CustomCertificateState.fromMap(Map<String, dynamic> map) {
    return CustomCertificateState(
      certificateVersion: map['certificateVersion'] == null ? null : pulumi.Output.create<String>(map['certificateVersion'] as String),
      customCertificateId: map['customCertificateId'] == null ? null : pulumi.Output.create<String>(map['customCertificateId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      webPubsubId: map['webPubsubId'] == null ? null : pulumi.Output.create<String>(map['webPubsubId'] as String),
    );
  }
}

