// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_service_domain_verification_record_dkim.dart';
import 'email_service_domain_verification_record_dkim2.dart';
import 'email_service_domain_verification_record_dmarc.dart';
import 'email_service_domain_verification_record_domain.dart';
import 'email_service_domain_verification_record_spf.dart';

class EmailServiceDomainVerificationRecord {
  /// (Optional) An `dkim2` block as defined below.
  final List<EmailServiceDomainVerificationRecordDkim2>? dkim2s;
  /// (Optional) An `dkim` block as defined below.
  final List<EmailServiceDomainVerificationRecordDkim>? dkims;
  /// (Optional) An `dmarc` block as defined below.
  final List<EmailServiceDomainVerificationRecordDmarc>? dmarcs;
  /// (Optional) An `domain` block as defined below.
  final List<EmailServiceDomainVerificationRecordDomain>? domains;
  /// (Optional) An `spf` block as defined below.
  final List<EmailServiceDomainVerificationRecordSpf>? spfs;

  /// Creates a new [EmailServiceDomainVerificationRecord].
  /// [dkim2s] (Optional) An `dkim2` block as defined below.
  /// [dkims] (Optional) An `dkim` block as defined below.
  /// [dmarcs] (Optional) An `dmarc` block as defined below.
  /// [domains] (Optional) An `domain` block as defined below.
  /// [spfs] (Optional) An `spf` block as defined below.
  EmailServiceDomainVerificationRecord({
    this.dkim2s,
    this.dkims,
    this.dmarcs,
    this.domains,
    this.spfs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dkim2s': ?dkim2s == null ? null : pulumi.Input.encodeList<EmailServiceDomainVerificationRecordDkim2, Map<String, dynamic>>(dkim2s!, (value) => value.toMap()),
      'dkims': ?dkims == null ? null : pulumi.Input.encodeList<EmailServiceDomainVerificationRecordDkim, Map<String, dynamic>>(dkims!, (value) => value.toMap()),
      'dmarcs': ?dmarcs == null ? null : pulumi.Input.encodeList<EmailServiceDomainVerificationRecordDmarc, Map<String, dynamic>>(dmarcs!, (value) => value.toMap()),
      'domains': ?domains == null ? null : pulumi.Input.encodeList<EmailServiceDomainVerificationRecordDomain, Map<String, dynamic>>(domains!, (value) => value.toMap()),
      'spfs': ?spfs == null ? null : pulumi.Input.encodeList<EmailServiceDomainVerificationRecordSpf, Map<String, dynamic>>(spfs!, (value) => value.toMap()),
    };
  }

  factory EmailServiceDomainVerificationRecord.fromMap(Map<String, dynamic> map) {
    return EmailServiceDomainVerificationRecord(
      dkim2s: map['dkim2s'] == null ? null : pulumi.Input.decodeList<EmailServiceDomainVerificationRecordDkim2>(map['dkim2s'], (value) => EmailServiceDomainVerificationRecordDkim2.fromMap((value as Map).cast<String, dynamic>())),
      dkims: map['dkims'] == null ? null : pulumi.Input.decodeList<EmailServiceDomainVerificationRecordDkim>(map['dkims'], (value) => EmailServiceDomainVerificationRecordDkim.fromMap((value as Map).cast<String, dynamic>())),
      dmarcs: map['dmarcs'] == null ? null : pulumi.Input.decodeList<EmailServiceDomainVerificationRecordDmarc>(map['dmarcs'], (value) => EmailServiceDomainVerificationRecordDmarc.fromMap((value as Map).cast<String, dynamic>())),
      domains: map['domains'] == null ? null : pulumi.Input.decodeList<EmailServiceDomainVerificationRecordDomain>(map['domains'], (value) => EmailServiceDomainVerificationRecordDomain.fromMap((value as Map).cast<String, dynamic>())),
      spfs: map['spfs'] == null ? null : pulumi.Input.decodeList<EmailServiceDomainVerificationRecordSpf>(map['spfs'], (value) => EmailServiceDomainVerificationRecordSpf.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

