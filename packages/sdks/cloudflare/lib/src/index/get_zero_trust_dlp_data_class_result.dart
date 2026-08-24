// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dlp_data_class_sensitivity_level.dart';

/// Result data returned by getZeroTrustDlpDataClass.
class GetZeroTrustDlpDataClassResult {
  final String? accountId;
  final String? createdAt;
  final String? dataClassId;
  final List<String>? dataTags;
  final String? description;
  final String? expression;
  /// The ID of this resource.
  final String? id;
  final String? name;
  final List<GetZeroTrustDlpDataClassSensitivityLevel>? sensitivityLevels;
  final String? updatedAt;

  /// Creates a new [GetZeroTrustDlpDataClassResult].
  /// [accountId] Optional.
  /// [createdAt] Optional.
  /// [dataClassId] Optional.
  /// [dataTags] Optional.
  /// [description] Optional.
  /// [expression] Optional.
  /// [id] The ID of this resource.
  /// [name] Optional.
  /// [sensitivityLevels] Optional.
  /// [updatedAt] Optional.
  const GetZeroTrustDlpDataClassResult({
    this.accountId,
    this.createdAt,
    this.dataClassId,
    this.dataTags,
    this.description,
    this.expression,
    this.id,
    this.name,
    this.sensitivityLevels,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'dataClassId': ?dataClassId,
      'dataTags': ?dataTags,
      'description': ?description,
      'expression': ?expression,
      'id': ?id,
      'name': ?name,
      'sensitivityLevels': ?(() { final guardedValue = sensitivityLevels; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDlpDataClassSensitivityLevel, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'updatedAt': ?updatedAt,
    };
  }

  factory GetZeroTrustDlpDataClassResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpDataClassResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataClassId: (() { final guardedValue = map['dataClassId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataTags: (() { final guardedValue = map['dataTags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sensitivityLevels: (() { final guardedValue = map['sensitivityLevels']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDlpDataClassSensitivityLevel>(guardedValue, (value) => GetZeroTrustDlpDataClassSensitivityLevel.fromMap((value as Map).cast<String, dynamic>())); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
