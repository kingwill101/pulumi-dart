// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CustomDomain resources.
class CustomDomainState {
  /// Specifies the custom domain name of the Web PubSub Custom Domain. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Please ensure the custom domain name is included in the Subject Alternative Names of the selected Web PubSub Custom Certificate.
  final pulumi.Input<String>? domainName;
  /// Specifies the name of the Web PubSub Custom Domain. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the Web PubSub Custom Certificate ID of the Web PubSub Custom Domain. Changing this forces a new resource to be created.
  final pulumi.Input<String>? webPubsubCustomCertificateId;
  /// Specifies the Web PubSub ID of the Web PubSub Custom Domain. Changing this forces a new resource to be created.
  final pulumi.Input<String>? webPubsubId;

  /// Creates a new [CustomDomainState].
  /// [domainName] Specifies the custom domain name of the Web PubSub Custom Domain. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Web PubSub Custom Domain. Changing this forces a new resource to be created.
  /// [webPubsubCustomCertificateId] Specifies the Web PubSub Custom Certificate ID of the Web PubSub Custom Domain. Changing this forces a new resource to be created.
  /// [webPubsubId] Specifies the Web PubSub ID of the Web PubSub Custom Domain. Changing this forces a new resource to be created.
  CustomDomainState({
    pulumi.Output<String>? domainName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? webPubsubCustomCertificateId,
    pulumi.Output<String>? webPubsubId,
  }) :
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      name = pulumi.Input.asOptionalInput<String>(name),
      webPubsubCustomCertificateId = pulumi.Input.asOptionalInput<String>(webPubsubCustomCertificateId),
      webPubsubId = pulumi.Input.asOptionalInput<String>(webPubsubId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'name': ?name,
      'webPubsubCustomCertificateId': ?webPubsubCustomCertificateId,
      'webPubsubId': ?webPubsubId,
    };
  }

  factory CustomDomainState.fromMap(Map<String, dynamic> map) {
    return CustomDomainState(
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      webPubsubCustomCertificateId: map['webPubsubCustomCertificateId'] == null ? null : pulumi.Output.create<String>(map['webPubsubCustomCertificateId'] as String),
      webPubsubId: map['webPubsubId'] == null ? null : pulumi.Output.create<String>(map['webPubsubId'] as String),
    );
  }
}

