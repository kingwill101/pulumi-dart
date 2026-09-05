// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_service_domain_verification_record_dkim.dart';
import 'email_service_domain_verification_record_dkim2.dart';
import 'email_service_domain_verification_record_dmarc.dart';
import 'email_service_domain_verification_record_domain.dart';
import 'email_service_domain_verification_record_spf.dart';

class EmailServiceDomainVerificationRecord {
  /// (Optional) An `dkim2` block as defined below.
  final pulumi.Input<List<EmailServiceDomainVerificationRecordDkim2>?>? dkim2s;
  /// (Optional) An `dkim` block as defined below.
  final pulumi.Input<List<EmailServiceDomainVerificationRecordDkim>?>? dkims;
  /// (Optional) An `dmarc` block as defined below.
  final pulumi.Input<List<EmailServiceDomainVerificationRecordDmarc>?>? dmarcs;
  /// (Optional) An `domain` block as defined below.
  final pulumi.Input<List<EmailServiceDomainVerificationRecordDomain>?>? domains;
  /// (Optional) An `spf` block as defined below.
  final pulumi.Input<List<EmailServiceDomainVerificationRecordSpf>?>? spfs;

  /// Creates a new [EmailServiceDomainVerificationRecord].
  /// [dkim2s] (Optional) An `dkim2` block as defined below.
  /// [dkims] (Optional) An `dkim` block as defined below.
  /// [dmarcs] (Optional) An `dmarc` block as defined below.
  /// [domains] (Optional) An `domain` block as defined below.
  /// [spfs] (Optional) An `spf` block as defined below.
  const EmailServiceDomainVerificationRecord({
    this.dkim2s,
    this.dkims,
    this.dmarcs,
    this.domains,
    this.spfs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dkim2s': ?pulumi.Input.mapOptionalInputValue<List<EmailServiceDomainVerificationRecordDkim2>, List<Map<String, dynamic>>>(dkim2s, (value) => pulumi.Input.encodeList<EmailServiceDomainVerificationRecordDkim2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dkims': ?pulumi.Input.mapOptionalInputValue<List<EmailServiceDomainVerificationRecordDkim>, List<Map<String, dynamic>>>(dkims, (value) => pulumi.Input.encodeList<EmailServiceDomainVerificationRecordDkim, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dmarcs': ?pulumi.Input.mapOptionalInputValue<List<EmailServiceDomainVerificationRecordDmarc>, List<Map<String, dynamic>>>(dmarcs, (value) => pulumi.Input.encodeList<EmailServiceDomainVerificationRecordDmarc, Map<String, dynamic>>(value, (value) => value.toMap())),
      'domains': ?pulumi.Input.mapOptionalInputValue<List<EmailServiceDomainVerificationRecordDomain>, List<Map<String, dynamic>>>(domains, (value) => pulumi.Input.encodeList<EmailServiceDomainVerificationRecordDomain, Map<String, dynamic>>(value, (value) => value.toMap())),
      'spfs': ?pulumi.Input.mapOptionalInputValue<List<EmailServiceDomainVerificationRecordSpf>, List<Map<String, dynamic>>>(spfs, (value) => pulumi.Input.encodeList<EmailServiceDomainVerificationRecordSpf, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EmailServiceDomainVerificationRecord.fromMap(Map<String, dynamic> map) {
    return EmailServiceDomainVerificationRecord(
      dkim2s: (() { final guardedValue = map['dkim2s']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EmailServiceDomainVerificationRecordDkim2>(guardedValue, (value) => EmailServiceDomainVerificationRecordDkim2.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dkims: (() { final guardedValue = map['dkims']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EmailServiceDomainVerificationRecordDkim>(guardedValue, (value) => EmailServiceDomainVerificationRecordDkim.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dmarcs: (() { final guardedValue = map['dmarcs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EmailServiceDomainVerificationRecordDmarc>(guardedValue, (value) => EmailServiceDomainVerificationRecordDmarc.fromMap((value as Map).cast<String, dynamic>()))); })(),
      domains: (() { final guardedValue = map['domains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EmailServiceDomainVerificationRecordDomain>(guardedValue, (value) => EmailServiceDomainVerificationRecordDomain.fromMap((value as Map).cast<String, dynamic>()))); })(),
      spfs: (() { final guardedValue = map['spfs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EmailServiceDomainVerificationRecordSpf>(guardedValue, (value) => EmailServiceDomainVerificationRecordSpf.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
