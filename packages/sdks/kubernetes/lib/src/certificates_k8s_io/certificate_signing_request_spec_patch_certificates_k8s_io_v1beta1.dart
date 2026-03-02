// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This information is immutable after the request is created. Only the Request and Usages fields can be set on creation, other fields are derived by Kubernetes and cannot be modified by users.
class CertificateSigningRequestSpecPatchCertificatesK8sIoV1beta1 {
  /// Extra information about the requesting user. See user.Info interface for details.
  final pulumi.Input<Map<String, List<String>>>? extra;
  /// Group information about the requesting user. See user.Info interface for details.
  final pulumi.Input<List<String>>? groups;
  /// Base64-encoded PKCS#10 CSR data
  final pulumi.Input<String>? request;
  /// Requested signer for the request. It is a qualified name in the form: `scope-hostname.io/name`. If empty, it will be defaulted:
  /// 1. If it's a kubelet client certificate, it is assigned
  /// "kubernetes.io/kube-apiserver-client-kubelet".
  /// 2. If it's a kubelet serving certificate, it is assigned
  /// "kubernetes.io/kubelet-serving".
  /// 3. Otherwise, it is assigned "kubernetes.io/legacy-unknown".
  /// Distribution of trust for signers happens out of band. You can select on this field using `spec.signerName`.
  final pulumi.Input<String>? signerName;
  /// UID information about the requesting user. See user.Info interface for details.
  final pulumi.Input<String>? uid;
  /// allowedUsages specifies a set of usage contexts the key will be valid for. See: https://tools.ietf.org/html/rfc5280#section-4.2.1.3
  /// https://tools.ietf.org/html/rfc5280#section-4.2.1.12
  final pulumi.Input<List<String>>? usages;
  /// Information about the requesting user. See user.Info interface for details.
  final pulumi.Input<String>? username;

  /// Creates a new [CertificateSigningRequestSpecPatchCertificatesK8sIoV1beta1].
  /// [extra] Extra information about the requesting user. See user.Info interface for details.
  /// [groups] Group information about the requesting user. See user.Info interface for details.
  /// [request] Base64-encoded PKCS#10 CSR data
  /// [signerName] Requested signer for the request. It is a qualified name in the form: `scope-hostname.io/name`. If empty, it will be defaulted:
  /// [uid] UID information about the requesting user. See user.Info interface for details.
  /// [usages] allowedUsages specifies a set of usage contexts the key will be valid for. See: https://tools.ietf.org/html/rfc5280#section-4.2.1.3
  /// [username] Information about the requesting user. See user.Info interface for details.
  CertificateSigningRequestSpecPatchCertificatesK8sIoV1beta1({
    this.extra,
    this.groups,
    this.request,
    this.signerName,
    this.uid,
    this.usages,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extra': ?extra,
      'groups': ?groups,
      'request': ?request,
      'signerName': ?signerName,
      'uid': ?uid,
      'usages': ?usages,
      'username': ?username,
    };
  }

  factory CertificateSigningRequestSpecPatchCertificatesK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return CertificateSigningRequestSpecPatchCertificatesK8sIoV1beta1(
      extra: map['extra'] == null ? null : ((map['extra']! as Map).cast<String, List<String>>()).input(),
      groups: map['groups'] == null ? null : ((map['groups']! as List).cast<String>()).input(),
      request: map['request'] == null ? null : (map['request']! as String).input(),
      signerName: map['signerName'] == null ? null : (map['signerName']! as String).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
      usages: map['usages'] == null ? null : ((map['usages']! as List).cast<String>()).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

