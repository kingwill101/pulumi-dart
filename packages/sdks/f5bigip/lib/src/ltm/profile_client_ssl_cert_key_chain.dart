// ignore_for_file: unused_element, unnecessary_cast


class ProfileClientSslCertKeyChain {
  /// Specifies the name of the certificate that the system uses for client-side SSL processing. The default is `default`
  final String? cert;
  /// Specifies a certificate chain file that a server can use for authentication. The default is `None`.
  final String? chain;
  /// Specifies the file name of the SSL key. The default is `default`
  final String? key;
  /// Name of Cert-key-chain
  final String? name;
  /// Type the name of the pass phrase used to encrypt the key.
  final String? passphrase;

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
      cert: map['cert'] == null ? null : map['cert'] as String,
      chain: map['chain'] == null ? null : map['chain'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      passphrase: map['passphrase'] == null ? null : map['passphrase'] as String,
    );
  }
}

