// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_models_model_agreement.dart';
import 'get_genai_models_model_version.dart';

class GetGenaiModelsModel {
  /// Agreement information for the model
  final List<GetGenaiModelsModelAgreement> agreements;
  /// Created At timestamp for the Knowledge Base
  final String createdAt;
  /// ID of the Knowledge Base
  final String id;
  /// Indicates if the Model Base is foundational
  final bool isFoundational;
  /// Name of the Knowledge Base
  final String name;
  /// Parent UUID of the Model
  final String parentUuid;
  /// Timestamp when the Knowledge Base was updated
  final String updatedAt;
  /// Indicates if the Model upload is complete
  final bool uploadComplete;
  /// URL of the Model
  final String url;
  /// UUID of the Model
  final String uuid;
  /// List of Versions for the Model
  final List<GetGenaiModelsModelVersion> versions;

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
      'agreements': pulumi.Input.encodeList<GetGenaiModelsModelAgreement, Map<String, dynamic>>(agreements, (value) => value.toMap()),
      'createdAt': createdAt,
      'id': id,
      'isFoundational': isFoundational,
      'name': name,
      'parentUuid': parentUuid,
      'updatedAt': updatedAt,
      'uploadComplete': uploadComplete,
      'url': url,
      'uuid': uuid,
      'versions': pulumi.Input.encodeList<GetGenaiModelsModelVersion, Map<String, dynamic>>(versions, (value) => value.toMap()),
    };
  }

  factory GetGenaiModelsModel.fromMap(Map<String, dynamic> map) {
    return GetGenaiModelsModel(
      agreements: pulumi.Input.decodeList<GetGenaiModelsModelAgreement>(map['agreements'], (value) => GetGenaiModelsModelAgreement.fromMap((value as Map).cast<String, dynamic>())),
      createdAt: map['createdAt'] as String,
      id: map['id'] as String,
      isFoundational: map['isFoundational'] as bool,
      name: map['name'] as String,
      parentUuid: map['parentUuid'] as String,
      updatedAt: map['updatedAt'] as String,
      uploadComplete: map['uploadComplete'] as bool,
      url: map['url'] as String,
      uuid: map['uuid'] as String,
      versions: pulumi.Input.decodeList<GetGenaiModelsModelVersion>(map['versions'], (value) => GetGenaiModelsModelVersion.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

