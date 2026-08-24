// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dlp_sensitivity_group_level.dart';

/// Result data returned by getZeroTrustDlpSensitivityGroup.
class GetZeroTrustDlpSensitivityGroupResult {
  final String? accountId;
  final String? createdAt;
  final String? description;
  /// The ID of this resource.
  final String? id;
  final List<GetZeroTrustDlpSensitivityGroupLevel>? levels;
  final String? name;
  final String? sensitivityGroupId;
  final String? templateId;
  final String? updatedAt;

  /// Creates a new [GetZeroTrustDlpSensitivityGroupResult].
  /// [accountId] Optional.
  /// [createdAt] Optional.
  /// [description] Optional.
  /// [id] The ID of this resource.
  /// [levels] Optional.
  /// [name] Optional.
  /// [sensitivityGroupId] Optional.
  /// [templateId] Optional.
  /// [updatedAt] Optional.
  const GetZeroTrustDlpSensitivityGroupResult({
    this.accountId,
    this.createdAt,
    this.description,
    this.id,
    this.levels,
    this.name,
    this.sensitivityGroupId,
    this.templateId,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'description': ?description,
      'id': ?id,
      'levels': ?(() { final guardedValue = levels; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDlpSensitivityGroupLevel, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'sensitivityGroupId': ?sensitivityGroupId,
      'templateId': ?templateId,
      'updatedAt': ?updatedAt,
    };
  }

  factory GetZeroTrustDlpSensitivityGroupResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpSensitivityGroupResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      levels: (() { final guardedValue = map['levels']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDlpSensitivityGroupLevel>(guardedValue, (value) => GetZeroTrustDlpSensitivityGroupLevel.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sensitivityGroupId: (() { final guardedValue = map['sensitivityGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      templateId: (() { final guardedValue = map['templateId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
