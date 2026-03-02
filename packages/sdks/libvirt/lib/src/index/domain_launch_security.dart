// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_launch_security_sev.dart';
import 'domain_launch_security_sevsnp.dart';
import 'domain_launch_security_tdx.dart';

class DomainLaunchSecurity {
  /// Enables protection mode for s390 virtual machines to enhance security.
  final pulumi.Input<bool>? s390pv;
  /// Configures Secure Encrypted Virtualization (SEV) features for the domain.
  final pulumi.Input<DomainLaunchSecuritySev>? sev;
  /// Configures protection mode for SEV-Shared Non-Pageable (SEV-SNP) in the domain.
  final pulumi.Input<DomainLaunchSecuritySevsnp>? sevsnp;
  /// Configures Trusted Domain Extensions (TDX) security features for the domain.
  final pulumi.Input<DomainLaunchSecurityTdx>? tdx;

  /// Creates a new [DomainLaunchSecurity].
  /// [s390pv] Enables protection mode for s390 virtual machines to enhance security.
  /// [sev] Configures Secure Encrypted Virtualization (SEV) features for the domain.
  /// [sevsnp] Configures protection mode for SEV-Shared Non-Pageable (SEV-SNP) in the domain.
  /// [tdx] Configures Trusted Domain Extensions (TDX) security features for the domain.
  DomainLaunchSecurity({
    this.s390pv,
    this.sev,
    this.sevsnp,
    this.tdx,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's390pv': ?s390pv,
      'sev': ?pulumi.Input.mapOptionalInputValue<DomainLaunchSecuritySev, Map<String, dynamic>>(sev, (value) => value.toMap()),
      'sevsnp': ?pulumi.Input.mapOptionalInputValue<DomainLaunchSecuritySevsnp, Map<String, dynamic>>(sevsnp, (value) => value.toMap()),
      'tdx': ?pulumi.Input.mapOptionalInputValue<DomainLaunchSecurityTdx, Map<String, dynamic>>(tdx, (value) => value.toMap()),
    };
  }

  factory DomainLaunchSecurity.fromMap(Map<String, dynamic> map) {
    return DomainLaunchSecurity(
      s390pv: map['s390pv'] == null ? null : (map['s390pv']! as bool).input(),
      sev: map['sev'] == null ? null : (DomainLaunchSecuritySev.fromMap((map['sev']! as Map).cast<String, dynamic>())).input(),
      sevsnp: map['sevsnp'] == null ? null : (DomainLaunchSecuritySevsnp.fromMap((map['sevsnp']! as Map).cast<String, dynamic>())).input(),
      tdx: map['tdx'] == null ? null : (DomainLaunchSecurityTdx.fromMap((map['tdx']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

