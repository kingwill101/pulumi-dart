// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_webpubsub_custom_domain_custom_domain_args_doc}
/// The set of arguments for CustomDomain.
/// {@endtemplate}
/// {@macro pulumi_webpubsub_custom_domain_custom_domain_args_doc}
class CustomDomainArgs {
  /// Specifies the custom domain name of the Web PubSub Custom Domain. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Please ensure the custom domain name is included in the Subject Alternative Names of the selected Web PubSub Custom Certificate.
  final pulumi.Input<String> domainName;
  /// Specifies the name of the Web PubSub Custom Domain. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the Web PubSub Custom Certificate ID of the Web PubSub Custom Domain. Changing this forces a new resource to be created.
  final pulumi.Input<String> webPubsubCustomCertificateId;
  /// Specifies the Web PubSub ID of the Web PubSub Custom Domain. Changing this forces a new resource to be created.
  final pulumi.Input<String> webPubsubId;

  /// Creates a new [CustomDomainArgs].
  /// [domainName] Specifies the custom domain name of the Web PubSub Custom Domain. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Web PubSub Custom Domain. Changing this forces a new resource to be created.
  /// [webPubsubCustomCertificateId] Specifies the Web PubSub Custom Certificate ID of the Web PubSub Custom Domain. Changing this forces a new resource to be created.
  /// [webPubsubId] Specifies the Web PubSub ID of the Web PubSub Custom Domain. Changing this forces a new resource to be created.
  CustomDomainArgs({
    required this.domainName,
    this.name,
    required this.webPubsubCustomCertificateId,
    required this.webPubsubId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'name': ?name,
      'webPubsubCustomCertificateId': webPubsubCustomCertificateId,
      'webPubsubId': webPubsubId,
    };
  }

  factory CustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return CustomDomainArgs(
      domainName: (map['domainName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      webPubsubCustomCertificateId: (map['webPubsubCustomCertificateId'] as String).input(),
      webPubsubId: (map['webPubsubId'] as String).input(),
    );
  }
}

