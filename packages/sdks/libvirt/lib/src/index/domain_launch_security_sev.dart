// ignore_for_file: unused_element, unnecessary_cast


class DomainLaunchSecuritySev {
  /// Sets the position of the circular bit for SEV in the domain's configuration.
  final double? cbitPos;
  /// Configures the Diffie-Hellman certificate parameter for SEV.
  final String dhCert;
  /// Configures kernel hashes for SEV to ensure integrity verification.
  final String? kernelHashes;
  /// Sets the security policy for SEV operations within the domain.
  final double? policy;
  /// Configures the reduced physical bits setting for SEV to assign smaller address spaces.
  final double? reducedPhysBits;
  /// Sets the SEV session identifier for managing virtual machine security.
  final String session;

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
      cbitPos: map['cbitPos'] == null ? null : map['cbitPos'] as double,
      dhCert: map['dhCert'] as String,
      kernelHashes: map['kernelHashes'] == null ? null : map['kernelHashes'] as String,
      policy: map['policy'] == null ? null : map['policy'] as double,
      reducedPhysBits: map['reducedPhysBits'] == null ? null : map['reducedPhysBits'] as double,
      session: map['session'] as String,
    );
  }
}

