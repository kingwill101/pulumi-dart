// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_sec_policy_lifetime.dart';

/// {@template pulumi_vpnaas_ip_sec_policy_ip_sec_policy_args_doc}
/// The set of arguments for IpSecPolicy.
/// {@endtemplate}
/// {@macro pulumi_vpnaas_ip_sec_policy_ip_sec_policy_args_doc}
class IpSecPolicyArgs {
  /// The authentication hash algorithm. Valid values are sha1, sha256, sha384, sha512,
  /// aes-xcbc, aes-cmac. Default is sha1.
  /// Changing this updates the algorithm of the existing policy.
  final pulumi.Input<String>? authAlgorithm;
  /// The human-readable description for the policy.
  /// Changing this updates the description of the existing policy.
  final pulumi.Input<String>? description;
  /// The encapsulation mode. Valid values are tunnel and transport. Default is tunnel.
  /// Changing this updates the existing policy.
  final pulumi.Input<String>? encapsulationMode;
  /// The encryption algorithm. Valid values are 3des, aes-128, aes-192, aes-256,
  /// aes-KKK-ctr, aes-KKK-ccm-II, aes-KKK-gcm-II (with KKK = 128/192/256 bits key size and II = 8/12/16 octets ICV).
  /// The default value is aes-128. Changing this updates the existing policy.
  final pulumi.Input<String>? encryptionAlgorithm;
  /// The lifetime of the security association. Consists of Unit and Value.
  final pulumi.Input<List<IpSecPolicyLifetime>>? lifetimes;
  /// The name of the policy. Changing this updates the name of
  /// the existing policy.
  final pulumi.Input<String>? name;
  /// The perfect forward secrecy mode. Valid values are group2, group5 and group14 to group31.
  /// Default is group5. Changing this updates the existing policy.
  final pulumi.Input<String>? pfs;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create an IPSec policy. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// policy.
  final pulumi.Input<String>? region;
  /// The owner of the policy. Required if admin wants to
  /// create a policy for another project. Changing this creates a new policy.
  final pulumi.Input<String>? tenantId;
  /// The transform protocol. Valid values are esp, ah and ah-esp.
  /// Changing this updates the existing policy. Default is ESP.
  final pulumi.Input<String>? transformProtocol;
  /// Map of additional options.
  final pulumi.Input<Map<String, String>>? valueSpecs;

  /// Creates a new [IpSecPolicyArgs].
  /// [authAlgorithm] The authentication hash algorithm. Valid values are sha1, sha256, sha384, sha512,
  /// [description] The human-readable description for the policy.
  /// [encapsulationMode] The encapsulation mode. Valid values are tunnel and transport. Default is tunnel.
  /// [encryptionAlgorithm] The encryption algorithm. Valid values are 3des, aes-128, aes-192, aes-256,
  /// [lifetimes] The lifetime of the security association. Consists of Unit and Value.
  /// [name] The name of the policy. Changing this updates the name of
  /// [pfs] The perfect forward secrecy mode. Valid values are group2, group5 and group14 to group31.
  /// [region] The region in which to obtain the V2 Networking client.
  /// [tenantId] The owner of the policy. Required if admin wants to
  /// [transformProtocol] The transform protocol. Valid values are esp, ah and ah-esp.
  /// [valueSpecs] Map of additional options.
  const IpSecPolicyArgs({
    this.authAlgorithm,
    this.description,
    this.encapsulationMode,
    this.encryptionAlgorithm,
    this.lifetimes,
    this.name,
    this.pfs,
    this.region,
    this.tenantId,
    this.transformProtocol,
    this.valueSpecs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authAlgorithm': ?authAlgorithm,
      'description': ?description,
      'encapsulationMode': ?encapsulationMode,
      'encryptionAlgorithm': ?encryptionAlgorithm,
      'lifetimes': ?pulumi.Input.mapOptionalInputValue<List<IpSecPolicyLifetime>, List<Map<String, dynamic>>>(lifetimes, (value) => pulumi.Input.encodeList<IpSecPolicyLifetime, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'pfs': ?pfs,
      'region': ?region,
      'tenantId': ?tenantId,
      'transformProtocol': ?transformProtocol,
      'valueSpecs': ?valueSpecs,
    };
  }

  factory IpSecPolicyArgs.fromMap(Map<String, dynamic> map) {
    return IpSecPolicyArgs(
      authAlgorithm: (() { final guardedValue = map['authAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encapsulationMode: (() { final guardedValue = map['encapsulationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionAlgorithm: (() { final guardedValue = map['encryptionAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lifetimes: (() { final guardedValue = map['lifetimes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IpSecPolicyLifetime>(guardedValue, (value) => IpSecPolicyLifetime.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pfs: (() { final guardedValue = map['pfs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transformProtocol: (() { final guardedValue = map['transformProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      valueSpecs: (() { final guardedValue = map['valueSpecs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

