// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_exascale_db_storage_vaults_exascale_db_storage_vault.dart';

/// Result data returned by getExascaleDbStorageVaults.
class GetExascaleDbStorageVaultsResult {
  /// A list of ExascaleDbStorageVaults. See gcp.oracledatabase.ExascaleDbStorageVault resource for details of the available attributes.
  final List<GetExascaleDbStorageVaultsExascaleDbStorageVault>? exascaleDbStorageVaults;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? project;

  /// Creates a new [GetExascaleDbStorageVaultsResult].
  /// [exascaleDbStorageVaults] A list of ExascaleDbStorageVaults. See gcp.oracledatabase.ExascaleDbStorageVault resource for details of the available attributes.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [project] Optional.
  const GetExascaleDbStorageVaultsResult({
    this.exascaleDbStorageVaults,
    this.id,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exascaleDbStorageVaults': ?(() { final guardedValue = exascaleDbStorageVaults; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetExascaleDbStorageVaultsExascaleDbStorageVault, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetExascaleDbStorageVaultsResult.fromMap(Map<String, dynamic> map) {
    return GetExascaleDbStorageVaultsResult(
      exascaleDbStorageVaults: (() { final guardedValue = map['exascaleDbStorageVaults']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetExascaleDbStorageVaultsExascaleDbStorageVault>(guardedValue, (value) => GetExascaleDbStorageVaultsExascaleDbStorageVault.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
