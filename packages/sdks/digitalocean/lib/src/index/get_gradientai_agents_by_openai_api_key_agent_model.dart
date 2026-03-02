// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_agents_by_openai_api_key_agent_model_agreement.dart';
import 'get_gradientai_agents_by_openai_api_key_agent_model_version.dart';

class GetGradientaiAgentsByOpenaiApiKeyAgentModel {
  /// Agreement information for the model
  final pulumi.Input<List<GetGradientaiAgentsByOpenaiApiKeyAgentModelAgreement>>? agreements;
  /// Created At timestamp for the Knowledge Base
  final pulumi.Input<String> createdAt;
  /// Inference name of the model
  final pulumi.Input<String>? inferenceName;
  /// Infernce version of the model
  final pulumi.Input<String>? inferenceVersion;
  /// Indicates if the Model Base is foundational
  final pulumi.Input<bool>? isFoundational;
  /// Name of the Knowledge Base
  final pulumi.Input<String>? name;
  /// Parent UUID of the Model
  final pulumi.Input<String>? parentUuid;
  /// Provider of the Model
  final pulumi.Input<String>? provider;
  /// Timestamp when the Knowledge Base was updated
  final pulumi.Input<String> updatedAt;
  /// Indicates if the Model upload is complete
  final pulumi.Input<bool>? uploadComplete;
  /// URL of the Model
  final pulumi.Input<String>? url;
  /// List of Usecases for the Model
  final pulumi.Input<List<String>>? usecases;
  /// URL of the Model
  final pulumi.Input<List<GetGradientaiAgentsByOpenaiApiKeyAgentModelVersion>>? versions;

  /// Creates a new [GetGradientaiAgentsByOpenaiApiKeyAgentModel].
  /// [agreements] Agreement information for the model
  /// [createdAt] Created At timestamp for the Knowledge Base
  /// [inferenceName] Inference name of the model
  /// [inferenceVersion] Infernce version of the model
  /// [isFoundational] Indicates if the Model Base is foundational
  /// [name] Name of the Knowledge Base
  /// [parentUuid] Parent UUID of the Model
  /// [provider] Provider of the Model
  /// [updatedAt] Timestamp when the Knowledge Base was updated
  /// [uploadComplete] Indicates if the Model upload is complete
  /// [url] URL of the Model
  /// [usecases] List of Usecases for the Model
  /// [versions] URL of the Model
  GetGradientaiAgentsByOpenaiApiKeyAgentModel({
    this.agreements,
    required this.createdAt,
    this.inferenceName,
    this.inferenceVersion,
    this.isFoundational,
    this.name,
    this.parentUuid,
    this.provider,
    required this.updatedAt,
    this.uploadComplete,
    this.url,
    this.usecases,
    this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agreements': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentsByOpenaiApiKeyAgentModelAgreement>, List<Map<String, dynamic>>>(agreements, (value) => pulumi.Input.encodeList<GetGradientaiAgentsByOpenaiApiKeyAgentModelAgreement, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createdAt': createdAt,
      'inferenceName': ?inferenceName,
      'inferenceVersion': ?inferenceVersion,
      'isFoundational': ?isFoundational,
      'name': ?name,
      'parentUuid': ?parentUuid,
      'provider': ?provider,
      'updatedAt': updatedAt,
      'uploadComplete': ?uploadComplete,
      'url': ?url,
      'usecases': ?usecases,
      'versions': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentsByOpenaiApiKeyAgentModelVersion>, List<Map<String, dynamic>>>(versions, (value) => pulumi.Input.encodeList<GetGradientaiAgentsByOpenaiApiKeyAgentModelVersion, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetGradientaiAgentsByOpenaiApiKeyAgentModel.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsByOpenaiApiKeyAgentModel(
      agreements: map['agreements'] == null ? null : (pulumi.Input.decodeList<GetGradientaiAgentsByOpenaiApiKeyAgentModelAgreement>(map['agreements']!, (value) => GetGradientaiAgentsByOpenaiApiKeyAgentModelAgreement.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createdAt: (map['createdAt'] as String).input(),
      inferenceName: map['inferenceName'] == null ? null : (map['inferenceName']! as String).input(),
      inferenceVersion: map['inferenceVersion'] == null ? null : (map['inferenceVersion']! as String).input(),
      isFoundational: map['isFoundational'] == null ? null : (map['isFoundational']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      parentUuid: map['parentUuid'] == null ? null : (map['parentUuid']! as String).input(),
      provider: map['provider'] == null ? null : (map['provider']! as String).input(),
      updatedAt: (map['updatedAt'] as String).input(),
      uploadComplete: map['uploadComplete'] == null ? null : (map['uploadComplete']! as bool).input(),
      url: map['url'] == null ? null : (map['url']! as String).input(),
      usecases: map['usecases'] == null ? null : ((map['usecases']! as List).cast<String>()).input(),
      versions: map['versions'] == null ? null : (pulumi.Input.decodeList<GetGradientaiAgentsByOpenaiApiKeyAgentModelVersion>(map['versions']!, (value) => GetGradientaiAgentsByOpenaiApiKeyAgentModelVersion.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

