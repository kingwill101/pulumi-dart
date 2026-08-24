// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZoneMeta {
  /// The zone is only configured for CDN.
  final pulumi.Input<bool?>? cdnOnly;
  /// Number of Custom Certificates the zone can have.
  final pulumi.Input<int?>? customCertificateQuota;
  /// The zone is only configured for DNS.
  final pulumi.Input<bool?>? dnsOnly;
  /// The zone is setup with Foundation DNS.
  final pulumi.Input<bool?>? foundationDns;
  /// Number of Page Rules a zone can have.
  final pulumi.Input<int?>? pageRuleQuota;
  /// The zone has been flagged for phishing.
  final pulumi.Input<bool?>? phishingDetected;
  final pulumi.Input<int?>? step;

  /// Creates a new [ZoneMeta].
  /// [cdnOnly] The zone is only configured for CDN.
  /// [customCertificateQuota] Number of Custom Certificates the zone can have.
  /// [dnsOnly] The zone is only configured for DNS.
  /// [foundationDns] The zone is setup with Foundation DNS.
  /// [pageRuleQuota] Number of Page Rules a zone can have.
  /// [phishingDetected] The zone has been flagged for phishing.
  /// [step] Optional.
  const ZoneMeta({
    this.cdnOnly,
    this.customCertificateQuota,
    this.dnsOnly,
    this.foundationDns,
    this.pageRuleQuota,
    this.phishingDetected,
    this.step,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnOnly': ?cdnOnly,
      'customCertificateQuota': ?customCertificateQuota,
      'dnsOnly': ?dnsOnly,
      'foundationDns': ?foundationDns,
      'pageRuleQuota': ?pageRuleQuota,
      'phishingDetected': ?phishingDetected,
      'step': ?step,
    };
  }

  factory ZoneMeta.fromMap(Map<String, dynamic> map) {
    return ZoneMeta(
      cdnOnly: (() { final guardedValue = map['cdnOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      customCertificateQuota: (() { final guardedValue = map['customCertificateQuota']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      dnsOnly: (() { final guardedValue = map['dnsOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      foundationDns: (() { final guardedValue = map['foundationDns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      pageRuleQuota: (() { final guardedValue = map['pageRuleQuota']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      phishingDetected: (() { final guardedValue = map['phishingDetected']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      step: (() { final guardedValue = map['step']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
