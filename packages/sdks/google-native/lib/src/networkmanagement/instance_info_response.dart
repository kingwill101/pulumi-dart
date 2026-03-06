// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// For display only. Metadata associated with a Compute Engine instance.
class InstanceInfoResponse {
  /// Name of a Compute Engine instance.
  final pulumi.Input<String> displayName;
  /// External IP address of the network interface.
  final pulumi.Input<String> externalIp;
  /// Name of the network interface of a Compute Engine instance.
  final pulumi.Input<String> interface;
  /// Internal IP address of the network interface.
  final pulumi.Input<String> internalIp;
  /// Network tags configured on the instance.
  final pulumi.Input<List<String>> networkTags;
  /// URI of a Compute Engine network.
  final pulumi.Input<String> networkUri;
  /// Service account authorized for the instance.
  final pulumi.Input<String> serviceAccount;
  /// URI of a Compute Engine instance.
  final pulumi.Input<String> uri;

  /// Creates a new [InstanceInfoResponse].
  /// [displayName] Name of a Compute Engine instance.
  /// [externalIp] External IP address of the network interface.
  /// [interface] Name of the network interface of a Compute Engine instance.
  /// [internalIp] Internal IP address of the network interface.
  /// [networkTags] Network tags configured on the instance.
  /// [networkUri] URI of a Compute Engine network.
  /// [serviceAccount] Service account authorized for the instance.
  /// [uri] URI of a Compute Engine instance.
  const InstanceInfoResponse({
    required this.displayName,
    required this.externalIp,
    required this.interface,
    required this.internalIp,
    required this.networkTags,
    required this.networkUri,
    required this.serviceAccount,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'externalIp': externalIp,
      'interface': interface,
      'internalIp': internalIp,
      'networkTags': networkTags,
      'networkUri': networkUri,
      'serviceAccount': serviceAccount,
      'uri': uri,
    };
  }

  factory InstanceInfoResponse.fromMap(Map<String, dynamic> map) {
    return InstanceInfoResponse(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      externalIp: pulumi.Input.fromValue(map['externalIp'] as String),
      interface: pulumi.Input.fromValue(map['interface'] as String),
      internalIp: pulumi.Input.fromValue(map['internalIp'] as String),
      networkTags: pulumi.Input.fromValue((map['networkTags'] as List).cast<String>()),
      networkUri: pulumi.Input.fromValue(map['networkUri'] as String),
      serviceAccount: pulumi.Input.fromValue(map['serviceAccount'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}

