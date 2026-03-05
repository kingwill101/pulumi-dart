// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents an 'access point' for the share.
class AllowedClientResponse {
  /// Allow dev flag. Which controls whether to allow creation of devices.
  final pulumi.Input<bool> allowDev;
  /// Allow the setuid flag.
  final pulumi.Input<bool> allowSuid;
  /// The subnet of IP addresses permitted to access the share.
  final pulumi.Input<String> allowedClientsCidr;
  /// Mount permissions.
  final pulumi.Input<String> mountPermissions;
  /// The network the access point sits on.
  final pulumi.Input<String> network;
  /// The path to access NFS, in format shareIP:/InstanceID InstanceID is the generated ID instead of customer provided name. example like "10.0.0.0:/g123456789-nfs001"
  final pulumi.Input<String> nfsPath;
  /// Disable root squashing, which is a feature of NFS. Root squash is a special mapping of the remote superuser (root) identity when using identity authentication.
  final pulumi.Input<bool> noRootSquash;
  /// The IP address of the share on this network. Assigned automatically during provisioning based on the network's services_cidr.
  final pulumi.Input<String> shareIp;

  /// Creates a new [AllowedClientResponse].
  /// [allowDev] Allow dev flag. Which controls whether to allow creation of devices.
  /// [allowSuid] Allow the setuid flag.
  /// [allowedClientsCidr] The subnet of IP addresses permitted to access the share.
  /// [mountPermissions] Mount permissions.
  /// [network] The network the access point sits on.
  /// [nfsPath] The path to access NFS, in format shareIP:/InstanceID InstanceID is the generated ID instead of customer provided name. example like "10.0.0.0:/g123456789-nfs001"
  /// [noRootSquash] Disable root squashing, which is a feature of NFS. Root squash is a special mapping of the remote superuser (root) identity when using identity authentication.
  /// [shareIp] The IP address of the share on this network. Assigned automatically during provisioning based on the network's services_cidr.
  AllowedClientResponse({
    required this.allowDev,
    required this.allowSuid,
    required this.allowedClientsCidr,
    required this.mountPermissions,
    required this.network,
    required this.nfsPath,
    required this.noRootSquash,
    required this.shareIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowDev': allowDev,
      'allowSuid': allowSuid,
      'allowedClientsCidr': allowedClientsCidr,
      'mountPermissions': mountPermissions,
      'network': network,
      'nfsPath': nfsPath,
      'noRootSquash': noRootSquash,
      'shareIp': shareIp,
    };
  }

  factory AllowedClientResponse.fromMap(Map<String, dynamic> map) {
    return AllowedClientResponse(
      allowDev: pulumi.Input.fromValue(map['allowDev'] as bool),
      allowSuid: pulumi.Input.fromValue(map['allowSuid'] as bool),
      allowedClientsCidr: pulumi.Input.fromValue(map['allowedClientsCidr'] as String),
      mountPermissions: pulumi.Input.fromValue(map['mountPermissions'] as String),
      network: pulumi.Input.fromValue(map['network'] as String),
      nfsPath: pulumi.Input.fromValue(map['nfsPath'] as String),
      noRootSquash: pulumi.Input.fromValue(map['noRootSquash'] as bool),
      shareIp: pulumi.Input.fromValue(map['shareIp'] as String),
    );
  }
}

