// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/condition_patch.dart';

/// PodCertificateRequestStatus describes the status of the request, and holds the certificate data if the request is issued.
class PodCertificateRequestStatusPatchCertificatesK8sIoV1beta1 {
  /// beginRefreshAt is the time at which the kubelet should begin trying to refresh the certificate.  This field is set via the /status subresource, and must be set at the same time as certificateChain.  Once populated, this field is immutable.
  ///
  /// This field is only a hint.  Kubelet may start refreshing before or after this time if necessary.
  final pulumi.Input<String?>? beginRefreshAt;
  /// certificateChain is populated with an issued certificate by the signer. This field is set via the /status subresource. Once populated, this field is immutable.
  ///
  /// If the certificate signing request is denied, a condition of type "Denied" is added and this field remains empty. If the signer cannot issue the certificate, a condition of type "Failed" is added and this field remains empty.
  ///
  /// Validation requirements:
  /// 1. certificateChain must consist of one or more PEM-formatted certificates.
  /// 2. Each entry must be a valid PEM-wrapped, DER-encoded ASN.1 Certificate as
  /// described in section 4 of RFC5280.
  ///
  /// If more than one block is present, and the definition of the requested spec.signerName does not indicate otherwise, the first block is the issued certificate, and subsequent blocks should be treated as intermediate certificates and presented in TLS handshakes.  When projecting the chain into a pod volume, kubelet will drop any data in-between the PEM blocks, as well as any PEM block headers.
  final pulumi.Input<String?>? certificateChain;
  /// conditions applied to the request.
  ///
  /// The types "Issued", "Denied", and "Failed" have special handling.  At most one of these conditions may be present, and they must have status "True".
  ///
  /// If the request is denied with `Reason=UnsupportedKeyType`, the signer may suggest a key type that will work in the message field.
  final pulumi.Input<List<ConditionPatch>?>? conditions;
  /// notAfter is the time at which the certificate expires.  The value must be the same as the notAfter value in the leaf certificate in certificateChain.  This field is set via the /status subresource.  Once populated, it is immutable.  The signer must set this field at the same time it sets certificateChain.
  final pulumi.Input<String?>? notAfter;
  /// notBefore is the time at which the certificate becomes valid.  The value must be the same as the notBefore value in the leaf certificate in certificateChain.  This field is set via the /status subresource.  Once populated, it is immutable. The signer must set this field at the same time it sets certificateChain.
  final pulumi.Input<String?>? notBefore;

  /// Creates a new [PodCertificateRequestStatusPatchCertificatesK8sIoV1beta1].
  /// [beginRefreshAt] beginRefreshAt is the time at which the kubelet should begin trying to refresh the certificate.  This field is set via the /status subresource, and must be set at the same time as certificateChain.  Once populated, this field is immutable.
  /// [certificateChain] certificateChain is populated with an issued certificate by the signer. This field is set via the /status subresource. Once populated, this field is immutable.
  /// [conditions] conditions applied to the request.
  /// [notAfter] notAfter is the time at which the certificate expires.  The value must be the same as the notAfter value in the leaf certificate in certificateChain.  This field is set via the /status subresource.  Once populated, it is immutable.  The signer must set this field at the same time it sets certificateChain.
  /// [notBefore] notBefore is the time at which the certificate becomes valid.  The value must be the same as the notBefore value in the leaf certificate in certificateChain.  This field is set via the /status subresource.  Once populated, it is immutable. The signer must set this field at the same time it sets certificateChain.
  const PodCertificateRequestStatusPatchCertificatesK8sIoV1beta1({
    this.beginRefreshAt,
    this.certificateChain,
    this.conditions,
    this.notAfter,
    this.notBefore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'beginRefreshAt': ?beginRefreshAt,
      'certificateChain': ?certificateChain,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<ConditionPatch>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ConditionPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notAfter': ?notAfter,
      'notBefore': ?notBefore,
    };
  }

  factory PodCertificateRequestStatusPatchCertificatesK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return PodCertificateRequestStatusPatchCertificatesK8sIoV1beta1(
      beginRefreshAt: (() { final guardedValue = map['beginRefreshAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateChain: (() { final guardedValue = map['certificateChain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConditionPatch>(guardedValue, (value) => ConditionPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      notAfter: (() { final guardedValue = map['notAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notBefore: (() { final guardedValue = map['notBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
