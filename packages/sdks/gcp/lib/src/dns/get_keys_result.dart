// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_keys_key_signing_key.dart';
import 'get_keys_zone_signing_key.dart';

/// Result data returned by getKeys.
class GetKeysResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A list of Key-signing key (KSK) records. Structure is documented below. Additionally, the DS record is provided:
  final List<GetKeysKeySigningKey>? keySigningKeys;
  final String? managedZone;
  final String? project;
  /// A list of Zone-signing key (ZSK) records. Structure is documented below.
  final List<GetKeysZoneSigningKey>? zoneSigningKeys;

  /// Creates a new [GetKeysResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keySigningKeys] A list of Key-signing key (KSK) records. Structure is documented below. Additionally, the DS record is provided:
  /// [managedZone] Optional.
  /// [project] Optional.
  /// [zoneSigningKeys] A list of Zone-signing key (ZSK) records. Structure is documented below.
  const GetKeysResult({
    this.id,
    this.keySigningKeys,
    this.managedZone,
    this.project,
    this.zoneSigningKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'keySigningKeys': ?(() { final guardedValue = keySigningKeys; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKeysKeySigningKey, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'managedZone': ?managedZone,
      'project': ?project,
      'zoneSigningKeys': ?(() { final guardedValue = zoneSigningKeys; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKeysZoneSigningKey, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetKeysResult.fromMap(Map<String, dynamic> map) {
    return GetKeysResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keySigningKeys: (() { final guardedValue = map['keySigningKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKeysKeySigningKey>(guardedValue, (value) => GetKeysKeySigningKey.fromMap((value as Map).cast<String, dynamic>())); })(),
      managedZone: (() { final guardedValue = map['managedZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneSigningKeys: (() { final guardedValue = map['zoneSigningKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKeysZoneSigningKey>(guardedValue, (value) => GetKeysZoneSigningKey.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
