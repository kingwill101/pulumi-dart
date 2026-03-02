// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExpressRoutePortLink2 {
  /// Whether enable administration state on the Express Route Port Link? Defaults to `false`.
  final pulumi.Input<bool>? adminEnabled;
  /// The connector type of the Express Route Port Link.
  final pulumi.Input<String>? connectorType;
  /// The ID of this Express Route Port Link.
  final pulumi.Input<String>? id;
  /// The interface name of the Azure router associated with the Express Route Port Link.
  final pulumi.Input<String>? interfaceName;
  /// The ID of the Key Vault Secret that contains the Mac security CAK key for this Express Route Port Link.
  final pulumi.Input<String>? macsecCakKeyvaultSecretId;
  /// The MACSec cipher used for this Express Route Port Link. Possible values are `GcmAes128`, `GcmAes256`, `GcmAesXpn128` and `GcmAesXpn256`. Defaults to `GcmAes128`.
  final pulumi.Input<String>? macsecCipher;
  /// The ID of the Key Vault Secret that contains the MACSec CKN key for this Express Route Port Link.
  final pulumi.Input<String>? macsecCknKeyvaultSecretId;
  /// Should Secure Channel Identifier on the Express Route Port Link be enabled? Defaults to `false`.
  ///
  /// > **Note:** `macsec_ckn_keyvault_secret_id` and `macsec_cak_keyvault_secret_id` should be used together with `identity`, so that the Express Route Port instance have the right permission to access the Key Vault.
  final pulumi.Input<bool>? macsecSciEnabled;
  /// The ID that maps from the Express Route Port Link to the patch panel port.
  final pulumi.Input<String>? patchPanelId;
  /// The ID that maps from the patch panel port to the rack.
  final pulumi.Input<String>? rackId;
  /// The name of the Azure router associated with the Express Route Port Link.
  final pulumi.Input<String>? routerName;

  /// Creates a new [ExpressRoutePortLink2].
  /// [adminEnabled] Whether enable administration state on the Express Route Port Link? Defaults to `false`.
  /// [connectorType] The connector type of the Express Route Port Link.
  /// [id] The ID of this Express Route Port Link.
  /// [interfaceName] The interface name of the Azure router associated with the Express Route Port Link.
  /// [macsecCakKeyvaultSecretId] The ID of the Key Vault Secret that contains the Mac security CAK key for this Express Route Port Link.
  /// [macsecCipher] The MACSec cipher used for this Express Route Port Link. Possible values are `GcmAes128`, `GcmAes256`, `GcmAesXpn128` and `GcmAesXpn256`. Defaults to `GcmAes128`.
  /// [macsecCknKeyvaultSecretId] The ID of the Key Vault Secret that contains the MACSec CKN key for this Express Route Port Link.
  /// [macsecSciEnabled] Should Secure Channel Identifier on the Express Route Port Link be enabled? Defaults to `false`.
  /// [patchPanelId] The ID that maps from the Express Route Port Link to the patch panel port.
  /// [rackId] The ID that maps from the patch panel port to the rack.
  /// [routerName] The name of the Azure router associated with the Express Route Port Link.
  ExpressRoutePortLink2({
    this.adminEnabled,
    this.connectorType,
    this.id,
    this.interfaceName,
    this.macsecCakKeyvaultSecretId,
    this.macsecCipher,
    this.macsecCknKeyvaultSecretId,
    this.macsecSciEnabled,
    this.patchPanelId,
    this.rackId,
    this.routerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminEnabled': ?adminEnabled,
      'connectorType': ?connectorType,
      'id': ?id,
      'interfaceName': ?interfaceName,
      'macsecCakKeyvaultSecretId': ?macsecCakKeyvaultSecretId,
      'macsecCipher': ?macsecCipher,
      'macsecCknKeyvaultSecretId': ?macsecCknKeyvaultSecretId,
      'macsecSciEnabled': ?macsecSciEnabled,
      'patchPanelId': ?patchPanelId,
      'rackId': ?rackId,
      'routerName': ?routerName,
    };
  }

  factory ExpressRoutePortLink2.fromMap(Map<String, dynamic> map) {
    return ExpressRoutePortLink2(
      adminEnabled: map['adminEnabled'] == null ? null : (map['adminEnabled'] as bool).input(),
      connectorType: map['connectorType'] == null ? null : (map['connectorType'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      interfaceName: map['interfaceName'] == null ? null : (map['interfaceName'] as String).input(),
      macsecCakKeyvaultSecretId: map['macsecCakKeyvaultSecretId'] == null ? null : (map['macsecCakKeyvaultSecretId'] as String).input(),
      macsecCipher: map['macsecCipher'] == null ? null : (map['macsecCipher'] as String).input(),
      macsecCknKeyvaultSecretId: map['macsecCknKeyvaultSecretId'] == null ? null : (map['macsecCknKeyvaultSecretId'] as String).input(),
      macsecSciEnabled: map['macsecSciEnabled'] == null ? null : (map['macsecSciEnabled'] as bool).input(),
      patchPanelId: map['patchPanelId'] == null ? null : (map['patchPanelId'] as String).input(),
      rackId: map['rackId'] == null ? null : (map['rackId'] as String).input(),
      routerName: map['routerName'] == null ? null : (map['routerName'] as String).input(),
    );
  }
}

