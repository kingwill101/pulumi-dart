// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_ipsec_policy_ipsec_policy_args_doc}
/// The set of arguments for IpsecPolicy.
/// {@endtemplate}
/// {@macro pulumi_index_ipsec_policy_ipsec_policy_args_doc}
class IpsecPolicyArgs {
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
  final pulumi.Input<String> name;
  /// Specifies the Diffie-Hellman group to use for IKE Phase 2 negotiation. Valid choices are: `none, modp768, modp1024, modp1536, modp2048, modp3072,
  /// modp4096, modp6144, modp8192`
  final pulumi.Input<String>? perfectForwardSecrecy;
  /// Specifies the IPsec protocol. Valid choices are: `ah, esp`
  final pulumi.Input<String>? protocol;
  /// Specifies the local endpoint IP address of the IPsec tunnel. This parameter is only valid when mode is tunnel.
  final pulumi.Input<String>? tunnelLocalAddress;
  /// Specifies the remote endpoint IP address of the IPsec tunnel. This parameter is only valid when mode is tunnel.
  final pulumi.Input<String>? tunnelRemoteAddress;

  /// Creates a new [IpsecPolicyArgs].
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
  IpsecPolicyArgs({
    pulumi.Output<String>? authAlgorithm,
    pulumi.Output<String>? description,
    pulumi.Output<String>? encryptAlgorithm,
    pulumi.Output<String>? ipcomp,
    pulumi.Output<int>? kbLifetime,
    pulumi.Output<int>? lifetime,
    pulumi.Output<String>? mode,
    required pulumi.Output<String> name,
    pulumi.Output<String>? perfectForwardSecrecy,
    pulumi.Output<String>? protocol,
    pulumi.Output<String>? tunnelLocalAddress,
    pulumi.Output<String>? tunnelRemoteAddress,
  }) :
      authAlgorithm = pulumi.Input.asOptionalInput<String>(authAlgorithm),
      description = pulumi.Input.asOptionalInput<String>(description),
      encryptAlgorithm = pulumi.Input.asOptionalInput<String>(encryptAlgorithm),
      ipcomp = pulumi.Input.asOptionalInput<String>(ipcomp),
      kbLifetime = pulumi.Input.asOptionalInput<int>(kbLifetime),
      lifetime = pulumi.Input.asOptionalInput<int>(lifetime),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      name = pulumi.Input.asInput<String>(name),
      perfectForwardSecrecy = pulumi.Input.asOptionalInput<String>(perfectForwardSecrecy),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      tunnelLocalAddress = pulumi.Input.asOptionalInput<String>(tunnelLocalAddress),
      tunnelRemoteAddress = pulumi.Input.asOptionalInput<String>(tunnelRemoteAddress);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authAlgorithm': ?authAlgorithm,
      'description': ?description,
      'encryptAlgorithm': ?encryptAlgorithm,
      'ipcomp': ?ipcomp,
      'kbLifetime': ?kbLifetime,
      'lifetime': ?lifetime,
      'mode': ?mode,
      'name': name,
      'perfectForwardSecrecy': ?perfectForwardSecrecy,
      'protocol': ?protocol,
      'tunnelLocalAddress': ?tunnelLocalAddress,
      'tunnelRemoteAddress': ?tunnelRemoteAddress,
    };
  }

  factory IpsecPolicyArgs.fromMap(Map<String, dynamic> map) {
    return IpsecPolicyArgs(
      authAlgorithm: map['authAlgorithm'] == null ? null : pulumi.Output.create<String>(map['authAlgorithm'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      encryptAlgorithm: map['encryptAlgorithm'] == null ? null : pulumi.Output.create<String>(map['encryptAlgorithm'] as String),
      ipcomp: map['ipcomp'] == null ? null : pulumi.Output.create<String>(map['ipcomp'] as String),
      kbLifetime: map['kbLifetime'] == null ? null : pulumi.Output.create<int>(map['kbLifetime'] as int),
      lifetime: map['lifetime'] == null ? null : pulumi.Output.create<int>(map['lifetime'] as int),
      mode: map['mode'] == null ? null : pulumi.Output.create<String>(map['mode'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      perfectForwardSecrecy: map['perfectForwardSecrecy'] == null ? null : pulumi.Output.create<String>(map['perfectForwardSecrecy'] as String),
      protocol: map['protocol'] == null ? null : pulumi.Output.create<String>(map['protocol'] as String),
      tunnelLocalAddress: map['tunnelLocalAddress'] == null ? null : pulumi.Output.create<String>(map['tunnelLocalAddress'] as String),
      tunnelRemoteAddress: map['tunnelRemoteAddress'] == null ? null : pulumi.Output.create<String>(map['tunnelRemoteAddress'] as String),
    );
  }
}

