// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_key_wrap_cipher.dart';

class DomainKeyWrap {
  /// Defines the cipher algorithms used for key wrapping in the domain.
  final pulumi.Input<List<DomainKeyWrapCipher>>? ciphers;

  /// Creates a new [DomainKeyWrap].
  /// [ciphers] Defines the cipher algorithms used for key wrapping in the domain.
  const DomainKeyWrap({
    this.ciphers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciphers': ?pulumi.Input.mapOptionalInputValue<List<DomainKeyWrapCipher>, List<Map<String, dynamic>>>(ciphers, (value) => pulumi.Input.encodeList<DomainKeyWrapCipher, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainKeyWrap.fromMap(Map<String, dynamic> map) {
    return DomainKeyWrap(
      ciphers: (() { final guardedValue = map['ciphers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainKeyWrapCipher>(guardedValue, (value) => DomainKeyWrapCipher.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

