// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_openai_api_key_model.dart';

/// Result data returned by getGenaiOpenaiApiKey.
class GetGenaiOpenaiApiKeyResult {
  final String? createdAt;
  final String? createdBy;
  final String? deletedAt;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetGenaiOpenaiApiKeyModel>? models;
  final String? name;
  final String? updatedAt;
  final String? uuid;

  /// Creates a new [GetGenaiOpenaiApiKeyResult].
  /// [createdAt] Optional.
  /// [createdBy] Optional.
  /// [deletedAt] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [models] Optional.
  /// [name] Optional.
  /// [updatedAt] Optional.
  /// [uuid] Optional.
  const GetGenaiOpenaiApiKeyResult({
    this.createdAt,
    this.createdBy,
    this.deletedAt,
    this.id,
    this.models,
    this.name,
    this.updatedAt,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'createdBy': ?createdBy,
      'deletedAt': ?deletedAt,
      'id': ?id,
      'models': ?(() { final guardedValue = models; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGenaiOpenaiApiKeyModel, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'updatedAt': ?updatedAt,
      'uuid': ?uuid,
    };
  }

  factory GetGenaiOpenaiApiKeyResult.fromMap(Map<String, dynamic> map) {
    return GetGenaiOpenaiApiKeyResult(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletedAt: (() { final guardedValue = map['deletedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      models: (() { final guardedValue = map['models']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGenaiOpenaiApiKeyModel>(guardedValue, (value) => GetGenaiOpenaiApiKeyModel.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
