// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainLaunchSecuritySev {
  /// Sets the position of the circular bit for SEV in the domain's configuration.
  final pulumi.Input<double>? cbitPos;
  /// Configures the Diffie-Hellman certificate parameter for SEV.
  final pulumi.Input<String> dhCert;
  /// Configures kernel hashes for SEV to ensure integrity verification.
  final pulumi.Input<String>? kernelHashes;
  /// Sets the security policy for SEV operations within the domain.
  final pulumi.Input<double>? policy;
  /// Configures the reduced physical bits setting for SEV to assign smaller address spaces.
  final pulumi.Input<double>? reducedPhysBits;
  /// Sets the SEV session identifier for managing virtual machine security.
  final pulumi.Input<String> session;

  /// Creates a new [DomainLaunchSecuritySev].
  /// [cbitPos] Sets the position of the circular bit for SEV in the domain's configuration.
  /// [dhCert] Configures the Diffie-Hellman certificate parameter for SEV.
  /// [kernelHashes] Configures kernel hashes for SEV to ensure integrity verification.
  /// [policy] Sets the security policy for SEV operations within the domain.
  /// [reducedPhysBits] Configures the reduced physical bits setting for SEV to assign smaller address spaces.
  /// [session] Sets the SEV session identifier for managing virtual machine security.
  DomainLaunchSecuritySev({
    this.cbitPos,
    required this.dhCert,
    this.kernelHashes,
    this.policy,
    this.reducedPhysBits,
    required this.session,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cbitPos': ?cbitPos,
      'dhCert': dhCert,
      'kernelHashes': ?kernelHashes,
      'policy': ?policy,
      'reducedPhysBits': ?reducedPhysBits,
      'session': session,
    };
  }

  factory DomainLaunchSecuritySev.fromMap(Map<String, dynamic> map) {
    return DomainLaunchSecuritySev(
      cbitPos: (() { final guardedValue = map['cbitPos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      dhCert: pulumi.Input.fromValue(map['dhCert'] as String),
      kernelHashes: (() { final guardedValue = map['kernelHashes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      reducedPhysBits: (() { final guardedValue = map['reducedPhysBits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      session: pulumi.Input.fromValue(map['session'] as String),
    );
  }
}

