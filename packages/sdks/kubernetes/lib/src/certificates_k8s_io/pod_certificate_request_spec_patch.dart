// ignore_for_file: unused_element, unnecessary_cast


/// PodCertificateRequestSpec describes the certificate request.  All fields are immutable after creation.
class PodCertificateRequestSpecPatch {
  /// maxExpirationSeconds is the maximum lifetime permitted for the certificate.
  ///
  /// If omitted, kube-apiserver will set it to 86400(24 hours). kube-apiserver will reject values shorter than 3600 (1 hour).  The maximum allowable value is 7862400 (91 days).
  ///
  /// The signer implementation is then free to issue a certificate with any lifetime *shorter* than MaxExpirationSeconds, but no shorter than 3600 seconds (1 hour).  This constraint is enforced by kube-apiserver. `kubernetes.io` signers will never issue certificates with a lifetime longer than 24 hours.
  final int? maxExpirationSeconds;
  /// nodeName is the name of the node the pod is assigned to.
  final String? nodeName;
  /// nodeUID is the UID of the node the pod is assigned to.
  final String? nodeUID;
  /// pkixPublicKey is the PKIX-serialized public key the signer will issue the certificate to.
  ///
  /// The key must be one of RSA3072, RSA4096, ECDSAP256, ECDSAP384, ECDSAP521, or ED25519. Note that this list may be expanded in the future.
  ///
  /// Signer implementations do not need to support all key types supported by kube-apiserver and kubelet.  If a signer does not support the key type used for a given PodCertificateRequest, it must deny the request by setting a status.conditions entry with a type of "Denied" and a reason of "UnsupportedKeyType". It may also suggest a key type that it does support in the message field.
  final String? pkixPublicKey;
  /// podName is the name of the pod into which the certificate will be mounted.
  final String? podName;
  /// podUID is the UID of the pod into which the certificate will be mounted.
  final String? podUID;
  /// proofOfPossession proves that the requesting kubelet holds the private key corresponding to pkixPublicKey.
  ///
  /// It is contructed by signing the ASCII bytes of the pod's UID using `pkixPublicKey`.
  ///
  /// kube-apiserver validates the proof of possession during creation of the PodCertificateRequest.
  ///
  /// If the key is an RSA key, then the signature is over the ASCII bytes of the pod UID, using RSASSA-PSS from RFC 8017 (as implemented by the golang function crypto/rsa.SignPSS with nil options).
  ///
  /// If the key is an ECDSA key, then the signature is as described by [SEC 1, Version 2.0](https://www.secg.org/sec1-v2.pdf) (as implemented by the golang library function crypto/ecdsa.SignASN1)
  ///
  /// If the key is an ED25519 key, the the signature is as described by the [ED25519 Specification](https://ed25519.cr.yp.to/) (as implemented by the golang library crypto/ed25519.Sign).
  final String? proofOfPossession;
  /// serviceAccountName is the name of the service account the pod is running as.
  final String? serviceAccountName;
  /// serviceAccountUID is the UID of the service account the pod is running as.
  final String? serviceAccountUID;
  /// signerName indicates the requested signer.
  ///
  /// All signer names beginning with `kubernetes.io` are reserved for use by the Kubernetes project.  There is currently one well-known signer documented by the Kubernetes project, `kubernetes.io/kube-apiserver-client-pod`, which will issue client certificates understood by kube-apiserver.  It is currently unimplemented.
  final String? signerName;
  /// unverifiedUserAnnotations allow pod authors to pass additional information to the signer implementation.  Kubernetes does not restrict or validate this metadata in any way.
  ///
  /// Entries are subject to the same validation as object metadata annotations, with the addition that all keys must be domain-prefixed. No restrictions are placed on values, except an overall size limitation on the entire field.
  ///
  /// Signers should document the keys and values they support.  Signers should deny requests that contain keys they do not recognize.
  final Map<String, String>? unverifiedUserAnnotations;

  /// Creates a new [PodCertificateRequestSpecPatch].
  /// [maxExpirationSeconds] maxExpirationSeconds is the maximum lifetime permitted for the certificate.
  /// [nodeName] nodeName is the name of the node the pod is assigned to.
  /// [nodeUID] nodeUID is the UID of the node the pod is assigned to.
  /// [pkixPublicKey] pkixPublicKey is the PKIX-serialized public key the signer will issue the certificate to.
  /// [podName] podName is the name of the pod into which the certificate will be mounted.
  /// [podUID] podUID is the UID of the pod into which the certificate will be mounted.
  /// [proofOfPossession] proofOfPossession proves that the requesting kubelet holds the private key corresponding to pkixPublicKey.
  /// [serviceAccountName] serviceAccountName is the name of the service account the pod is running as.
  /// [serviceAccountUID] serviceAccountUID is the UID of the service account the pod is running as.
  /// [signerName] signerName indicates the requested signer.
  /// [unverifiedUserAnnotations] unverifiedUserAnnotations allow pod authors to pass additional information to the signer implementation.  Kubernetes does not restrict or validate this metadata in any way.
  PodCertificateRequestSpecPatch({
    this.maxExpirationSeconds,
    this.nodeName,
    this.nodeUID,
    this.pkixPublicKey,
    this.podName,
    this.podUID,
    this.proofOfPossession,
    this.serviceAccountName,
    this.serviceAccountUID,
    this.signerName,
    this.unverifiedUserAnnotations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxExpirationSeconds': ?maxExpirationSeconds,
      'nodeName': ?nodeName,
      'nodeUID': ?nodeUID,
      'pkixPublicKey': ?pkixPublicKey,
      'podName': ?podName,
      'podUID': ?podUID,
      'proofOfPossession': ?proofOfPossession,
      'serviceAccountName': ?serviceAccountName,
      'serviceAccountUID': ?serviceAccountUID,
      'signerName': ?signerName,
      'unverifiedUserAnnotations': ?unverifiedUserAnnotations,
    };
  }

  factory PodCertificateRequestSpecPatch.fromMap(Map<String, dynamic> map) {
    return PodCertificateRequestSpecPatch(
      maxExpirationSeconds: map['maxExpirationSeconds'] == null ? null : map['maxExpirationSeconds'] as int,
      nodeName: map['nodeName'] == null ? null : map['nodeName'] as String,
      nodeUID: map['nodeUID'] == null ? null : map['nodeUID'] as String,
      pkixPublicKey: map['pkixPublicKey'] == null ? null : map['pkixPublicKey'] as String,
      podName: map['podName'] == null ? null : map['podName'] as String,
      podUID: map['podUID'] == null ? null : map['podUID'] as String,
      proofOfPossession: map['proofOfPossession'] == null ? null : map['proofOfPossession'] as String,
      serviceAccountName: map['serviceAccountName'] == null ? null : map['serviceAccountName'] as String,
      serviceAccountUID: map['serviceAccountUID'] == null ? null : map['serviceAccountUID'] as String,
      signerName: map['signerName'] == null ? null : map['signerName'] as String,
      unverifiedUserAnnotations: map['unverifiedUserAnnotations'] == null ? null : (map['unverifiedUserAnnotations'] as Map).cast<String, String>(),
    );
  }
}

