// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DataSharingWithGoogleSetting resources.
class DataSharingWithGoogleSettingState {
  /// Create time stamp.
  final pulumi.Input<String>? createTime;
  /// Id of the Data Sharing With Google Setting.
  final pulumi.Input<String>? dataSharingWithGoogleSettingId;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Whether data sharing should be enabled in GA products.
  final pulumi.Input<bool>? enableDataSharing;
  /// Whether data sharing should be enabled in Preview products.
  final pulumi.Input<bool>? enablePreviewDataSharing;
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Identifier. Name of the resource.
  /// Format:projects/{project}/locations/{location}/dataSharingWithGoogleSettings/{dataSharingWithGoogleSetting}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Update time stamp.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [DataSharingWithGoogleSettingState].
  /// [createTime] Create time stamp.
  /// [dataSharingWithGoogleSettingId] Id of the Data Sharing With Google Setting.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [enableDataSharing] Whether data sharing should be enabled in GA products.
  /// [enablePreviewDataSharing] Whether data sharing should be enabled in Preview products.
  /// [labels] Labels as key value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. Name of the resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [updateTime] Update time stamp.
  DataSharingWithGoogleSettingState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? dataSharingWithGoogleSettingId,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<bool>? enableDataSharing,
    pulumi.Output<bool>? enablePreviewDataSharing,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dataSharingWithGoogleSettingId = pulumi.Input.asOptionalInput<String>(dataSharingWithGoogleSettingId),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      enableDataSharing = pulumi.Input.asOptionalInput<bool>(enableDataSharing),
      enablePreviewDataSharing = pulumi.Input.asOptionalInput<bool>(enablePreviewDataSharing),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'dataSharingWithGoogleSettingId': ?dataSharingWithGoogleSettingId,
      'effectiveLabels': ?effectiveLabels,
      'enableDataSharing': ?enableDataSharing,
      'enablePreviewDataSharing': ?enablePreviewDataSharing,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'updateTime': ?updateTime,
    };
  }

  factory DataSharingWithGoogleSettingState.fromMap(Map<String, dynamic> map) {
    return DataSharingWithGoogleSettingState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dataSharingWithGoogleSettingId: map['dataSharingWithGoogleSettingId'] == null ? null : pulumi.Output.create<String>(map['dataSharingWithGoogleSettingId'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      enableDataSharing: map['enableDataSharing'] == null ? null : pulumi.Output.create<bool>(map['enableDataSharing'] as bool),
      enablePreviewDataSharing: map['enablePreviewDataSharing'] == null ? null : pulumi.Output.create<bool>(map['enablePreviewDataSharing'] as bool),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

