// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IpsecPolicy resources.
class IpsecPolicyState {
  /// Specifies the algorithm to use for IKE authentication. Valid choices are: `sha1, sha256, sha384, sha512, aes-gcm128,
  /// aes-gcm192, aes-gcm256, aes-gmac128, aes-gmac192, aes-gmac256`
  final pulumi.Input<String>? authAlgorithm;
  /// Description of the IPSec policy.
  final pulumi.Input<String>? description;
  /// Specifies the algorithm to use for IKE encryption. Valid choices are: `null, 3des, aes128, aes192, aes256, aes-gmac256,
  /// aes-gmac192, aes-gmac128, aes-gcm256, aes-gcm192, aes-gcm256, aes-gcm128`
  final pulumi.Input<String>? encryptAlgorithm;
  /// Specifies whether to use IPComp encapsulation. Valid choices are: `none", null", deflate`
  final pulumi.Input<String>? ipcomp;
  /// Specifies the length of time before the IKE security association expires, in kilobytes.
  final pulumi.Input<int>? kbLifetime;
  /// Specifies the length of time before the IKE security association expires, in minutes.
  final pulumi.Input<int>? lifetime;
  /// Specifies the processing mode. Valid choices are: `transport, interface, isession, tunnel`
  final pulumi.Input<String>? mode;
  /// Name of the IPSec policy,it should be "full path".The full path is the combination of the partition + name of the IPSec policy.(For example `/Common/test-policy`)
  final pulumi.Input<String>? name;
  /// Specifies the Diffie-Hellman group to use for IKE Phase 2 negotiation. Valid choices are: `none, modp768, modp1024, modp1536, modp2048, modp3072,
  /// modp4096, modp6144, modp8192`
  final pulumi.Input<String>? perfectForwardSecrecy;
  /// Specifies the IPsec protocol. Valid choices are: `ah, esp`
  final pulumi.Input<String>? protocol;
  /// Specifies the local endpoint IP address of the IPsec tunnel. This parameter is only valid when mode is tunnel.
  final pulumi.Input<String>? tunnelLocalAddress;
  /// Specifies the remote endpoint IP address of the IPsec tunnel. This parameter is only valid when mode is tunnel.
  final pulumi.Input<String>? tunnelRemoteAddress;

  /// Creates a new [IpsecPolicyState].
  /// [authAlgorithm] Specifies the algorithm to use for IKE authentication. Valid choices are: `sha1, sha256, sha384, sha512, aes-gcm128,
  /// [description] Description of the IPSec policy.
  /// [encryptAlgorithm] Specifies the algorithm to use for IKE encryption. Valid choices are: `null, 3des, aes128, aes192, aes256, aes-gmac256,
  /// [ipcomp] Specifies whether to use IPComp encapsulation. Valid choices are: `none", null", deflate`
  /// [kbLifetime] Specifies the length of time before the IKE security association expires, in kilobytes.
  /// [lifetime] Specifies the length of time before the IKE security association expires, in minutes.
  /// [mode] Specifies the processing mode. Valid choices are: `transport, interface, isession, tunnel`
  /// [name] Name of the IPSec policy,it should be "full path".The full path is the combination of the partition + name of the IPSec policy.(For example `/Common/test-policy`)
  /// [perfectForwardSecrecy] Specifies the Diffie-Hellman group to use for IKE Phase 2 negotiation. Valid choices are: `none, modp768, modp1024, modp1536, modp2048, modp3072,
  /// [protocol] Specifies the IPsec protocol. Valid choices are: `ah, esp`
  /// [tunnelLocalAddress] Specifies the local endpoint IP address of the IPsec tunnel. This parameter is only valid when mode is tunnel.
  /// [tunnelRemoteAddress] Specifies the remote endpoint IP address of the IPsec tunnel. This parameter is only valid when mode is tunnel.
  const IpsecPolicyState({
    this.authAlgorithm,
    this.description,
    this.encryptAlgorithm,
    this.ipcomp,
    this.kbLifetime,
    this.lifetime,
    this.mode,
    this.name,
    this.perfectForwardSecrecy,
    this.protocol,
    this.tunnelLocalAddress,
    this.tunnelRemoteAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authAlgorithm': ?authAlgorithm,
      'description': ?description,
      'encryptAlgorithm': ?encryptAlgorithm,
      'ipcomp': ?ipcomp,
      'kbLifetime': ?kbLifetime,
      'lifetime': ?lifetime,
      'mode': ?mode,
      'name': ?name,
      'perfectForwardSecrecy': ?perfectForwardSecrecy,
      'protocol': ?protocol,
      'tunnelLocalAddress': ?tunnelLocalAddress,
      'tunnelRemoteAddress': ?tunnelRemoteAddress,
    };
  }

  factory IpsecPolicyState.fromMap(Map<String, dynamic> map) {
    return IpsecPolicyState(
      authAlgorithm: (() { final guardedValue = map['authAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptAlgorithm: (() { final guardedValue = map['encryptAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipcomp: (() { final guardedValue = map['ipcomp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kbLifetime: (() { final guardedValue = map['kbLifetime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      lifetime: (() { final guardedValue = map['lifetime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      perfectForwardSecrecy: (() { final guardedValue = map['perfectForwardSecrecy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tunnelLocalAddress: (() { final guardedValue = map['tunnelLocalAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tunnelRemoteAddress: (() { final guardedValue = map['tunnelRemoteAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

