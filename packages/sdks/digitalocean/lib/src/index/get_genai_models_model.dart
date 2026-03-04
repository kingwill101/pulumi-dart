// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_models_model_agreement.dart';
import 'get_genai_models_model_version.dart';

class GetGenaiModelsModel {
  /// Agreement information for the model
  final pulumi.Input<List<GetGenaiModelsModelAgreement>> agreements;

  /// Created At timestamp for the Knowledge Base
  final pulumi.Input<String> createdAt;

  /// ID of the Knowledge Base
  final pulumi.Input<String> id;

  /// Indicates if the Model Base is foundational
  final pulumi.Input<bool> isFoundational;

  /// Name of the Knowledge Base
  final pulumi.Input<String> name;

  /// Parent UUID of the Model
  final pulumi.Input<String> parentUuid;

  /// Timestamp when the Knowledge Base was updated
  final pulumi.Input<String> updatedAt;

  /// Indicates if the Model upload is complete
  final pulumi.Input<bool> uploadComplete;

  /// URL of the Model
  final pulumi.Input<String> url;

  /// UUID of the Model
  final pulumi.Input<String> uuid;

  /// List of Versions for the Model
  final pulumi.Input<List<GetGenaiModelsModelVersion>> versions;

  /// Creates a new [GetGenaiModelsModel].
  /// [agreements] Agreement information for the model
  /// [createdAt] Created At timestamp for the Knowledge Base
  /// [id] ID of the Knowledge Base
  /// [isFoundational] Indicates if the Model Base is foundational
  /// [name] Name of the Knowledge Base
  /// [parentUuid] Parent UUID of the Model
  /// [updatedAt] Timestamp when the Knowledge Base was updated
  /// [uploadComplete] Indicates if the Model upload is complete
  /// [url] URL of the Model
  /// [uuid] UUID of the Model
  /// [versions] List of Versions for the Model
  GetGenaiModelsModel({
    required this.agreements,
    required this.createdAt,
    required this.id,
    required this.isFoundational,
    required this.name,
    required this.parentUuid,
    required this.updatedAt,
    required this.uploadComplete,
    required this.url,
    required this.uuid,
    required this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agreements':
          pulumi.Input.mapInputValue<
            List<GetGenaiModelsModelAgreement>,
            List<Map<String, dynamic>>
          >(
            agreements,
            (value) =>
                pulumi.Input.encodeList<
                  GetGenaiModelsModelAgreement,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'createdAt': createdAt,
      'id': id,
      'isFoundational': isFoundational,
      'name': name,
      'parentUuid': parentUuid,
      'updatedAt': updatedAt,
      'uploadComplete': uploadComplete,
      'url': url,
      'uuid': uuid,
      'versions':
          pulumi.Input.mapInputValue<
            List<GetGenaiModelsModelVersion>,
            List<Map<String, dynamic>>
          >(
            versions,
            (value) =>
                pulumi.Input.encodeList<
                  GetGenaiModelsModelVersion,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetGenaiModelsModel.fromMap(Map<String, dynamic> map) {
    return GetGenaiModelsModel(
      agreements: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetGenaiModelsModelAgreement>(
          map['agreements']!,
          (value) => GetGenaiModelsModelAgreement.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      isFoundational: pulumi.Input.fromValue(map['isFoundational'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      parentUuid: pulumi.Input.fromValue(map['parentUuid'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
      uploadComplete: pulumi.Input.fromValue(map['uploadComplete'] as bool),
      url: pulumi.Input.fromValue(map['url'] as String),
      uuid: pulumi.Input.fromValue(map['uuid'] as String),
      versions: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetGenaiModelsModelVersion>(
          map['versions']!,
          (value) => GetGenaiModelsModelVersion.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
