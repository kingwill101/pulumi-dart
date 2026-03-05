// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProfileClientSslCertKeyChain {
  /// Specifies the name of the certificate that the system uses for client-side SSL processing. The default is `default`
  final pulumi.Input<String>? cert;
  /// Specifies a certificate chain file that a server can use for authentication. The default is `None`.
  final pulumi.Input<String>? chain;
  /// Specifies the file name of the SSL key. The default is `default`
  final pulumi.Input<String>? key;
  /// Name of Cert-key-chain
  final pulumi.Input<String>? name;
  /// Type the name of the pass phrase used to encrypt the key.
  final pulumi.Input<String>? passphrase;

  /// Creates a new [ProfileClientSslCertKeyChain].
  /// [cert] Specifies the name of the certificate that the system uses for client-side SSL processing. The default is `default`
  /// [chain] Specifies a certificate chain file that a server can use for authentication. The default is `None`.
  /// [key] Specifies the file name of the SSL key. The default is `default`
  /// [name] Name of Cert-key-chain
  /// [passphrase] Type the name of the pass phrase used to encrypt the key.
  ProfileClientSslCertKeyChain({
    this.cert,
    this.chain,
    this.key,
    this.name,
    this.passphrase,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cert': ?cert,
      'chain': ?chain,
      'key': ?key,
      'name': ?name,
      'passphrase': ?passphrase,
    };
  }

  factory ProfileClientSslCertKeyChain.fromMap(Map<String, dynamic> map) {
    return ProfileClientSslCertKeyChain(
      cert: (() { final guardedValue = map['cert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      chain: (() { final guardedValue = map['chain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passphrase: (() { final guardedValue = map['passphrase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

