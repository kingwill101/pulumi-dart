// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_net_ike_peer_net_ike_peer_args_doc}
/// The set of arguments for NetIkePeer.
/// {@endtemplate}
/// {@macro pulumi_index_net_ike_peer_net_ike_peer_args_doc}
class NetIkePeerArgs {
  /// The application service that the object belongs to
  final pulumi.Input<String>? appService;
  /// the trusted root and intermediate certificate authorities
  final pulumi.Input<String>? caCertFile;
  /// Specifies the file name of the Certificate Revocation List. Only supported in IKEv1
  final pulumi.Input<String>? crlFile;
  /// User defined description
  final pulumi.Input<String>? description;
  /// Specifies the number of seconds between Dead Peer Detection messages
  final pulumi.Input<int>? dpdDelay;
  /// Enable or disable the generation of Security Policy Database entries(SPD) when the device is the responder of the IKE remote node
  final pulumi.Input<String>? generatePolicy;
  /// Defines the lifetime in minutes of an IKE SA which will be proposed in the phase 1 negotiations
  final pulumi.Input<int>? lifetime;
  /// Defines the exchange mode for phase 1 when racoon is the initiator, or the acceptable exchange mode when racoon is the responder
  final pulumi.Input<String>? mode;
  /// Specifies the name of the certificate file object
  final pulumi.Input<String>? myCertFile;
  /// Specifies the name of the certificate key file object
  final pulumi.Input<String>? myCertKeyFile;
  /// Specifies the passphrase of the key used for my-cert-key-file
  final pulumi.Input<String>? myCertKeyPassphrase;
  /// Specifies the identifier type sent to the remote host to use in the phase 1 negotiation
  final pulumi.Input<String>? myIdType;
  /// Specifies the identifier value sent to the remote host in the phase 1 negotiation
  final pulumi.Input<String>? myIdValue;
  /// Name of the ike_peer
  final pulumi.Input<String> name;
  /// Enables use of the NAT-Traversal IPsec extension
  final pulumi.Input<String>? natTraversal;
  /// Specifies whether the local IKE agent can be the initiator of the IKE negotiation with this ike-peer
  final pulumi.Input<String>? passive;
  /// Specifies the peer’s certificate for authentication
  final pulumi.Input<String>? peersCertFile;
  /// Specifies that the only peers-cert-type supported is certfile
  final pulumi.Input<String>? peersCertType;
  /// Specifies which of address, fqdn, asn1dn, user-fqdn or keyid-tag types to use as peers-id-type
  final pulumi.Input<String>? peersIdType;
  /// Specifies the peer’s identifier to be received
  final pulumi.Input<String>? peersIdValue;
  /// Specifies the authentication method used for phase 1 negotiation
  final pulumi.Input<String>? phase1AuthMethod;
  /// Specifies the encryption algorithm used for the isakmp phase 1 negotiation
  final pulumi.Input<String>? phase1EncryptAlgorithm;
  /// Defines the hash algorithm used for the isakmp phase 1 negotiation
  final pulumi.Input<String>? phase1HashAlgorithm;
  /// Defines the Diffie-Hellman group for key exchange to provide perfect forward secrecy
  final pulumi.Input<String>? phase1PerfectForwardSecrecy;
  /// Specifies the preshared key for ISAKMP SAs
  final pulumi.Input<String>? presharedKey;
  /// Display the encrypted preshared-key for the IKE remote node
  final pulumi.Input<String>? presharedKeyEncrypted;
  /// Specifies the pseudo-random function used to derive keying material for all cryptographic operations
  final pulumi.Input<String>? prf;
  /// If this value is enabled, both values of ID payloads in the phase 2 exchange are used as the addresses of end-point of IPsec-SAs
  final pulumi.Input<String>? proxySupport;
  /// Specifies the IP address of the IKE remote node
  final pulumi.Input<String> remoteAddress;
  /// Specifies the replay window size of the IPsec SAs negotiated with the IKE remote node
  final pulumi.Input<int>? replayWindowSize;
  /// Enables or disables this IKE remote node
  final pulumi.Input<String>? state;
  /// Specifies the names of the traffic-selector objects associated with this ike-peer
  final pulumi.Input<List<String>>? trafficSelectors;
  /// Specifies whether to verify the certificate chain of the remote peer based on the trusted certificates in ca-cert-file
  final pulumi.Input<String>? verifyCert;
  /// Specifies which version of IKE to be used
  final pulumi.Input<List<String>>? versions;

  /// Creates a new [NetIkePeerArgs].
  /// [appService] The application service that the object belongs to
  /// [caCertFile] the trusted root and intermediate certificate authorities
  /// [crlFile] Specifies the file name of the Certificate Revocation List. Only supported in IKEv1
  /// [description] User defined description
  /// [dpdDelay] Specifies the number of seconds between Dead Peer Detection messages
  /// [generatePolicy] Enable or disable the generation of Security Policy Database entries(SPD) when the device is the responder of the IKE remote node
  /// [lifetime] Defines the lifetime in minutes of an IKE SA which will be proposed in the phase 1 negotiations
  /// [mode] Defines the exchange mode for phase 1 when racoon is the initiator, or the acceptable exchange mode when racoon is the responder
  /// [myCertFile] Specifies the name of the certificate file object
  /// [myCertKeyFile] Specifies the name of the certificate key file object
  /// [myCertKeyPassphrase] Specifies the passphrase of the key used for my-cert-key-file
  /// [myIdType] Specifies the identifier type sent to the remote host to use in the phase 1 negotiation
  /// [myIdValue] Specifies the identifier value sent to the remote host in the phase 1 negotiation
  /// [name] Name of the ike_peer
  /// [natTraversal] Enables use of the NAT-Traversal IPsec extension
  /// [passive] Specifies whether the local IKE agent can be the initiator of the IKE negotiation with this ike-peer
  /// [peersCertFile] Specifies the peer’s certificate for authentication
  /// [peersCertType] Specifies that the only peers-cert-type supported is certfile
  /// [peersIdType] Specifies which of address, fqdn, asn1dn, user-fqdn or keyid-tag types to use as peers-id-type
  /// [peersIdValue] Specifies the peer’s identifier to be received
  /// [phase1AuthMethod] Specifies the authentication method used for phase 1 negotiation
  /// [phase1EncryptAlgorithm] Specifies the encryption algorithm used for the isakmp phase 1 negotiation
  /// [phase1HashAlgorithm] Defines the hash algorithm used for the isakmp phase 1 negotiation
  /// [phase1PerfectForwardSecrecy] Defines the Diffie-Hellman group for key exchange to provide perfect forward secrecy
  /// [presharedKey] Specifies the preshared key for ISAKMP SAs
  /// [presharedKeyEncrypted] Display the encrypted preshared-key for the IKE remote node
  /// [prf] Specifies the pseudo-random function used to derive keying material for all cryptographic operations
  /// [proxySupport] If this value is enabled, both values of ID payloads in the phase 2 exchange are used as the addresses of end-point of IPsec-SAs
  /// [remoteAddress] Specifies the IP address of the IKE remote node
  /// [replayWindowSize] Specifies the replay window size of the IPsec SAs negotiated with the IKE remote node
  /// [state] Enables or disables this IKE remote node
  /// [trafficSelectors] Specifies the names of the traffic-selector objects associated with this ike-peer
  /// [verifyCert] Specifies whether to verify the certificate chain of the remote peer based on the trusted certificates in ca-cert-file
  /// [versions] Specifies which version of IKE to be used
  NetIkePeerArgs({
    this.appService,
    this.caCertFile,
    this.crlFile,
    this.description,
    this.dpdDelay,
    this.generatePolicy,
    this.lifetime,
    this.mode,
    this.myCertFile,
    this.myCertKeyFile,
    this.myCertKeyPassphrase,
    this.myIdType,
    this.myIdValue,
    required this.name,
    this.natTraversal,
    this.passive,
    this.peersCertFile,
    this.peersCertType,
    this.peersIdType,
    this.peersIdValue,
    this.phase1AuthMethod,
    this.phase1EncryptAlgorithm,
    this.phase1HashAlgorithm,
    this.phase1PerfectForwardSecrecy,
    this.presharedKey,
    this.presharedKeyEncrypted,
    this.prf,
    this.proxySupport,
    required this.remoteAddress,
    this.replayWindowSize,
    this.state,
    this.trafficSelectors,
    this.verifyCert,
    this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appService': ?appService,
      'caCertFile': ?caCertFile,
      'crlFile': ?crlFile,
      'description': ?description,
      'dpdDelay': ?dpdDelay,
      'generatePolicy': ?generatePolicy,
      'lifetime': ?lifetime,
      'mode': ?mode,
      'myCertFile': ?myCertFile,
      'myCertKeyFile': ?myCertKeyFile,
      'myCertKeyPassphrase': ?myCertKeyPassphrase,
      'myIdType': ?myIdType,
      'myIdValue': ?myIdValue,
      'name': name,
      'natTraversal': ?natTraversal,
      'passive': ?passive,
      'peersCertFile': ?peersCertFile,
      'peersCertType': ?peersCertType,
      'peersIdType': ?peersIdType,
      'peersIdValue': ?peersIdValue,
      'phase1AuthMethod': ?phase1AuthMethod,
      'phase1EncryptAlgorithm': ?phase1EncryptAlgorithm,
      'phase1HashAlgorithm': ?phase1HashAlgorithm,
      'phase1PerfectForwardSecrecy': ?phase1PerfectForwardSecrecy,
      'presharedKey': ?presharedKey,
      'presharedKeyEncrypted': ?presharedKeyEncrypted,
      'prf': ?prf,
      'proxySupport': ?proxySupport,
      'remoteAddress': remoteAddress,
      'replayWindowSize': ?replayWindowSize,
      'state': ?state,
      'trafficSelectors': ?trafficSelectors,
      'verifyCert': ?verifyCert,
      'versions': ?versions,
    };
  }

  factory NetIkePeerArgs.fromMap(Map<String, dynamic> map) {
    return NetIkePeerArgs(
      appService: map['appService'] == null ? null : (map['appService'] as String).input(),
      caCertFile: map['caCertFile'] == null ? null : (map['caCertFile'] as String).input(),
      crlFile: map['crlFile'] == null ? null : (map['crlFile'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      dpdDelay: map['dpdDelay'] == null ? null : (map['dpdDelay'] as int).input(),
      generatePolicy: map['generatePolicy'] == null ? null : (map['generatePolicy'] as String).input(),
      lifetime: map['lifetime'] == null ? null : (map['lifetime'] as int).input(),
      mode: map['mode'] == null ? null : (map['mode'] as String).input(),
      myCertFile: map['myCertFile'] == null ? null : (map['myCertFile'] as String).input(),
      myCertKeyFile: map['myCertKeyFile'] == null ? null : (map['myCertKeyFile'] as String).input(),
      myCertKeyPassphrase: map['myCertKeyPassphrase'] == null ? null : (map['myCertKeyPassphrase'] as String).input(),
      myIdType: map['myIdType'] == null ? null : (map['myIdType'] as String).input(),
      myIdValue: map['myIdValue'] == null ? null : (map['myIdValue'] as String).input(),
      name: (map['name'] as String).input(),
      natTraversal: map['natTraversal'] == null ? null : (map['natTraversal'] as String).input(),
      passive: map['passive'] == null ? null : (map['passive'] as String).input(),
      peersCertFile: map['peersCertFile'] == null ? null : (map['peersCertFile'] as String).input(),
      peersCertType: map['peersCertType'] == null ? null : (map['peersCertType'] as String).input(),
      peersIdType: map['peersIdType'] == null ? null : (map['peersIdType'] as String).input(),
      peersIdValue: map['peersIdValue'] == null ? null : (map['peersIdValue'] as String).input(),
      phase1AuthMethod: map['phase1AuthMethod'] == null ? null : (map['phase1AuthMethod'] as String).input(),
      phase1EncryptAlgorithm: map['phase1EncryptAlgorithm'] == null ? null : (map['phase1EncryptAlgorithm'] as String).input(),
      phase1HashAlgorithm: map['phase1HashAlgorithm'] == null ? null : (map['phase1HashAlgorithm'] as String).input(),
      phase1PerfectForwardSecrecy: map['phase1PerfectForwardSecrecy'] == null ? null : (map['phase1PerfectForwardSecrecy'] as String).input(),
      presharedKey: map['presharedKey'] == null ? null : (map['presharedKey'] as String).input(),
      presharedKeyEncrypted: map['presharedKeyEncrypted'] == null ? null : (map['presharedKeyEncrypted'] as String).input(),
      prf: map['prf'] == null ? null : (map['prf'] as String).input(),
      proxySupport: map['proxySupport'] == null ? null : (map['proxySupport'] as String).input(),
      remoteAddress: (map['remoteAddress'] as String).input(),
      replayWindowSize: map['replayWindowSize'] == null ? null : (map['replayWindowSize'] as int).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      trafficSelectors: map['trafficSelectors'] == null ? null : ((map['trafficSelectors'] as List).cast<String>()).input(),
      verifyCert: map['verifyCert'] == null ? null : (map['verifyCert'] as String).input(),
      versions: map['versions'] == null ? null : ((map['versions'] as List).cast<String>()).input(),
    );
  }
}

