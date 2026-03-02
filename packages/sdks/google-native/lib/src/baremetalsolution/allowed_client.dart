// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allowed_client_mount_permissions.dart';

/// Represents an 'access point' for the share.
class AllowedClient {
  /// Allow dev flag. Which controls whether to allow creation of devices.
  final pulumi.Input<bool>? allowDev;
  /// Allow the setuid flag.
  final pulumi.Input<bool>? allowSuid;
  /// The subnet of IP addresses permitted to access the share.
  final pulumi.Input<String>? allowedClientsCidr;
  /// Mount permissions.
  final pulumi.Input<AllowedClientMountPermissions>? mountPermissions;
  /// The network the access point sits on.
  final pulumi.Input<String>? network;
  /// Disable root squashing, which is a feature of NFS. Root squash is a special mapping of the remote superuser (root) identity when using identity authentication.
  final pulumi.Input<bool>? noRootSquash;

  /// Creates a new [AllowedClient].
  /// [allowDev] Allow dev flag. Which controls whether to allow creation of devices.
  /// [allowSuid] Allow the setuid flag.
  /// [allowedClientsCidr] The subnet of IP addresses permitted to access the share.
  /// [mountPermissions] Mount permissions.
  /// [network] The network the access point sits on.
  /// [noRootSquash] Disable root squashing, which is a feature of NFS. Root squash is a special mapping of the remote superuser (root) identity when using identity authentication.
  AllowedClient({
    this.allowDev,
    this.allowSuid,
    this.allowedClientsCidr,
    this.mountPermissions,
    this.network,
    this.noRootSquash,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowDev': ?allowDev,
      'allowSuid': ?allowSuid,
      'allowedClientsCidr': ?allowedClientsCidr,
      'mountPermissions': ?pulumi.Input.mapOptionalInputValue<AllowedClientMountPermissions, String>(mountPermissions, (value) => value.value),
      'network': ?network,
      'noRootSquash': ?noRootSquash,
    };
  }

  factory AllowedClient.fromMap(Map<String, dynamic> map) {
    return AllowedClient(
      allowDev: map['allowDev'] == null ? null : (map['allowDev']! as bool).input(),
      allowSuid: map['allowSuid'] == null ? null : (map['allowSuid']! as bool).input(),
      allowedClientsCidr: map['allowedClientsCidr'] == null ? null : (map['allowedClientsCidr']! as String).input(),
      mountPermissions: map['mountPermissions'] == null ? null : (AllowedClientMountPermissions.fromValue(map['mountPermissions']! as String)).input(),
      network: map['network'] == null ? null : (map['network']! as String).input(),
      noRootSquash: map['noRootSquash'] == null ? null : (map['noRootSquash']! as bool).input(),
    );
  }
}

