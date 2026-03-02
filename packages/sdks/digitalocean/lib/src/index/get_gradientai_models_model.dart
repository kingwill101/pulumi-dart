// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_models_model_agreement.dart';
import 'get_gradientai_models_model_version.dart';

class GetGradientaiModelsModel {
  /// Agreement information for the model
  final pulumi.Input<List<GetGradientaiModelsModelAgreement>> agreements;
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
  final pulumi.Input<List<GetGradientaiModelsModelVersion>> versions;

  /// Creates a new [GetGradientaiModelsModel].
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
  GetGradientaiModelsModel({
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
      'agreements': pulumi.Input.mapInputValue<List<GetGradientaiModelsModelAgreement>, List<Map<String, dynamic>>>(agreements, (value) => pulumi.Input.encodeList<GetGradientaiModelsModelAgreement, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createdAt': createdAt,
      'id': id,
      'isFoundational': isFoundational,
      'name': name,
      'parentUuid': parentUuid,
      'updatedAt': updatedAt,
      'uploadComplete': uploadComplete,
      'url': url,
      'uuid': uuid,
      'versions': pulumi.Input.mapInputValue<List<GetGradientaiModelsModelVersion>, List<Map<String, dynamic>>>(versions, (value) => pulumi.Input.encodeList<GetGradientaiModelsModelVersion, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetGradientaiModelsModel.fromMap(Map<String, dynamic> map) {
    return GetGradientaiModelsModel(
      agreements: (pulumi.Input.decodeList<GetGradientaiModelsModelAgreement>(map['agreements'], (value) => GetGradientaiModelsModelAgreement.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createdAt: (map['createdAt'] as String).input(),
      id: (map['id'] as String).input(),
      isFoundational: (map['isFoundational'] as bool).input(),
      name: (map['name'] as String).input(),
      parentUuid: (map['parentUuid'] as String).input(),
      updatedAt: (map['updatedAt'] as String).input(),
      uploadComplete: (map['uploadComplete'] as bool).input(),
      url: (map['url'] as String).input(),
      uuid: (map['uuid'] as String).input(),
      versions: (pulumi.Input.decodeList<GetGradientaiModelsModelVersion>(map['versions'], (value) => GetGradientaiModelsModelVersion.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

