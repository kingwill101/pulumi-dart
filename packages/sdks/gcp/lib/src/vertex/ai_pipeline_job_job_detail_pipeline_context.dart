// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiPipelineJobJobDetailPipelineContext {
  /// (Output)
  /// Task create time.
  final pulumi.Input<String?>? createTime;
  /// (Output)
  /// Description of the Context.
  final pulumi.Input<String?>? description;
  /// The display name of the Pipeline. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String?>? displayName;
  /// (Output)
  /// An eTag used to perform consistent read-modify-write updates.
  final pulumi.Input<String?>? etag;
  /// The labels with user-defined metadata to organize PipelineJob.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// (Output)
  /// Properties of the Context.
  final pulumi.Input<String?>? metadata;
  /// (Output)
  /// The resource name of the Context.
  final pulumi.Input<String?>? name;
  /// (Output)
  /// A list of resource names of Contexts that are parents of this Context.
  final pulumi.Input<List<String>?>? parentContexts;
  /// (Output)
  /// The title of the schema describing the metadata.
  final pulumi.Input<String?>? schemaTitle;
  /// (Output)
  /// The version of the schema in schemaName to use.
  final pulumi.Input<String?>? schemaVersion;
  /// (Output)
  /// Timestamp when this Context was last updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [AiPipelineJobJobDetailPipelineContext].
  /// [createTime] (Output)
  /// [description] (Output)
  /// [displayName] The display name of the Pipeline. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [etag] (Output)
  /// [labels] The labels with user-defined metadata to organize PipelineJob.
  /// [metadata] (Output)
  /// [name] (Output)
  /// [parentContexts] (Output)
  /// [schemaTitle] (Output)
  /// [schemaVersion] (Output)
  /// [updateTime] (Output)
  const AiPipelineJobJobDetailPipelineContext({
    this.createTime,
    this.description,
    this.displayName,
    this.etag,
    this.labels,
    this.metadata,
    this.name,
    this.parentContexts,
    this.schemaTitle,
    this.schemaVersion,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'etag': ?etag,
      'labels': ?labels,
      'metadata': ?metadata,
      'name': ?name,
      'parentContexts': ?parentContexts,
      'schemaTitle': ?schemaTitle,
      'schemaVersion': ?schemaVersion,
      'updateTime': ?updateTime,
    };
  }

  factory AiPipelineJobJobDetailPipelineContext.fromMap(Map<String, dynamic> map) {
    return AiPipelineJobJobDetailPipelineContext(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentContexts: (() { final guardedValue = map['parentContexts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      schemaTitle: (() { final guardedValue = map['schemaTitle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaVersion: (() { final guardedValue = map['schemaVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
