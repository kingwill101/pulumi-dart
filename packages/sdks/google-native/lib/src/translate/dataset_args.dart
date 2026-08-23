// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_translate_v3_dataset_args_doc}
/// The set of arguments for Dataset.
/// {@endtemplate}
/// {@macro pulumi_translate_v3_dataset_args_doc}
class DatasetArgs {
  /// The name of the dataset to show in the interface. The name can be up to 32 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscores (_), and ASCII digits 0-9.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<String>? location;
  /// The resource name of the dataset, in form of `projects/{project-number-or-id}/locations/{location_id}/datasets/{dataset_id}`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// The BCP-47 language code of the source language.
  final pulumi.Input<String>? sourceLanguageCode;
  /// The BCP-47 language code of the target language.
  final pulumi.Input<String>? targetLanguageCode;

  /// Creates a new [DatasetArgs].
  /// [displayName] The name of the dataset to show in the interface. The name can be up to 32 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscores (_), and ASCII digits 0-9.
  /// [location] Optional.
  /// [name] The resource name of the dataset, in form of `projects/{project-number-or-id}/locations/{location_id}/datasets/{dataset_id}`
  /// [project] Optional.
  /// [sourceLanguageCode] The BCP-47 language code of the source language.
  /// [targetLanguageCode] The BCP-47 language code of the target language.
  const DatasetArgs({
    this.displayName,
    this.location,
    this.name,
    this.project,
    this.sourceLanguageCode,
    this.targetLanguageCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'sourceLanguageCode': ?sourceLanguageCode,
      'targetLanguageCode': ?targetLanguageCode,
    };
  }

  factory DatasetArgs.fromMap(Map<String, dynamic> map) {
    return DatasetArgs(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceLanguageCode: (() { final guardedValue = map['sourceLanguageCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetLanguageCode: (() { final guardedValue = map['targetLanguageCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
