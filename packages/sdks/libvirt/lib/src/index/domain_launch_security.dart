// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_launch_security_sev.dart';
import 'domain_launch_security_sevsnp.dart';
import 'domain_launch_security_tdx.dart';

class DomainLaunchSecurity {
  /// Enables protection mode for s390 virtual machines to enhance security.
  final pulumi.Input<bool?>? s390pv;
  /// Configures Secure Encrypted Virtualization (SEV) features for the domain.
  final pulumi.Input<DomainLaunchSecuritySev?>? sev;
  /// Configures protection mode for SEV-Shared Non-Pageable (SEV-SNP) in the domain.
  final pulumi.Input<DomainLaunchSecuritySevsnp?>? sevsnp;
  /// Configures Trusted Domain Extensions (TDX) security features for the domain.
  final pulumi.Input<DomainLaunchSecurityTdx?>? tdx;

  /// Creates a new [DomainLaunchSecurity].
  /// [s390pv] Enables protection mode for s390 virtual machines to enhance security.
  /// [sev] Configures Secure Encrypted Virtualization (SEV) features for the domain.
  /// [sevsnp] Configures protection mode for SEV-Shared Non-Pageable (SEV-SNP) in the domain.
  /// [tdx] Configures Trusted Domain Extensions (TDX) security features for the domain.
  const DomainLaunchSecurity({
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
      s390pv: (() { final guardedValue = map['s390pv']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sev: (() { final guardedValue = map['sev']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainLaunchSecuritySev.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sevsnp: (() { final guardedValue = map['sevsnp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainLaunchSecuritySevsnp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tdx: (() { final guardedValue = map['tdx']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainLaunchSecurityTdx.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
