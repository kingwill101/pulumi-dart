// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contactcenterinsights_v1_issue_model_input_data_config.dart';
import 'issue_model_model_type.dart';

/// {@template pulumi_contactcenterinsights_v1_issue_model_args_doc}
/// The set of arguments for IssueModel.
/// {@endtemplate}
/// {@macro pulumi_contactcenterinsights_v1_issue_model_args_doc}
class IssueModelArgs {
  /// The representative name for the issue model.
  final pulumi.Input<String>? displayName;
  /// Configs for the input data that used to create the issue model.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig>? inputDataConfig;
  /// Language of the model.
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String>? location;
  /// Type of the model.
  final pulumi.Input<IssueModelModelType>? modelType;
  /// Immutable. The resource name of the issue model. Format: projects/{project}/locations/{location}/issueModels/{issue_model}
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [IssueModelArgs].
  /// [displayName] The representative name for the issue model.
  /// [inputDataConfig] Configs for the input data that used to create the issue model.
  /// [languageCode] Language of the model.
  /// [location] Optional.
  /// [modelType] Type of the model.
  /// [name] Immutable. The resource name of the issue model. Format: projects/{project}/locations/{location}/issueModels/{issue_model}
  /// [project] Optional.
  const IssueModelArgs({
    this.displayName,
    this.inputDataConfig,
    this.languageCode,
    this.location,
    this.modelType,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'inputDataConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig, Map<String, dynamic>>(inputDataConfig, (value) => value.toMap()),
      'languageCode': ?languageCode,
      'location': ?location,
      'modelType': ?pulumi.Input.mapOptionalInputValue<IssueModelModelType, String>(modelType, (value) => value.wireValue),
      'name': ?name,
      'project': ?project,
    };
  }

  factory IssueModelArgs.fromMap(Map<String, dynamic> map) {
    return IssueModelArgs(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputDataConfig: (() { final guardedValue = map['inputDataConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      languageCode: (() { final guardedValue = map['languageCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelType: (() { final guardedValue = map['modelType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IssueModelModelType.fromValue(guardedValue as String)); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
