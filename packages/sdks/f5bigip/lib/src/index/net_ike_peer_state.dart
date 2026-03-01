// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetIkePeer resources.
class NetIkePeerState {
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
  final pulumi.Input<String>? name;
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
  final pulumi.Input<String>? remoteAddress;
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

  /// Creates a new [NetIkePeerState].
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
  NetIkePeerState({
    pulumi.Output<String>? appService,
    pulumi.Output<String>? caCertFile,
    pulumi.Output<String>? crlFile,
    pulumi.Output<String>? description,
    pulumi.Output<int>? dpdDelay,
    pulumi.Output<String>? generatePolicy,
    pulumi.Output<int>? lifetime,
    pulumi.Output<String>? mode,
    pulumi.Output<String>? myCertFile,
    pulumi.Output<String>? myCertKeyFile,
    pulumi.Output<String>? myCertKeyPassphrase,
    pulumi.Output<String>? myIdType,
    pulumi.Output<String>? myIdValue,
    pulumi.Output<String>? name,
    pulumi.Output<String>? natTraversal,
    pulumi.Output<String>? passive,
    pulumi.Output<String>? peersCertFile,
    pulumi.Output<String>? peersCertType,
    pulumi.Output<String>? peersIdType,
    pulumi.Output<String>? peersIdValue,
    pulumi.Output<String>? phase1AuthMethod,
    pulumi.Output<String>? phase1EncryptAlgorithm,
    pulumi.Output<String>? phase1HashAlgorithm,
    pulumi.Output<String>? phase1PerfectForwardSecrecy,
    pulumi.Output<String>? presharedKey,
    pulumi.Output<String>? presharedKeyEncrypted,
    pulumi.Output<String>? prf,
    pulumi.Output<String>? proxySupport,
    pulumi.Output<String>? remoteAddress,
    pulumi.Output<int>? replayWindowSize,
    pulumi.Output<String>? state,
    pulumi.Output<List<String>>? trafficSelectors,
    pulumi.Output<String>? verifyCert,
    pulumi.Output<List<String>>? versions,
  }) :
      appService = pulumi.Input.asOptionalInput<String>(appService),
      caCertFile = pulumi.Input.asOptionalInput<String>(caCertFile),
      crlFile = pulumi.Input.asOptionalInput<String>(crlFile),
      description = pulumi.Input.asOptionalInput<String>(description),
      dpdDelay = pulumi.Input.asOptionalInput<int>(dpdDelay),
      generatePolicy = pulumi.Input.asOptionalInput<String>(generatePolicy),
      lifetime = pulumi.Input.asOptionalInput<int>(lifetime),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      myCertFile = pulumi.Input.asOptionalInput<String>(myCertFile),
      myCertKeyFile = pulumi.Input.asOptionalInput<String>(myCertKeyFile),
      myCertKeyPassphrase = pulumi.Input.asOptionalInput<String>(myCertKeyPassphrase),
      myIdType = pulumi.Input.asOptionalInput<String>(myIdType),
      myIdValue = pulumi.Input.asOptionalInput<String>(myIdValue),
      name = pulumi.Input.asOptionalInput<String>(name),
      natTraversal = pulumi.Input.asOptionalInput<String>(natTraversal),
      passive = pulumi.Input.asOptionalInput<String>(passive),
      peersCertFile = pulumi.Input.asOptionalInput<String>(peersCertFile),
      peersCertType = pulumi.Input.asOptionalInput<String>(peersCertType),
      peersIdType = pulumi.Input.asOptionalInput<String>(peersIdType),
      peersIdValue = pulumi.Input.asOptionalInput<String>(peersIdValue),
      phase1AuthMethod = pulumi.Input.asOptionalInput<String>(phase1AuthMethod),
      phase1EncryptAlgorithm = pulumi.Input.asOptionalInput<String>(phase1EncryptAlgorithm),
      phase1HashAlgorithm = pulumi.Input.asOptionalInput<String>(phase1HashAlgorithm),
      phase1PerfectForwardSecrecy = pulumi.Input.asOptionalInput<String>(phase1PerfectForwardSecrecy),
      presharedKey = pulumi.Input.asOptionalInput<String>(presharedKey),
      presharedKeyEncrypted = pulumi.Input.asOptionalInput<String>(presharedKeyEncrypted),
      prf = pulumi.Input.asOptionalInput<String>(prf),
      proxySupport = pulumi.Input.asOptionalInput<String>(proxySupport),
      remoteAddress = pulumi.Input.asOptionalInput<String>(remoteAddress),
      replayWindowSize = pulumi.Input.asOptionalInput<int>(replayWindowSize),
      state = pulumi.Input.asOptionalInput<String>(state),
      trafficSelectors = pulumi.Input.asOptionalInput<List<String>>(trafficSelectors),
      verifyCert = pulumi.Input.asOptionalInput<String>(verifyCert),
      versions = pulumi.Input.asOptionalInput<List<String>>(versions);

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
      'name': ?name,
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
      'remoteAddress': ?remoteAddress,
      'replayWindowSize': ?replayWindowSize,
      'state': ?state,
      'trafficSelectors': ?trafficSelectors,
      'verifyCert': ?verifyCert,
      'versions': ?versions,
    };
  }

  factory NetIkePeerState.fromMap(Map<String, dynamic> map) {
    return NetIkePeerState(
      appService: map['appService'] == null ? null : pulumi.Output.create<String>(map['appService'] as String),
      caCertFile: map['caCertFile'] == null ? null : pulumi.Output.create<String>(map['caCertFile'] as String),
      crlFile: map['crlFile'] == null ? null : pulumi.Output.create<String>(map['crlFile'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dpdDelay: map['dpdDelay'] == null ? null : pulumi.Output.create<int>(map['dpdDelay'] as int),
      generatePolicy: map['generatePolicy'] == null ? null : pulumi.Output.create<String>(map['generatePolicy'] as String),
      lifetime: map['lifetime'] == null ? null : pulumi.Output.create<int>(map['lifetime'] as int),
      mode: map['mode'] == null ? null : pulumi.Output.create<String>(map['mode'] as String),
      myCertFile: map['myCertFile'] == null ? null : pulumi.Output.create<String>(map['myCertFile'] as String),
      myCertKeyFile: map['myCertKeyFile'] == null ? null : pulumi.Output.create<String>(map['myCertKeyFile'] as String),
      myCertKeyPassphrase: map['myCertKeyPassphrase'] == null ? null : pulumi.Output.create<String>(map['myCertKeyPassphrase'] as String),
      myIdType: map['myIdType'] == null ? null : pulumi.Output.create<String>(map['myIdType'] as String),
      myIdValue: map['myIdValue'] == null ? null : pulumi.Output.create<String>(map['myIdValue'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      natTraversal: map['natTraversal'] == null ? null : pulumi.Output.create<String>(map['natTraversal'] as String),
      passive: map['passive'] == null ? null : pulumi.Output.create<String>(map['passive'] as String),
      peersCertFile: map['peersCertFile'] == null ? null : pulumi.Output.create<String>(map['peersCertFile'] as String),
      peersCertType: map['peersCertType'] == null ? null : pulumi.Output.create<String>(map['peersCertType'] as String),
      peersIdType: map['peersIdType'] == null ? null : pulumi.Output.create<String>(map['peersIdType'] as String),
      peersIdValue: map['peersIdValue'] == null ? null : pulumi.Output.create<String>(map['peersIdValue'] as String),
      phase1AuthMethod: map['phase1AuthMethod'] == null ? null : pulumi.Output.create<String>(map['phase1AuthMethod'] as String),
      phase1EncryptAlgorithm: map['phase1EncryptAlgorithm'] == null ? null : pulumi.Output.create<String>(map['phase1EncryptAlgorithm'] as String),
      phase1HashAlgorithm: map['phase1HashAlgorithm'] == null ? null : pulumi.Output.create<String>(map['phase1HashAlgorithm'] as String),
      phase1PerfectForwardSecrecy: map['phase1PerfectForwardSecrecy'] == null ? null : pulumi.Output.create<String>(map['phase1PerfectForwardSecrecy'] as String),
      presharedKey: map['presharedKey'] == null ? null : pulumi.Output.create<String>(map['presharedKey'] as String),
      presharedKeyEncrypted: map['presharedKeyEncrypted'] == null ? null : pulumi.Output.create<String>(map['presharedKeyEncrypted'] as String),
      prf: map['prf'] == null ? null : pulumi.Output.create<String>(map['prf'] as String),
      proxySupport: map['proxySupport'] == null ? null : pulumi.Output.create<String>(map['proxySupport'] as String),
      remoteAddress: map['remoteAddress'] == null ? null : pulumi.Output.create<String>(map['remoteAddress'] as String),
      replayWindowSize: map['replayWindowSize'] == null ? null : pulumi.Output.create<int>(map['replayWindowSize'] as int),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      trafficSelectors: map['trafficSelectors'] == null ? null : pulumi.Output.create<List<String>>((map['trafficSelectors'] as List).cast<String>()),
      verifyCert: map['verifyCert'] == null ? null : pulumi.Output.create<String>(map['verifyCert'] as String),
      versions: map['versions'] == null ? null : pulumi.Output.create<List<String>>((map['versions'] as List).cast<String>()),
    );
  }
}

