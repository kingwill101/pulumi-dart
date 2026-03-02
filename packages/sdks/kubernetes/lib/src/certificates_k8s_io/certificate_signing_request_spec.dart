// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CertificateSigningRequestSpec contains the certificate request.
class CertificateSigningRequestSpec {
  /// expirationSeconds is the requested duration of validity of the issued certificate. The certificate signer may issue a certificate with a different validity duration so a client must check the delta between the notBefore and and notAfter fields in the issued certificate to determine the actual duration.
  ///
  /// The v1.22+ in-tree implementations of the well-known Kubernetes signers will honor this field as long as the requested duration is not greater than the maximum duration they will honor per the --cluster-signing-duration CLI flag to the Kubernetes controller manager.
  ///
  /// Certificate signers may not honor this field for various reasons:
  ///
  /// 1. Old signer that is unaware of the field (such as the in-tree
  /// implementations prior to v1.22)
  /// 2. Signer whose configured maximum is shorter than the requested duration
  /// 3. Signer whose configured minimum is longer than the requested duration
  ///
  /// The minimum valid value for expirationSeconds is 600, i.e. 10 minutes.
  final pulumi.Input<int>? expirationSeconds;
  /// extra contains extra attributes of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable.
  final pulumi.Input<Map<String, List<String>>>? extra;
  /// groups contains group membership of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable.
  final pulumi.Input<List<String>>? groups;
  /// request contains an x509 certificate signing request encoded in a "CERTIFICATE REQUEST" PEM block. When serialized as JSON or YAML, the data is additionally base64-encoded.
  final pulumi.Input<String> request;
  /// signerName indicates the requested signer, and is a qualified name.
  ///
  /// List/watch requests for CertificateSigningRequests can filter on this field using a "spec.signerName=NAME" fieldSelector.
  ///
  /// Well-known Kubernetes signers are:
  /// 1. "kubernetes.io/kube-apiserver-client": issues client certificates that can be used to authenticate to kube-apiserver.
  /// Requests for this signer are never auto-approved by kube-controller-manager, can be issued by the "csrsigning" controller in kube-controller-manager.
  /// 2. "kubernetes.io/kube-apiserver-client-kubelet": issues client certificates that kubelets use to authenticate to kube-apiserver.
  /// Requests for this signer can be auto-approved by the "csrapproving" controller in kube-controller-manager, and can be issued by the "csrsigning" controller in kube-controller-manager.
  /// 3. "kubernetes.io/kubelet-serving" issues serving certificates that kubelets use to serve TLS endpoints, which kube-apiserver can connect to securely.
  /// Requests for this signer are never auto-approved by kube-controller-manager, and can be issued by the "csrsigning" controller in kube-controller-manager.
  ///
  /// More details are available at https://k8s.io/docs/reference/access-authn-authz/certificate-signing-requests/#kubernetes-signers
  ///
  /// Custom signerNames can also be specified. The signer defines:
  /// 1. Trust distribution: how trust (CA bundles) are distributed.
  /// 2. Permitted subjects: and behavior when a disallowed subject is requested.
  /// 3. Required, permitted, or forbidden x509 extensions in the request (including whether subjectAltNames are allowed, which types, restrictions on allowed values) and behavior when a disallowed extension is requested.
  /// 4. Required, permitted, or forbidden key usages / extended key usages.
  /// 5. Expiration/certificate lifetime: whether it is fixed by the signer, configurable by the admin.
  /// 6. Whether or not requests for CA certificates are allowed.
  final pulumi.Input<String> signerName;
  /// uid contains the uid of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable.
  final pulumi.Input<String>? uid;
  /// usages specifies a set of key usages requested in the issued certificate.
  ///
  /// Requests for TLS client certificates typically request: "digital signature", "key encipherment", "client auth".
  ///
  /// Requests for TLS serving certificates typically request: "key encipherment", "digital signature", "server auth".
  ///
  /// Valid values are:
  /// "signing", "digital signature", "content commitment",
  /// "key encipherment", "key agreement", "data encipherment",
  /// "cert sign", "crl sign", "encipher only", "decipher only", "any",
  /// "server auth", "client auth",
  /// "code signing", "email protection", "s/mime",
  /// "ipsec end system", "ipsec tunnel", "ipsec user",
  /// "timestamping", "ocsp signing", "microsoft sgc", "netscape sgc"
  final pulumi.Input<List<String>>? usages;
  /// username contains the name of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable.
  final pulumi.Input<String>? username;

  /// Creates a new [CertificateSigningRequestSpec].
  /// [expirationSeconds] expirationSeconds is the requested duration of validity of the issued certificate. The certificate signer may issue a certificate with a different validity duration so a client must check the delta between the notBefore and and notAfter fields in the issued certificate to determine the actual duration.
  /// [extra] extra contains extra attributes of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable.
  /// [groups] groups contains group membership of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable.
  /// [request] request contains an x509 certificate signing request encoded in a "CERTIFICATE REQUEST" PEM block. When serialized as JSON or YAML, the data is additionally base64-encoded.
  /// [signerName] signerName indicates the requested signer, and is a qualified name.
  /// [uid] uid contains the uid of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable.
  /// [usages] usages specifies a set of key usages requested in the issued certificate.
  /// [username] username contains the name of the user that created the CertificateSigningRequest. Populated by the API server on creation and immutable.
  CertificateSigningRequestSpec({
    this.expirationSeconds,
    this.extra,
    this.groups,
    required this.request,
    required this.signerName,
    this.uid,
    this.usages,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationSeconds': ?expirationSeconds,
      'extra': ?extra,
      'groups': ?groups,
      'request': request,
      'signerName': signerName,
      'uid': ?uid,
      'usages': ?usages,
      'username': ?username,
    };
  }

  factory CertificateSigningRequestSpec.fromMap(Map<String, dynamic> map) {
    return CertificateSigningRequestSpec(
      expirationSeconds: map['expirationSeconds'] == null ? null : (map['expirationSeconds'] as int).input(),
      extra: map['extra'] == null ? null : ((map['extra'] as Map).cast<String, List<String>>()).input(),
      groups: map['groups'] == null ? null : ((map['groups'] as List).cast<String>()).input(),
      request: (map['request'] as String).input(),
      signerName: (map['signerName'] as String).input(),
      uid: map['uid'] == null ? null : (map['uid'] as String).input(),
      usages: map['usages'] == null ? null : ((map['usages'] as List).cast<String>()).input(),
      username: map['username'] == null ? null : (map['username'] as String).input(),
    );
  }
}

