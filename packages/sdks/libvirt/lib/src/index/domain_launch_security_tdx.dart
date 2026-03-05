// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_launch_security_tdx_quote_generation_service.dart';

class DomainLaunchSecurityTdx {
  /// Sets the MR configuration identifier for TDX in the domain.
  final pulumi.Input<String>? mrConfigId;
  /// Configures the MR owner field for TDX security in the domain.
  final pulumi.Input<String>? mrOwner;
  /// Sets the configuration for the MR owner in the TDX environment.
  final pulumi.Input<String>? mrOwnerConfig;
  /// Configures the security policy for TDX operations within the domain.
  final pulumi.Input<double>? policy;
  /// Configures the quote generation service for TDX in the domain.
  final pulumi.Input<DomainLaunchSecurityTdxQuoteGenerationService>? quoteGenerationService;

  /// Creates a new [DomainLaunchSecurityTdx].
  /// [mrConfigId] Sets the MR configuration identifier for TDX in the domain.
  /// [mrOwner] Configures the MR owner field for TDX security in the domain.
  /// [mrOwnerConfig] Sets the configuration for the MR owner in the TDX environment.
  /// [policy] Configures the security policy for TDX operations within the domain.
  /// [quoteGenerationService] Configures the quote generation service for TDX in the domain.
  DomainLaunchSecurityTdx({
    this.mrConfigId,
    this.mrOwner,
    this.mrOwnerConfig,
    this.policy,
    this.quoteGenerationService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mrConfigId': ?mrConfigId,
      'mrOwner': ?mrOwner,
      'mrOwnerConfig': ?mrOwnerConfig,
      'policy': ?policy,
      'quoteGenerationService': ?pulumi.Input.mapOptionalInputValue<DomainLaunchSecurityTdxQuoteGenerationService, Map<String, dynamic>>(quoteGenerationService, (value) => value.toMap()),
    };
  }

  factory DomainLaunchSecurityTdx.fromMap(Map<String, dynamic> map) {
    return DomainLaunchSecurityTdx(
      mrConfigId: (() { final guardedValue = map['mrConfigId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mrOwner: (() { final guardedValue = map['mrOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mrOwnerConfig: (() { final guardedValue = map['mrOwnerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      quoteGenerationService: (() { final guardedValue = map['quoteGenerationService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainLaunchSecurityTdxQuoteGenerationService.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

