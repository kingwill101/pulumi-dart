// ignore_for_file: unused_element, unnecessary_cast


class DomainLaunchSecuritySevsnp {
  /// Configures the author key for the SEV-SNP feature in the domain.
  final String? authorKey;
  /// Sets the circular bit position for the SEV-SNP configuration in the domain.
  final double? cbitPos;
  /// Configures guest visible workarounds for SEV-SNP to enhance compatibility and performance.
  final String? guestVisibleWorkarounds;
  /// Sets the host-specific data for the SEV-SNP configuration.
  final String? hostData;
  /// Configures identifier authorization settings for SEV-SNP.
  final String? idAuth;
  /// Configures ID block settings for SEV-SNP in the domain.
  final String? idBlock;
  /// Configures kernel hashes for SEV-SNP to ensure integrity verification.
  final String? kernelHashes;
  /// Sets the security policy for SEV-SNP operations within the domain.
  final double? policy;
  /// Configures the reduced physical bits setting for SEV-SNP to assign smaller address spaces.
  final double? reducedPhysBits;
  /// Configures the VCEK (Virtual Machine Key) for the SEV-SNP feature.
  final String? vcek;

  /// Creates a new [DomainLaunchSecuritySevsnp].
  /// [authorKey] Configures the author key for the SEV-SNP feature in the domain.
  /// [cbitPos] Sets the circular bit position for the SEV-SNP configuration in the domain.
  /// [guestVisibleWorkarounds] Configures guest visible workarounds for SEV-SNP to enhance compatibility and performance.
  /// [hostData] Sets the host-specific data for the SEV-SNP configuration.
  /// [idAuth] Configures identifier authorization settings for SEV-SNP.
  /// [idBlock] Configures ID block settings for SEV-SNP in the domain.
  /// [kernelHashes] Configures kernel hashes for SEV-SNP to ensure integrity verification.
  /// [policy] Sets the security policy for SEV-SNP operations within the domain.
  /// [reducedPhysBits] Configures the reduced physical bits setting for SEV-SNP to assign smaller address spaces.
  /// [vcek] Configures the VCEK (Virtual Machine Key) for the SEV-SNP feature.
  DomainLaunchSecuritySevsnp({
    this.authorKey,
    this.cbitPos,
    this.guestVisibleWorkarounds,
    this.hostData,
    this.idAuth,
    this.idBlock,
    this.kernelHashes,
    this.policy,
    this.reducedPhysBits,
    this.vcek,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorKey': ?authorKey,
      'cbitPos': ?cbitPos,
      'guestVisibleWorkarounds': ?guestVisibleWorkarounds,
      'hostData': ?hostData,
      'idAuth': ?idAuth,
      'idBlock': ?idBlock,
      'kernelHashes': ?kernelHashes,
      'policy': ?policy,
      'reducedPhysBits': ?reducedPhysBits,
      'vcek': ?vcek,
    };
  }

  factory DomainLaunchSecuritySevsnp.fromMap(Map<String, dynamic> map) {
    return DomainLaunchSecuritySevsnp(
      authorKey: map['authorKey'] == null ? null : map['authorKey'] as String,
      cbitPos: map['cbitPos'] == null ? null : map['cbitPos'] as double,
      guestVisibleWorkarounds: map['guestVisibleWorkarounds'] == null ? null : map['guestVisibleWorkarounds'] as String,
      hostData: map['hostData'] == null ? null : map['hostData'] as String,
      idAuth: map['idAuth'] == null ? null : map['idAuth'] as String,
      idBlock: map['idBlock'] == null ? null : map['idBlock'] as String,
      kernelHashes: map['kernelHashes'] == null ? null : map['kernelHashes'] as String,
      policy: map['policy'] == null ? null : map['policy'] as double,
      reducedPhysBits: map['reducedPhysBits'] == null ? null : map['reducedPhysBits'] as double,
      vcek: map['vcek'] == null ? null : map['vcek'] as String,
    );
  }
}

