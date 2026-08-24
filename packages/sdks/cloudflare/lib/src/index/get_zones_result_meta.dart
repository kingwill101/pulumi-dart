// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZonesResultMeta {
  /// The zone is only configured for CDN.
  final pulumi.Input<bool> cdnOnly;
  /// Number of Custom Certificates the zone can have.
  final pulumi.Input<int> customCertificateQuota;
  /// The zone is only configured for DNS.
  final pulumi.Input<bool> dnsOnly;
  /// The zone is setup with Foundation DNS.
  final pulumi.Input<bool> foundationDns;
  /// Number of Page Rules a zone can have.
  final pulumi.Input<int> pageRuleQuota;
  /// The zone has been flagged for phishing.
  final pulumi.Input<bool> phishingDetected;
  final pulumi.Input<int> step;

  /// Creates a new [GetZonesResultMeta].
  /// [cdnOnly] The zone is only configured for CDN.
  /// [customCertificateQuota] Number of Custom Certificates the zone can have.
  /// [dnsOnly] The zone is only configured for DNS.
  /// [foundationDns] The zone is setup with Foundation DNS.
  /// [pageRuleQuota] Number of Page Rules a zone can have.
  /// [phishingDetected] The zone has been flagged for phishing.
  /// [step] Required.
  const GetZonesResultMeta({
    required this.cdnOnly,
    required this.customCertificateQuota,
    required this.dnsOnly,
    required this.foundationDns,
    required this.pageRuleQuota,
    required this.phishingDetected,
    required this.step,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnOnly': cdnOnly,
      'customCertificateQuota': customCertificateQuota,
      'dnsOnly': dnsOnly,
      'foundationDns': foundationDns,
      'pageRuleQuota': pageRuleQuota,
      'phishingDetected': phishingDetected,
      'step': step,
    };
  }

  factory GetZonesResultMeta.fromMap(Map<String, dynamic> map) {
    return GetZonesResultMeta(
      cdnOnly: pulumi.Input.fromValue(map['cdnOnly'] as bool),
      customCertificateQuota: pulumi.Input.fromValue((map['customCertificateQuota'] as num).toInt()),
      dnsOnly: pulumi.Input.fromValue(map['dnsOnly'] as bool),
      foundationDns: pulumi.Input.fromValue(map['foundationDns'] as bool),
      pageRuleQuota: pulumi.Input.fromValue((map['pageRuleQuota'] as num).toInt()),
      phishingDetected: pulumi.Input.fromValue(map['phishingDetected'] as bool),
      step: pulumi.Input.fromValue((map['step'] as num).toInt()),
    );
  }
}
