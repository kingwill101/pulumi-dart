// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_mapping_spec_certificate_mode.dart';

/// The desired state of the Domain Mapping.
class DomainMappingSpec {
  /// The mode of the certificate.
  final pulumi.Input<DomainMappingSpecCertificateMode>? certificateMode;
  /// If set, the mapping will override any mapping set before this spec was set. It is recommended that the user leaves this empty to receive an error warning about a potential conflict and only set it once the respective UI has given such a warning.
  final pulumi.Input<bool>? forceOverride;
  /// The name of the Knative Route that this DomainMapping applies to. The route must exist.
  final pulumi.Input<String>? routeName;

  /// Creates a new [DomainMappingSpec].
  /// [certificateMode] The mode of the certificate.
  /// [forceOverride] If set, the mapping will override any mapping set before this spec was set. It is recommended that the user leaves this empty to receive an error warning about a potential conflict and only set it once the respective UI has given such a warning.
  /// [routeName] The name of the Knative Route that this DomainMapping applies to. The route must exist.
  DomainMappingSpec({
    this.certificateMode,
    this.forceOverride,
    this.routeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateMode': ?pulumi.Input.mapOptionalInputValue<DomainMappingSpecCertificateMode, String>(certificateMode, (value) => value.wireValue),
      'forceOverride': ?forceOverride,
      'routeName': ?routeName,
    };
  }

  factory DomainMappingSpec.fromMap(Map<String, dynamic> map) {
    return DomainMappingSpec(
      certificateMode: (() { final guardedValue = map['certificateMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainMappingSpecCertificateMode.fromValue(guardedValue as String)); })(),
      forceOverride: (() { final guardedValue = map['forceOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      routeName: (() { final guardedValue = map['routeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

