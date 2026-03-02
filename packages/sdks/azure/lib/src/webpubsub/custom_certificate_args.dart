// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_webpubsub_custom_certificate_custom_certificate_args_doc}
/// The set of arguments for CustomCertificate.
/// {@endtemplate}
/// {@macro pulumi_webpubsub_custom_certificate_custom_certificate_args_doc}
class CustomCertificateArgs {
  /// The certificate ID of the Web PubSub Custom Certificate. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Self assigned certificate is not supported and the provisioning status will fail.
  final pulumi.Input<String> customCertificateId;
  /// The name of the Web PubSub Custom Certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The Web PubSub ID of the Web PubSub Custom Certificate. Changing this forces a new resource to be created.
  ///
  /// > **Note:** custom certificate is only available for Web PubSub Premium tier. Please enable managed identity in the corresponding Web PubSub Service and give the managed identity access to the key vault, the required permission is Get Certificate and Secret.
  final pulumi.Input<String> webPubsubId;

  /// Creates a new [CustomCertificateArgs].
  /// [customCertificateId] The certificate ID of the Web PubSub Custom Certificate. Changing this forces a new resource to be created.
  /// [name] The name of the Web PubSub Custom Certificate. Changing this forces a new resource to be created.
  /// [webPubsubId] The Web PubSub ID of the Web PubSub Custom Certificate. Changing this forces a new resource to be created.
  CustomCertificateArgs({
    required this.customCertificateId,
    this.name,
    required this.webPubsubId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customCertificateId': customCertificateId,
      'name': ?name,
      'webPubsubId': webPubsubId,
    };
  }

  factory CustomCertificateArgs.fromMap(Map<String, dynamic> map) {
    return CustomCertificateArgs(
      customCertificateId: (map['customCertificateId'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      webPubsubId: (map['webPubsubId'] as String).input(),
    );
  }
}

