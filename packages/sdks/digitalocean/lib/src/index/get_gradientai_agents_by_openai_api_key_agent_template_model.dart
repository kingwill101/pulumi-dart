// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_agents_by_openai_api_key_agent_template_model_agreement.dart';
import 'get_gradientai_agents_by_openai_api_key_agent_template_model_version.dart';

class GetGradientaiAgentsByOpenaiApiKeyAgentTemplateModel {
  /// Agreement information for the model
  final pulumi.Input<List<GetGradientaiAgentsByOpenaiApiKeyAgentTemplateModelAgreement>>? agreements;
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
  final pulumi.Input<List<GetGradientaiAgentsByOpenaiApiKeyAgentTemplateModelVersion>>? versions;

  /// Creates a new [GetGradientaiAgentsByOpenaiApiKeyAgentTemplateModel].
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
  const GetGradientaiAgentsByOpenaiApiKeyAgentTemplateModel({
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
      'agreements': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentsByOpenaiApiKeyAgentTemplateModelAgreement>, List<Map<String, dynamic>>>(agreements, (value) => pulumi.Input.encodeList<GetGradientaiAgentsByOpenaiApiKeyAgentTemplateModelAgreement, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      'versions': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentsByOpenaiApiKeyAgentTemplateModelVersion>, List<Map<String, dynamic>>>(versions, (value) => pulumi.Input.encodeList<GetGradientaiAgentsByOpenaiApiKeyAgentTemplateModelVersion, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetGradientaiAgentsByOpenaiApiKeyAgentTemplateModel.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsByOpenaiApiKeyAgentTemplateModel(
      agreements: (() { final guardedValue = map['agreements']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetGradientaiAgentsByOpenaiApiKeyAgentTemplateModelAgreement>(guardedValue, (value) => GetGradientaiAgentsByOpenaiApiKeyAgentTemplateModelAgreement.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      inferenceName: (() { final guardedValue = map['inferenceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inferenceVersion: (() { final guardedValue = map['inferenceVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isFoundational: (() { final guardedValue = map['isFoundational']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentUuid: (() { final guardedValue = map['parentUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provider: (() { final guardedValue = map['provider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
      uploadComplete: (() { final guardedValue = map['uploadComplete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usecases: (() { final guardedValue = map['usecases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      versions: (() { final guardedValue = map['versions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetGradientaiAgentsByOpenaiApiKeyAgentTemplateModelVersion>(guardedValue, (value) => GetGradientaiAgentsByOpenaiApiKeyAgentTemplateModelVersion.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
