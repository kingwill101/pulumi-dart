// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LogView resources.
class LogViewState {
  /// The bucket of the resource
  final pulumi.Input<String>? bucket;
  /// Output only. The creation timestamp of the view.
  final pulumi.Input<String>? createTime;
  /// Describes this view.
  final pulumi.Input<String>? description;
  /// Filter that restricts which log entries in a bucket are visible in this view. Filters are restricted to be a logical AND of ==/!= of any of the following: - originating project/folder/organization/billing account. - resource type - log id For example: SOURCE("projects/myproject") AND resource.type = "gce_instance" AND LOG_ID("stdout")
  final pulumi.Input<String>? filter;
  /// The location of the resource. The supported locations are: global, us-central1, us-east1, us-west1, asia-east1, europe-west1.
  final pulumi.Input<String>? location;
  /// The resource name of the view. For example: \`projects/my-project/locations/global/buckets/my-bucket/views/my-view\`
  final pulumi.Input<String>? name;
  /// The parent of the resource.
  final pulumi.Input<String>? parent;
  /// Output only. The last update timestamp of the view.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [LogViewState].
  /// [bucket] The bucket of the resource
  /// [createTime] Output only. The creation timestamp of the view.
  /// [description] Describes this view.
  /// [filter] Filter that restricts which log entries in a bucket are visible in this view. Filters are restricted to be a logical AND of ==/!= of any of the following: - originating project/folder/organization/billing account. - resource type - log id For example: SOURCE("projects/myproject") AND resource.type = "gce_instance" AND LOG_ID("stdout")
  /// [location] The location of the resource. The supported locations are: global, us-central1, us-east1, us-west1, asia-east1, europe-west1.
  /// [name] The resource name of the view. For example: \`projects/my-project/locations/global/buckets/my-bucket/views/my-view\`
  /// [parent] The parent of the resource.
  /// [updateTime] Output only. The last update timestamp of the view.
  LogViewState({
    pulumi.Output<String>? bucket,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? filter,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parent,
    pulumi.Output<String>? updateTime,
  }) :
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      filter = pulumi.Input.asOptionalInput<String>(filter),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'createTime': ?createTime,
      'description': ?description,
      'filter': ?filter,
      'location': ?location,
      'name': ?name,
      'parent': ?parent,
      'updateTime': ?updateTime,
    };
  }

  factory LogViewState.fromMap(Map<String, dynamic> map) {
    return LogViewState(
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      filter: map['filter'] == null ? null : pulumi.Output.create<String>(map['filter'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

