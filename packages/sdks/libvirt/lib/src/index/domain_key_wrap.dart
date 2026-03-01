// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_key_wrap_cipher.dart';

class DomainKeyWrap {
  /// Defines the cipher algorithms used for key wrapping in the domain.
  final List<DomainKeyWrapCipher>? ciphers;

  /// Creates a new [DomainKeyWrap].
  /// [ciphers] Defines the cipher algorithms used for key wrapping in the domain.
  DomainKeyWrap({
    this.ciphers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciphers': ?ciphers == null ? null : pulumi.Input.encodeList<DomainKeyWrapCipher, Map<String, dynamic>>(ciphers!, (value) => value.toMap()),
    };
  }

  factory DomainKeyWrap.fromMap(Map<String, dynamic> map) {
    return DomainKeyWrap(
      ciphers: map['ciphers'] == null ? null : pulumi.Input.decodeList<DomainKeyWrapCipher>(map['ciphers'], (value) => DomainKeyWrapCipher.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

