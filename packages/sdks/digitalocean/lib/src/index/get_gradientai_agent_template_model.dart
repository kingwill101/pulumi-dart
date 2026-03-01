// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_agent_template_model_agreement.dart';
import 'get_gradientai_agent_template_model_version.dart';

class GetGradientaiAgentTemplateModel {
  /// Agreement information for the model
  final List<GetGradientaiAgentTemplateModelAgreement>? agreements;
  /// Created At timestamp for the Knowledge Base
  final String createdAt;
  /// Inference name of the model
  final String? inferenceName;
  /// Infernce version of the model
  final String? inferenceVersion;
  /// Indicates if the Model Base is foundational
  final bool? isFoundational;
  /// Name of the Knowledge Base
  final String? name;
  /// Parent UUID of the Model
  final String? parentUuid;
  /// Provider of the Model
  final String? provider;
  /// Timestamp when the Knowledge Base was updated
  final String updatedAt;
  /// Indicates if the Model upload is complete
  final bool? uploadComplete;
  /// URL of the Model
  final String? url;
  /// List of Usecases for the Model
  final List<String>? usecases;
  /// URL of the Model
  final List<GetGradientaiAgentTemplateModelVersion>? versions;

  /// Creates a new [GetGradientaiAgentTemplateModel].
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
  GetGradientaiAgentTemplateModel({
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
      'agreements': ?agreements == null ? null : pulumi.Input.encodeList<GetGradientaiAgentTemplateModelAgreement, Map<String, dynamic>>(agreements!, (value) => value.toMap()),
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
      'versions': ?versions == null ? null : pulumi.Input.encodeList<GetGradientaiAgentTemplateModelVersion, Map<String, dynamic>>(versions!, (value) => value.toMap()),
    };
  }

  factory GetGradientaiAgentTemplateModel.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentTemplateModel(
      agreements: map['agreements'] == null ? null : pulumi.Input.decodeList<GetGradientaiAgentTemplateModelAgreement>(map['agreements'], (value) => GetGradientaiAgentTemplateModelAgreement.fromMap((value as Map).cast<String, dynamic>())),
      createdAt: map['createdAt'] as String,
      inferenceName: map['inferenceName'] == null ? null : map['inferenceName'] as String,
      inferenceVersion: map['inferenceVersion'] == null ? null : map['inferenceVersion'] as String,
      isFoundational: map['isFoundational'] == null ? null : map['isFoundational'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      parentUuid: map['parentUuid'] == null ? null : map['parentUuid'] as String,
      provider: map['provider'] == null ? null : map['provider'] as String,
      updatedAt: map['updatedAt'] as String,
      uploadComplete: map['uploadComplete'] == null ? null : map['uploadComplete'] as bool,
      url: map['url'] == null ? null : map['url'] as String,
      usecases: map['usecases'] == null ? null : (map['usecases'] as List).cast<String>(),
      versions: map['versions'] == null ? null : pulumi.Input.decodeList<GetGradientaiAgentTemplateModelVersion>(map['versions'], (value) => GetGradientaiAgentTemplateModelVersion.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

